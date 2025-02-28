extension DateToAgeExtension on String {
  int get age {
    final birthDate = DateTime.tryParse(this);

    if (birthDate == null) {
      throw FormatException("Invalid date format");
    }

    final today = DateTime.now();

    int age = today.year - birthDate.year;

    final isBeforeBirthMonth = today.month < birthDate.month;
    final isBeforeBirthDay = today.month == birthDate.month && today.day < birthDate.day;

    if (isBeforeBirthMonth || isBeforeBirthDay) {
      age--;
    }

    return age;
  }
}
