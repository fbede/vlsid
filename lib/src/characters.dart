/// Characters to be used when generating IDs
enum CharacterSet {
  /// All characters from a-z, A-Z, 0-9 and -_
  allCharacters(
    '_-0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz',
  ),

  /// Only alphanumeric characters. a-z, A-Z and 0-9
  alphaNumeric(
    '0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz',
  );

  const CharacterSet(this.characters);

  final String characters;
}
