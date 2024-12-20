import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:levy/core/theme/theme_icons.dart';
import 'package:levy/features/commons/widgets/theme_app_bar_widget.dart';

final class MapWidget extends StatelessWidget {
  const MapWidget({
    super.key,
    required this.onPop,
    required this.userLocation,
    required this.busLocation,
    required this.originLocation,
    required this.destinationLocation,
    required this.markers,
  });

  final LatLng userLocation;
  final LatLng busLocation;
  final LatLng originLocation;
  final LatLng destinationLocation;
  final VoidCallback onPop;
  final Set<Marker> markers;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ThemeAppBarWidget(
        title: 'Map',
        onLeadingPressed: onPop,
        leadingIcon: ThemeIcons.arrowLeft,
      ),
      body: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: userLocation,
          zoom: 14,
        ),
        onMapCreated: (GoogleMapController mapController) {
          // Set controller if necessary
        },
        markers: markers,
        myLocationEnabled: true,
        myLocationButtonEnabled: true,
      ),
    );
  }
}
