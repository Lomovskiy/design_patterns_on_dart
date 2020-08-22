import 'package:design_patterns_on_dart/observer.dart';

void main() {

  var locationProvider = GpsLocationProvider();

  final LocationListener listener1 = (double latitude, double longitude) {
    print('Log location from listener1: latitude: $latitude; longitude: $longitude');
  };

  final LocationListener listener2 = (double latitude, double longitude) {
    print('Log location from listener2: latitude: $latitude; longitude: $longitude');
  };

  locationProvider.registerListener(listener1);
  locationProvider.registerListener(listener2);

  locationProvider.notifyListeners(1, 1);
  locationProvider.notifyListeners(2, 2);
  locationProvider.notifyListeners(3, 3);

  locationProvider.unregisterListener(listener2);

  locationProvider.notifyListeners(4, 4);

}
