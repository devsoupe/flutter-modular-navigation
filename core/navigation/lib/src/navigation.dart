import 'package:flutter/material.dart';
import 'package:navigation/navigation.dart';

abstract class Navigation<T extends Widget, R extends Direction> {
  T buildRoot();

  void navigate(R direction);
}
