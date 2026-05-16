import 'dart:async';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_map_project/location_service.dart';

class MyLocationScreen extends StatefulWidget {
  const MyLocationScreen({super.key});

  @override
  State<MyLocationScreen> createState() => _MyLocationScreenState();
}

class _MyLocationScreenState extends State<MyLocationScreen> {

  Position ?  _currentPosition;
  StreamSubscription ? _locationSubscriber;
  final LocationService _locationService = LocationService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Current Location '),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            Text(
                'My Current Location = ${_currentPosition}',
              textAlign: TextAlign.center,

            ),
            FilledButton(
                onPressed: (){
                  _getCurrentLocation();
                },
                child: Text('Get My Current Location')
            ),
            FilledButton(
                onPressed: (){
                  _listenCurrentLocation();
                },
                child: Text('Listen My Continuous Current Location ')
            )
          ],
        ),
      ),

    );
  }

// ---------------------x--------------------------
  // Current location pawar method
  // one time get location
Future<void> _getCurrentLocation() async{
    _locationService.handleLocationPermission(onSuccess: () async {
      // 3) Then get the location
          Position position = await Geolocator.getCurrentPosition(
            // button a bar bar click kore update location ta pabo
            locationSettings: LocationSettings()
          );
          print(position);
          _currentPosition = position;
          // Reload or Refresh page only once
          setState(() {

          });
    } );

  //   // 1) Permission
  // final LocationPermission locationPermission = await Geolocator.checkPermission(); // return LocationPermission.whileInUse athoba locationPermission == LocationPermission.always
  // // Check if user permission is given
  // if( _isPermissionEnable(locationPermission) ){
  //   // 2) GPS SERVICE
  //   final bool isGpsEnable = await Geolocator.isLocationServiceEnabled(); // return true athoba false
  //   // Check if user GPS Service enable
  //   if(isGpsEnable){
  //     // 3) Then get the location
  //     Position position = await Geolocator.getCurrentPosition(
  //       // button a bar bar click kore update location ta pabo
  //       locationSettings: LocationSettings()
  //     );
  //     print(position);
  //     _currentPosition = position;
  //     // Reload or Refresh page only once
  //     setState(() {
  //
  //     });

    }

// continuous get location
  Future<void> _listenCurrentLocation() async{

    _locationService.handleLocationPermission(onSuccess: (){
      // 3) Then get the location
      // Position position = await Geolocator.getCurrentPosition();
      _locationSubscriber = Geolocator.getPositionStream(
        // button a bar bar click kore update location ta pabo
          locationSettings: LocationSettings(
              accuracy: LocationAccuracy.best,
              distanceFilter: 2,
              timeLimit: Duration(seconds: 5)
          )
      ).listen( (position){
        print(position);
        _currentPosition = position;
        // Reload or Refresh page only once
        setState(() {});
        // time minutes : 42

      }
      );
    } );
    // // 1) Permission
    // final LocationPermission locationPermission = await Geolocator.checkPermission(); // return LocationPermission.whileInUse athoba locationPermission == LocationPermission.always
    // // Check if user permission is given
    // if( _isPermissionEnable(locationPermission) ){
    //   // 2) GPS SERVICE
    //   final bool isGpsEnable = await Geolocator.isLocationServiceEnabled(); // return true athoba false
    //   // Check if user GPS Service enable
    //   if(isGpsEnable){
    //     // 3) Then get the location
    //     // Position position = await Geolocator.getCurrentPosition();
    //     _locationSubscriber = Geolocator.getPositionStream(
    //       // button a bar bar click kore update location ta pabo
    //       locationSettings: LocationSettings(
    //         accuracy: LocationAccuracy.best,
    //         distanceFilter: 2,
    //         timeLimit: Duration(seconds: 5)
    //       )
    //     ).listen( (position){
    //       print(position);
    //       _currentPosition = position;
    //       // Reload or Refresh page only once
    //       setState(() {});
    //       // time minutes : 42
    //
    //     }
    //     );
    //
    //
    //   }
    //   // IF not, then ask for it
    //   else{
    //     await Geolocator.openLocationSettings();
    //   }
    //
    // }
    // // IF not, then ask for permission
    // else{
    //   final LocationPermission locationPermission = await Geolocator.requestPermission(); // return LocationPermission.whileInUse athoba locationPermission == LocationPermission.always
    //   if(_isPermissionEnable(locationPermission)){
    //     _getCurrentLocation();
    //   }
    // }
    //
    // // 2) GPS SERVICE
    // // Check if user GPS Service enable
    // // IF not, then ask for it
    //
    // // 3) Then get the location

  }



  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _locationSubscriber?.cancel();
  }

}










