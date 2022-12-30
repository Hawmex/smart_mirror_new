import 'dart:async';

import 'package:dawn/dawn.dart';

import '../models/location.dart';

final locationStore = LocationStore();

class LocationStore extends Store {
  Object? _activeCallbackIdentity;
  Location? location;

  void _updateLocation() {
    final callbackIdentity = Object();

    _activeCallbackIdentity = callbackIdentity;

    Location.getCurrent().then((final value) {
      if (_activeCallbackIdentity == callbackIdentity) {
        setState(() => location = value);
      }
    });
  }

  @override
  void initialize() {
    super.initialize();

    _updateLocation();

    Timer.periodic(
      const Duration(minutes: 5),
      (final timer) => _updateLocation(),
    );
  }
}
