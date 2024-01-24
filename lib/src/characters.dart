/// Base64 characters used for generating the ids.
final encodingCharacters = (_allCharacters.split('')..sort()).join();

const _capitalLetters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
final _smallLetters = _capitalLetters.toLowerCase();
const _numbers = '0123456789';
const _symbols = '_-';
final _allCharacters = '$_symbols$_capitalLetters$_smallLetters$_numbers';
