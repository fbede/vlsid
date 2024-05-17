import 'dart:convert';

import 'characters.dart';

///Converts the timestamp to string representation
class TimeEncoder extends Converter<int, String> {
  TimeEncoder(CharacterSet characters)
      : encodingCharacters = characters.characters;

  final String encodingCharacters;

  @override
  String convert(input) => _padNumbers(_generateNumbers(input))
      .reversed
      .map((e) => encodingCharacters[e])
      .join();

  List<int> _generateNumbers(int input) {
    final remainder = input % encodingCharacters.length;
    final result = (input / encodingCharacters.length).floor();

    if (result > 0) {
      return [remainder, ..._generateNumbers(result)];
    }

    return [remainder];
  }

  List<int> _padNumbers(List<int> input) =>
      [...input, ...List.generate(8 - input.length, (_) => 0)];
}
