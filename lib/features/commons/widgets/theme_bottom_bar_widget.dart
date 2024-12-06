import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:levy/core/theme/theme_colors.dart';
import 'package:levy/core/theme/theme_images.dart';

class ThemeBottomBarWidget extends StatelessWidget {
  const ThemeBottomBarWidget({
    super.key,
    required this.onFirstItemTap,
    required this.onSecondItemTap,
    required this.onThirdItemTap,
    required this.onProfileTap,
    required this.firstItemIcon,
    required this.secondItemIcon,
    required this.thirdItemIcon,
    required this.profileImage,
  });

  final VoidCallback onFirstItemTap;
  final VoidCallback onSecondItemTap;
  final VoidCallback onThirdItemTap;
  final VoidCallback onProfileTap;
  final String firstItemIcon;
  final String secondItemIcon;
  final String thirdItemIcon;
  final String profileImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 84,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          top: BorderSide(
            color: ThemeColors.grey2,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildIcon(firstItemIcon, onFirstItemTap),
          _buildIcon(secondItemIcon, onSecondItemTap),
          _buildIcon(thirdItemIcon, onThirdItemTap),
          _buildProfileIcon(profileImage, onProfileTap),
        ],
      ),
    );
  }

  Widget _buildIcon(String icon, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: SvgPicture.asset(
        icon,
        width: 20,
        height: 20,
      ),
    );
  }

  Widget _buildProfileIcon(String image, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: ClipOval(
        child: Image.asset(
          ThemeImages.getImageByString(image),
          width: 32,
          height: 32,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
