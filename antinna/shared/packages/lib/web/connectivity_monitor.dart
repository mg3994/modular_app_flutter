import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:web/web.dart';

final class AppConnectivityMonitor with ChangeNotifier {
  // TODO : Try with New Approch , having const in constr
  /// The current connectivity status.
  bool? get isConnected => _isConnected;
  bool? _isConnected;
  AppConnectivityMonitor() {
    _onlineSub = const EventStreamProvider<Event>('online')
        .forTarget(window)
        .listen((event) {
      _isConnected = true;
      notifyListeners();
    });

    _offlineSub = const EventStreamProvider<Event>('offline')
        .forTarget(window)
        .listen((event) {
      _isConnected = false;
      notifyListeners();
    });
  }
  late final StreamSubscription _onlineSub;
  late final StreamSubscription _offlineSub;

  @override
  void dispose() {
    _onlineSub.cancel();
    _offlineSub.cancel();
    super.dispose();
  }
}
