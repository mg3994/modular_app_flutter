// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_import, prefer_relative_imports, directives_ordering

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AppGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:widget_book/usecases/components/atom.dart' as _i2;
import 'package:widgetbook/widgetbook.dart' as _i1;

final directories = <_i1.WidgetbookNode>[
  _i1.WidgetbookCategory(
    name: 'Animating Icon',
    children: [
      _i1.WidgetbookFolder(
        name: 'Indicator',
        children: [
          _i1.WidgetbookLeafComponent(
            name: 'PulsingButton',
            useCase: _i1.WidgetbookUseCase(
              name: 'PulsingButton',
              builder: _i2.pulshingButton,
            ),
          )
        ],
      )
    ],
  ),
  _i1.WidgetbookCategory(
    name: 'LOADING',
    children: [
      _i1.WidgetbookFolder(
        name: 'Indicator',
        children: [
          _i1.WidgetbookLeafComponent(
            name: 'AntinnaActivityIndicator',
            useCase: _i1.WidgetbookUseCase(
              name: 'ActivityIndicator',
              builder: _i2.activityIndicator,
            ),
          )
        ],
      )
    ],
  ),
  _i1.WidgetbookFolder(
    name: 'widgets',
    children: [
      _i1.WidgetbookLeafComponent(
        name: 'Icon',
        useCase: _i1.WidgetbookUseCase(
          name: 'BouncingWrap',
          builder: _i2.bouncingWrap,
        ),
      )
    ],
  ),
];
