import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:levy/features/commons/widgets/state_builder.dart';
import 'package:levy/features/commons/widgets/theme_error_page.dart';
import 'package:levy/features/commons/widgets/theme_loading_page.dart';
import 'package:levy/features/map/presentation/providers/map_notifier_provider.dart';
import 'package:levy/features/map/presentation/states/map_state.dart';
import 'package:levy/features/map/presentation/widgets/map_widget.dart';
import 'package:widget_to_marker/widget_to_marker.dart';

@RoutePage()
final class MapPage extends ConsumerStatefulWidget {
  const MapPage({super.key});

  @override
  ConsumerState<MapPage> createState() => _MapPageState();
}

final class _MapPageState extends ConsumerState<MapPage> {
  Set<Marker> markers = {};

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      ref.read(mapNotifierProvider.notifier).init();
      await initMarkers();

    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(mapNotifierProvider);

    return StateBuilder(
      state: state,
      loading: ThemeLoadingWidget(),
      success: _buildMapWidget(state),
      error: ThemeErrorWidget(
        message: state.errorMessage,
      ),
    );
  }

  Widget _buildMapWidget(MapState state) {
    final location = state.userLocation;

    if (location != null) {

      return MapWidget(
        userLocation: location,
        busLocation: state.busLocation,
        originLocation: state.originLocation,
        destinationLocation: state.destinationLocation,
        onPop: () => context.router.back(),
        markers: markers,
      );
    }

    return SizedBox.shrink();
  }

  initMarkers() async {
    markers = {};


    markers.add(Marker(
      markerId: const MarkerId("1"),
      position: const LatLng(-23.544193,-46.4541919),
      icon: await Container(
        width: 70,
        height: 70,
        color: Colors.red,
        child: Text('Teste'),
      ).toBitmapDescriptor(
        logicalSize: const Size(20, 20),
        imageSize: const Size(200, 200),
      ),
    ));
    markers.add(Marker(
      markerId: const MarkerId("2"),
      position: const LatLng(-23.544193,-46.4541919),
      icon: await Container(
        width: 70,
        height: 70,
        color: Colors.red,
        child: Text('Teste'),
      ).toBitmapDescriptor(
        logicalSize: const Size(20, 20),
        imageSize: const Size(200, 200),
      ),
    ));
    markers.add(Marker(
      markerId: const MarkerId("3"),
      position: const LatLng(-23.544193,-46.4541919),
      icon: await Container(
        width: 70,
        height: 70,
        color: Colors.red,
        child: Text('Teste'),
      ).toBitmapDescriptor(
        logicalSize: const Size(20, 20),
        imageSize: const Size(200, 200),
      ),
    ));
  }
}
