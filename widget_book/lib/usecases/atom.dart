import 'package:components/components.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';

import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(
    name: "BouncingWrap Right",
    type: BouncingWrap,
    path: '[SLIDING Antimation]/Bouncing Right')
Widget bouncingWrap(BuildContext context) {
  final color =
      context.knobs.color(label: 'Color Of Icon', initialValue: Colors.white);
  final size = context.knobs.double
      .slider(label: 'Size Of Icon', initialValue: 20, max: 50);
  return BouncingWrap(
    isVisible: true,
    child: Icon(
      Icons.abc,
      size: size,
      color: color,
    ),
  );
}

@UseCase(
    name: "ActivityIndicator",
    type: AntinnaActivityIndicator,
    path: '[LOADING]/Indicator')
Widget activityIndicator(BuildContext context) {
  final color =
      context.knobs.color(label: 'Color Of Icon', initialValue: Colors.white);
  final size = context.knobs.double
      .slider(label: 'Size Of Icon', initialValue: 20, max: 50);
  final bgcolor = context.knobs
      .color(label: 'Background Color Of Icon', initialValue: Colors.black38);
  return AntinnaActivityIndicator(
    color: color,
    radius: size,
    backgroundColor: bgcolor,
  );
}

@UseCase(
    name: "PulsingButton",
    type: PulsingButton,
    path: '[Animating Icon Button]/Indicator')
Widget pulshingButton(BuildContext context) {
  final color = context.knobs
      .color(label: 'Color Of Pulse and Icon', initialValue: Colors.white);
  // final size = context.knobs.double
  //     .slider(label: 'Size Of Icon', initialValue: 20, max: 50);
  final iconColor =
      context.knobs.color(label: 'Color Of Icon', initialValue: Colors.black38);
  return PulsingButton(
    onPressed: () {},
    icon: Icon(
      Icons.abc_outlined,
      color: iconColor,
    ),
    baseColor: color,
  );
}
