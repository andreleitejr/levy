const _path = 'assets/images';

final class ThemeImages {
  const ThemeImages._();

  static const avatar = '$_path/avatar.jpg';
  static const bus = '$_path/bus_icon.png';
  static const logo = '$_path/logo.png';
  static const marker = '$_path/marker.jpg';

  static String getImageByString(String name) => '$_path/$name.jpg';
}
