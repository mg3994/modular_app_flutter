import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
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
    return Widgetbook(
      addons: [
        DeviceFrameAddon(devices: [...Devices.all]),
        InspectorAddon(),

        AlignmentAddon(),
        ZoomAddon(),

        //  MaterialThemeAddon(
        //   themes: [
        //     WidgetbookTheme(
        //       name: 'Light',
        //       data: yourCustomLightTheme
        //     ),
        //     WidgetbookTheme(
        //       name: 'Dark',
        //       data: yourCustomTheme
        //     ),
        //   ],
        // ),
        TextScaleAddon(
          scales: [1.0, 2.0],
        ),
        LocalizationAddon(
          locales: [
            const Locale('en', 'US'),
          ],
          localizationsDelegates: [
            DefaultWidgetsLocalizations.delegate,
            DefaultMaterialLocalizations.delegate,
          ],
        ),

        // GridAddon(),
        // LocalizationAddon(
        //   locales: AppLocalizations.supportedLocales,
        //   localizationsDelegates: AppLocalizations.localizationsDelegates,
        //   initialLocale: AppLocalizations.supportedLocales.last,
        // ),
      ],
      directories: directories,
      appBuilder: (context, child) {
        return kIsWeb || !Platform.isIOS || !Platform.isMacOS
            ? MaterialApp(home: child)
            : CupertinoApp(
                home: child,
              );
      },
    );
  }
}
