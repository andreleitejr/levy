const _path = 'assets/icons';

final class ThemeIcons {
  const ThemeIcons._();

  static const arrowLeft = '$_path/arrow-left.svg';
  static const arrowRight = '$_path/arrow-right.svg';
  static const arrowSmallLeft = '$_path/arrow-small-left.svg';
  static const arrowSmallRight = '$_path/arrow-small-right.svg';
  static const bed = '$_path/bed.svg';
  static const bell = '$_path/bell.svg';
  static const book = '$_path/book.svg';
  static const briefcase = '$_path/briefcase.svg';
  static const calendar = '$_path/calendar.svg';
  static const camera = '$_path/camera.svg';
  static const coffee = '$_path/coffee.svg';
  static const game = '$_path/game.svg';
  static const home = '$_path/home.svg';
  static const map = '$_path/map.svg';
  static const screen = '$_path/screen.svg';
  static const search = '$_path/search.svg';
  static const ticket = '$_path/ticket.svg';
  static const wheelchair = '$_path/ticket.svg';
  static const wifi = '$_path/ticket.svg';
  static const wind = '$_path/ticket.svg';

  static String getIconByString(String name) => '$_path/$name.svg';
}
