import 'package:vlsid/vlsid.dart';

void main() {
  // Create a factory for 15 character ids
  const vlsid = Vlsid(15);

  // Generate an id from the factory
  final id1 = vlsid.nextId();

  // Both can be done in one line
  final id2 = const Vlsid(15).nextId();

  print(id1); //_MorKCLMA7VOQWy
  print(id2); //_MorKCLVDBFTbQM
}
