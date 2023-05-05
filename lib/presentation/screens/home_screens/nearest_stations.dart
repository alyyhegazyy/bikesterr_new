import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class NearestStation extends StatefulWidget {
  const NearestStation({super.key});

  @override
  State<NearestStation> createState() => _NearestStationState();
}

class _NearestStationState extends State<NearestStation> {
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: GoogleMap(
        //apiKey:'AIzaSyCFuI0obspjmVCbr4_9c0dYrMfDJ27LtV4',
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
        initialCameraPosition:
            CameraPosition(target: LatLng(29.964914, 31.269994)),
      )),
    );
  }
}
