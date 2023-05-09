import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
//import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapSample extends StatefulWidget {
  const MapSample({super.key});

  @override
  State<MapSample> createState() => MapSampleState();
}

class MapSampleState extends State<MapSample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FlutterMap(
        children: [],
        options: MapOptions(
          center: LatLng(29.964914, 31.269994),
          zoom: 13.0,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text("test"),
      ),
    );
  }
}
