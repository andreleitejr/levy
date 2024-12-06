const _path = 'assets/images';

final class ThemeImages {
  const ThemeImages._();

  static String getImageByString(String name) {
    return '$_path/$name.jpg';
  }
}
