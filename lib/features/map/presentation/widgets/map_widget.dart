import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:levy/features/commons/widgets/theme_app_bar_widget.dart';

final class MapWidget extends StatelessWidget {
  const MapWidget({
    super.key,
    required this.onPop,
    required this.targetLocation,
    required this.markers,
    required this.polylines,
  });

  final VoidCallback onPop;
  final LatLng targetLocation;
  final Set<Marker> markers;
  final Set<Polyline> polylines;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ThemeAppBarWidget(
        title: 'Map',
      ),
      body: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: targetLocation,
          zoom: 17,
        ),
        onMapCreated: (GoogleMapController mapController) {
          // Set controller if necessary
        },
        markers: markers,
        polylines: polylines,
      ),
    );
  }
}
