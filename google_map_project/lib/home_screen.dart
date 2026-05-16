import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
// Google Map ta k controll korarr jonno ei Controller amra use kori
  late final GoogleMapController _googleMapController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GoogleMapsDemo'),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
      body: GoogleMap(
        mapType: MapType.normal,
        trafficEnabled: true,
        // zoom in/out using Finger
        zoomGesturesEnabled: true,
        // zoom in/out using Buttons-> plus(+) and minus(-)
        zoomControlsEnabled: true,
        myLocationEnabled: true,
        myLocationButtonEnabled: true,
        initialCameraPosition: const CameraPosition(
          target: LatLng(23.71707148757412, 90.41187396511896),
          zoom: 20,
        ),
        // when map created
        onMapCreated: (GoogleMapController controller ){
          _googleMapController = controller;

        },
        onTap:(LatLng latlng){
          print('Position : $latlng');
        },
        onLongPress: (LatLng latlng){
          print('Long Press : $latlng');
        },
        markers: <Marker>{
          Marker(
              markerId: MarkerId('Home'),
            position: LatLng(23.71707148757412, 90.41187396511896),
            onTap: (){
                print('Tap on Home marker icon');
            },
              visible: true,
            icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueAzure),
            infoWindow: InfoWindow(
              title: 'Home',
              onTap: (){
                print('Tap on InfoWindow');
              }
            )

          ),
          Marker(
              markerId: MarkerId('Office'),
            position: LatLng(23.71713754201586, 90.41179418563843),
            onTap: (){
                print('Tap on Office marker icon');
            },
              visible: true,
            icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
            infoWindow: InfoWindow(
              title: 'Office',
              onTap: (){
                print('Tap on InfoWindow');
              }
            )

          ),
          Marker(
              markerId: MarkerId('Second Office'),
            position: LatLng(23.717197706061143, 90.41199199855328),
            onTap: (){
                print('Tap on Second Office marker icon');
            },
              visible: true,
            icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueViolet),
            infoWindow: InfoWindow(
              title: 'Second Office',
              onTap: (){
                print('Tap on InfoWindow');
              }
            )

          )
        },
        polylines: <Polyline>{
          Polyline(
            polylineId: PolylineId('Home to office to Second Office'),
            points: [
              LatLng(23.71707148757412, 90.41187396511896),
              LatLng(23.71713754201586, 90.41179418563843),
              LatLng(23.717197706061143, 90.41199199855328),
            ],
            visible: true,
            color: Colors.red,
            width: 20,
            endCap: Cap.roundCap,
            startCap: Cap.squareCap,
            jointType: JointType.round,
            onTap: (){
              print('Tap on PolyLines');
            }
          ),
          Polyline(
            polylineId: PolylineId('Second Office to Home'),
            points: [
              LatLng(23.717197706061143, 90.41199199855328),
              LatLng(23.71707148757412, 90.41187396511896),
            ],
            visible: true,
            color: Colors.blue,
            width: 10,
            endCap: Cap.roundCap,
            startCap: Cap.squareCap,
            jointType: JointType.round,
            onTap: (){
              print('Tap on PolyLines');
            },

          ),
        },
        circles: <Circle>{
          Circle(
            circleId: CircleId('Second Office Red Zone'),
            center: LatLng(23.717197706061143, 90.41199199855328),
            radius: 5,
            strokeWidth: 5,
            strokeColor: Colors.green,
            fillColor: Colors.orange.withAlpha(100),
            consumeTapEvents: true,
            onTap: (){
              print("Tap on Circle");
            }
          )
        },
        polygons: <Polygon>{
          Polygon(
            polygonId: PolygonId('Random Polygons'),
            points: [
              LatLng(23.71764064764207, 90.41175797581673),
              LatLng(23.71764218243358, 90.41204161942005),
              LatLng(23.717515408595016, 90.41171707212925),
              LatLng(23.717480415310376, 90.41187632828951),
              LatLng(23.717495763243388, 90.41206307709217)
            ],
            fillColor : Colors.green.withAlpha(90),
            strokeWidth: 5,
            strokeColor : Colors.blueAccent,
              visible : true,
            consumeTapEvents: true,
            onTap: (){
              print('TAP ON Polygon');
            }
          )
        },
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
              onPressed: (){
                // LatLng(23.71707148757412, 90.41187396511896)
                // without Animated Camera
                // _googleMapController.moveCamera(
                //   CameraUpdate.newCameraPosition(
                //     CameraPosition(
                //         target: LatLng(23.71707148757412, 90.41187396511896),
                //         zoom: 20
                //     )
                //   )
                // );
                // Animated Camera
                _googleMapController.animateCamera(
                    CameraUpdate.newCameraPosition(
                      CameraPosition(
                          target: LatLng(23.71707148757412, 90.41187396511896),
                          zoom: 20
                      )
                    )
                  );
              },
            child: Icon(Icons.my_location),
          ),
        ],
      ),
    );

  }
  
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _googleMapController.dispose();
  }

}
