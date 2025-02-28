import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:json_annotation/json_annotation.dart';

final class LatLngConverter implements JsonConverter<LatLng, Map<String, double>> {
  const LatLngConverter();

  @override
  LatLng fromJson(Map<String, double> json) {
    return LatLng(json['latitude'] as double, json['longitude'] as double);
  }

  @override
  Map<String, double> toJson(LatLng object) {
    return {
      'latitude': object.latitude,
      'longitude': object.longitude,
    };
  }
}
