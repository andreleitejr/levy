const _path = 'assets/images';

final class ThemeImages {
  const ThemeImages._();

  static const bus = '$_path/bus_icon.png';
  static const marker = '$_path/marker.png';

  static String getImageByString(String name) {
    return '$_path/$name.jpg';
  }
}
