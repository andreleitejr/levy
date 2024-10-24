abstract class SeatEntity {
  const SeatEntity();

  String get letter;
  int get number;
  String? get reservedBy;

  bool get isReserved => reservedBy != null;
}
