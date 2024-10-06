import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

// This file does not exist yet,
// it will be generated in the next step
import 'main.directories.g.dart';
void main() {
  runApp(const WidgetBookApp());
}
@App()
class WidgetBookApp extends StatefulWidget {
  const WidgetBookApp({super.key});

  @override
  State<WidgetBookApp> createState() => _WidgetBookAppState();
}

class _WidgetBookAppState extends State<WidgetBookApp> {
  @override
  Widget build(BuildContext context) {
    return Widgetbook(directories: directories,);
  }
}