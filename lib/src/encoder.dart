import 'dart:convert';

/// Base64 characters used for generating the ids.
const encodingAlphabets =
    'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_';

///Converts the timestamp to string representation
class TimeEncoder extends Converter<int, String> {
  @override
  String convert(input) => _padNumbers(_generateNumbers(input))
      .reversed
      .map((e) => encodingAlphabets[e])
      .join();

  List<int> _generateNumbers(int input) {
    final remainder = input % 64;
    final result = (input / 64).floor();

    if (result > 0) {
      return [remainder, ..._generateNumbers(result)];
    }

    return [remainder];
  }

  List<int> _padNumbers(List<int> input) =>
      [...input, ...List.generate(8 - input.length, (_) => 0)];
}
