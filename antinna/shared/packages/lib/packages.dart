library packages;

// # Macros
export 'macros/macros.dart';

/// ?# dependencies:
// Icons
export 'package:cupertino_icons/cupertino_icons.dart';

// Network
export 'package:dio/dio.dart';
export 'package:connectivity_plus/connectivity_plus.dart';

// internationalisation
export 'package:intl/intl.dart';
// # State Management
export 'package:dartz/dartz.dart' hide State; // fp
export 'package:flutter_bloc/flutter_bloc.dart';
// Data class helpers
export 'package:json_annotation/json_annotation.dart';
export 'package:freezed_annotation/freezed_annotation.dart';
// Storage
export 'package:hive_flutter/hive_flutter.dart';
// Locales Translation
export 'package:l10n/l10n.dart';

//Animations
export 'package:flutter_animate/flutter_animate.dart';

// ?# dev_dependencies:

/// ? # self Made Custom Package
export 'equatable/equatable.dart'; // make sure macro can lead to error  either hide it or try to use as for alias ,
