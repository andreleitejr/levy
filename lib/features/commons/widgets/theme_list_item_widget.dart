import 'package:flutter/material.dart';

class ThemeListItemWidget extends StatelessWidget {
  final String? image;
  final String title;
  final String subtitle;
  final Widget trailing;

  const ThemeListItemWidget({
    super.key,
    this.image,
    required this.title,
    required this.subtitle,
    required this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        leading: _buildLeadingImage(),
        title: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 14,
          ),
        ),
        subtitle: Text(
          subtitle,
          style: const TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 10,
          ),
        ),
        trailing: trailing,
      ),
    );
  }

  Widget _buildLeadingImage() {
    if (image != null) {
      return ClipOval(
        child: Image.network(
          image!,
          width: 48,
          height: 48,
          fit: BoxFit.cover,
        ),
      );
    }
    return const SizedBox.shrink(); // Retorna um SizedBox.shrink() caso a imagem seja nula
  }
}
