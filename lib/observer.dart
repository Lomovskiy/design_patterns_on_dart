typedef LocationListener = void Function(double latitude, double longitude);

abstract class LocationProvider {

  void registerListener(LocationListener listener);

  bool unregisterListener(LocationListener listener);

  void notifyListeners(double latitude, double longitude);

}

class GpsLocationProvider extends LocationProvider {

  final List<LocationListener> _listeners = [];

  @override
  void notifyListeners(double latitude, double longitude) {
    _listeners.forEach((LocationListener listener) {
      listener(latitude, longitude);
    });
  }

  @override
  void registerListener(LocationListener listener) {
    _listeners.add(listener);
  }

  @override
  bool unregisterListener(LocationListener listener) {
    return _listeners.remove(listener);
  }

}
