import 'dart:math';

import 'encoder.dart';

///Generates variable length ids.
class Vlsid {
  static final _encoder = TimeEncoder();
  static final _random = Random.secure();
  static const _encodingCharacters = encodingAlphabets;

  final int _length;

  ///Create your generator class with your prefered length.
  const Vlsid([this._length = 10])
      : assert(
          _length > 8,
          '''The timestamp uses 8 characters so the length of the id should be more than 8''',
        );

  String get _encodedTimestamp =>
      _encoder.convert(DateTime.now().millisecondsSinceEpoch);

  String get _randomString => List.generate(
        _length - 8,
        (_) => _encodingCharacters[_random.nextInt(_encodingCharacters.length)],
      ).join();

  ///Generates the next Id
  String nextId() => [_encodedTimestamp, _randomString].join();
}
