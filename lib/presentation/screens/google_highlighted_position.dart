import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class GoogleMapScreen extends StatefulWidget {
  const GoogleMapScreen({Key? key}) : super(key: key);
  @override
  State<GoogleMapScreen> createState() => _GoogleMapScreenState();
}
class _GoogleMapScreenState extends State<GoogleMapScreen> {
  final Completer<GoogleMapController> _controller = Completer();
  LatLng intialLocation = const LatLng(23.762912, 90.427816);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: GoogleMap(
              initialCameraPosition: CameraPosition(
                target: intialLocation,
                zoom: 15.6746,
              ),
              onMapCreated: (controller) {
                _controller.complete(controller);
              },
              markers: {
                Marker(
                  markerId: const MarkerId("1"),
                  position: intialLocation,
                ),
              },
                circles: {
                  Circle(
                    circleId: CircleId("1"),
                    center: intialLocation,
                    radius: 420,
                    strokeWidth: 2,
                    fillColor: Color(0xFF006491).withOpacity(0.2),
                  ),
                }

              // polygons: {
              //   Polygon(
              //     polygonId: const PolygonId("1"),
              //     fillColor: const Color(0xFF006491).withOpacity(0.1),
              //     strokeWidth: 2,
              //     points: const [
              //       LatLng(23.766315, 90.425778),
              //       LatLng(23.764691, 90.424767),
              //       LatLng(23.761916, 90.426862),
              //       LatLng(23.758532, 90.428588),
              //       LatLng(23.758825, 90.429228),
              //       LatLng(23.763698, 90.431324),
              //     ],
              //   ),
              // },
              //
            ),
          ),
        ],
      ),
    );
  }
}