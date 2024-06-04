import 'dart:math';

import 'characters.dart';
import 'encoder.dart';

/// Generates variable length ids.
class Vlsid {
  /// Create your generator class with your prefered length.
  Vlsid({
    int length = 15,
    this.characterSet = CharacterSet.allCharacters,
  }) {
    _validateIdLength(length);
  }

  /// ID's length.
  late final int length;

  /// Character set to use for IDs
  final CharacterSet characterSet;

  TimeEncoder get _encoder => TimeEncoder(characterSet);
  Random get _random => Random.secure();

  String get _encodedTimestamp =>
      _encoder.convert(DateTime.now().millisecondsSinceEpoch);

  String _randomString(int timestampLength) => List.generate(
        length - timestampLength,
        (_) => characterSet
            .characters[_random.nextInt(characterSet.characters.length)],
      ).join();

  ///Generates the next Id
  String nextId() => [
        _encodedTimestamp,
        _randomString(_encodedTimestamp.length),
      ].join();

  void _validateIdLength(int length) {
    if (length < 8) {
      this.length = 8;
    } else {
      this.length = length;
    }
  }
}
