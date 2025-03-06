import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:levy/core/theme/theme.dart';
import 'package:levy/features/map/presentation/utils/map_translation.dart';

final class MapWidget extends StatelessWidget {
  const MapWidget({
    super.key,
    required this.onPop,
    required this.targetLocation,
    required this.markers,
    required this.zoom,
    this.showLeading = false,
  });

  final VoidCallback onPop;
  final LatLng targetLocation;
  final Set<Marker> markers;
  final double zoom;
  final bool showLeading;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ThemeAppBarWidget(
        title: MapTranslation.header.title,
        onLeadingPressed: showLeading ? onPop : null,
        leadingIcon: showLeading ? ThemeIcons.arrowLeft : null,
      ),
      body: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: targetLocation,
          zoom: zoom,
        ),
        onMapCreated: (GoogleMapController mapController) {
          // Set controller if necessary
        },
        markers: markers,
      ),
    );
  }
}
