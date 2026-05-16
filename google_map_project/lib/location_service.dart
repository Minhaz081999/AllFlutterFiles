import 'dart:ui';

import 'package:geolocator/geolocator.dart';

class LocationService {
// short a call kora hoyse
  Future<void> handleLocationPermission({required VoidCallback onSuccess}) async{

    // 1) Permission
    final LocationPermission locationPermission = await Geolocator.checkPermission(); // return LocationPermission.whileInUse athoba locationPermission == LocationPermission.always
    // Check if user permission is given
    if( isPermissionEnable(locationPermission) ){
      // 2) GPS SERVICE
      final bool isGpsEnable = await Geolocator.isLocationServiceEnabled(); // return true athoba false
      // Check if user GPS Service enable
      if(isGpsEnable){
        // 3) Then get the location
        // Position position = await Geolocator.getCurrentPosition();
        onSuccess();
      }
      // IF not, then ask for it
      else{
        await Geolocator.openLocationSettings();
      }

    }
    // IF not, then ask for permission
    else{
      final LocationPermission locationPermission = await Geolocator.requestPermission(); // return LocationPermission.whileInUse athoba locationPermission == LocationPermission.always
      if(isPermissionEnable(locationPermission)){
        handleLocationPermission(onSuccess: onSuccess);
      }
    }

    // 2) GPS SERVICE
    // Check if user GPS Service enable
    // IF not, then ask for it

    // 3) Then get the location

  }

  // User defined function
  bool isPermissionEnable(LocationPermission locationPermission){
    return locationPermission == LocationPermission.whileInUse || locationPermission == LocationPermission.always ;
  }
}