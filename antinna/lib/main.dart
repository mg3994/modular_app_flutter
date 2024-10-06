//helllo there

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

void main() {
  RootIsolateToken? rootIsolateToken = RootIsolateToken.instance;
  compute(_isolateMain, rootIsolateToken);
}

void _isolateMain(RootIsolateToken? rootIsolateToken) async {
  BackgroundIsolateBinaryMessenger.ensureInitialized(rootIsolateToken!);
}
