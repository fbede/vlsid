import 'package:test/test.dart';
import 'package:vlsid/vlsid.dart';

void main() {
  group('A group of tests', () {
    setUp(() {
      // Additional setup goes here.
    });

    test('Ensure id is correct length', () {
      final vlsid = Vlsid();

      // Generate an id from the factory
      final id1 = vlsid.nextId();

      // Both can be done in one line
      final id2 = Vlsid().nextId();

      expect(id1.length, 15);
      expect(id2.length, 15);
    });
  });
}
