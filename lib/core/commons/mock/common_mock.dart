import 'dart:math';

import 'package:uuid/uuid.dart';

final class CommonMock {
  const CommonMock._();

  static List<Map<String, dynamic>> get amenities => [
        {
          "icon": "bed",
          "title": "Semi-Lie",
        },
        {
          "icon": "wifi",
          "title": "Wi-Fi",
        },
        {
          "icon": "screen",
          "title": "Smart TV",
        },
        {
          "icon": "coffee",
          "title": "Coffee",
        },
        {
          "icon": "screen",
          "title": "Netflix",
        },
        {
          "icon": "screen",
          "title": "Prime Video",
        },
        {
          "icon": "game",
          "title": "Game",
        },
        {
          "icon": "wind",
          "title": "Air Conditioning",
        },
        {
          "icon": "camera",
          "title": "Security Cam",
        },
        {
          "icon": "book",
          "title": "Books",
        },
      ];

  static List<Map<String, dynamic>> get seats {
    final random = Random();

    return List.generate(32, (index) {
      final letter = String.fromCharCode(65 + (index ~/ 4));
      final number = (index % 4) + 1;
      final reservedBy = random.nextBool() ? Uuid().v4() : null;

      return {
        'letter': letter,
        'number': number,
        'reservedBy': reservedBy,
      };
    });
  }
}
