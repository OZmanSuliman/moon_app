import 'package:shared/env.dart';

class App {
  static String _pkg = "gooey_edge";
  static String get pkg => Env.getPackage(_pkg);
}

enum Side { left, top, right, bottom }
