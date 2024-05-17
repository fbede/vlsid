import 'package:vlsid/vlsid.dart';

void main() {
  // Create a factory for ids
  final vlsid = Vlsid();

  // Generate an id from the factory
  final id1 = vlsid.nextId();

  // Both can be done in one line
  final id2 = Vlsid().nextId();

  print(id1); //_MorKCLMA7VOQWy
  print(id2); //_MorKCLVDBFTbQM
}
