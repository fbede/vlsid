import 'dart:math';

import 'package:vlsid/src/encoder.dart';
import 'package:vlsid/vlsid.dart';

void main() async {
  final gen = Vlsid(15);

  for (var i = 0; i < 100; i++) {
    await Future.delayed(Duration(milliseconds: 100));
    print(i);
    print(gen.nextId());
  }
}
