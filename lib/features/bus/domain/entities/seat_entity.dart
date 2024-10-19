abstract class SeatEntity {
  const SeatEntity();

  String get id;
  String get label;
  bool get isReserved;
  String? get reservedBy;
}
