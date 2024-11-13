import 'dart:developer';
import 'package:fast_delivery/core/utils/exports.dart';

Future<void> enableYourLocation(LocationService locationService) async {
  try {
    LocationData locationData = await locationService.getLocation();
    log('Location: ${locationData.latitude}, ${locationData.longitude}');
  } on LocationServiceException {
    log('Location service is disabled. Please enable it.');

  } on LocationPermissionException {
    log('Location permission is denied. Please enable it.');
  }  catch (e) {
    log('An error occurred while getting location: $e');
  }
}