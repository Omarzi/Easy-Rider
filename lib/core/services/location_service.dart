import 'package:location/location.dart';

class LocationService {
  Location location = Location();

  Future<void> checkAndRequestLocationService() async {
    bool isServiceEnable = await location.serviceEnabled();

    if (!isServiceEnable) {
      isServiceEnable = await location.requestService();
      if (!isServiceEnable) {
        throw LocationServiceException();
      }
    }
  }

  Future<void> checkAndRequestLocationPermission() async {
    var permissionStatus = await location.hasPermission();

    if (permissionStatus == PermissionStatus.deniedForever) {
      throw LocationPermissionException();
    }

    if (permissionStatus == PermissionStatus.denied) {
      permissionStatus = await location.requestPermission();

      if (permissionStatus != PermissionStatus.granted) {
        throw LocationPermissionException();
      }
    }
  }

  Future<void> getRealTimeLocationData(void Function(LocationData)? onDone) async {
    await checkAndRequestLocationService();
    await checkAndRequestLocationPermission();
    location.onLocationChanged.listen(onDone);
  }

  Future<LocationData> getLocation() async {
    await checkAndRequestLocationService();
    await checkAndRequestLocationPermission();
    return await location.getLocation();
  }
}

class LocationServiceException implements Exception {}
class LocationPermissionException implements Exception {}