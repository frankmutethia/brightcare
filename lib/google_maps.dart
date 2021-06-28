import 'dart:async';
import 'package:flutter/material.dart';
import 'package:geocoder/geocoder.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MyHomePage extends StatefulWidget {
  static final String id = "maps";
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Completer<GoogleMapController> _controller = Completer();
  GoogleMapController mapController;
  List<Marker> allMarkers = [];
  String searchAddr;

  static double latitudeCurrent = 40.7128;
  static double longitudeCurrent = -74.0060;

  // Intial Map postion
  CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(latitudeCurrent, longitudeCurrent),
    zoom: 10,
  );

//Animating to the new user lat and long
  Future<void> _goToYourLocation() async {
    mapController.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(
      target: LatLng(latitudeCurrent, longitudeCurrent),
      zoom: 9.5,
    )));
  }

  @override
  void initState() {
    super.initState();
    allMarkers.add(Marker(
      markerId: MarkerId('myMarker'),
      draggable: false,
      onTap: () {
        print('Marker Tap');
      },
      infoWindow: InfoWindow(
        title: 'Nairobi',
        snippet: "Nairobi ",
      ),
      position: LatLng(-1.275357, 36.828443),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        GoogleMap(
          initialCameraPosition: _kGooglePlex,
          onMapCreated: (GoogleMapController controller) {
            mapController = controller;
            _controller.complete(controller);
          },
          markers: Set.from(allMarkers),
        ),
        Positioned(
          top: 30.0,
          right: 15.0,
          left: 15.0,
          child: Container(
            height: 50.0,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0), color: Colors.white),
            child: TextField(
              decoration: InputDecoration(
                  hintText: 'Enter Address',
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(left: 15.0, top: 15.0),
                  suffixIcon: IconButton(
                      icon: Icon(Icons.search),
                      onPressed: searchandNavigate,
                      iconSize: 30.0)),
              onChanged: (val) {
                setState(() {
                  searchAddr = val;
                });
              },
            ),
          ),
        )
      ],
    ));
  }

  searchandNavigate() {
    Geocoder.local.findAddressesFromQuery(searchAddr).then((addresses) {
      var first = addresses.first;
      setState(() {
        latitudeCurrent = first.coordinates.latitude;
        longitudeCurrent = first.coordinates.longitude;
      });
      _goToYourLocation();
    });
  }
}
