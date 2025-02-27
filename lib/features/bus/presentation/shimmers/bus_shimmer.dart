import 'package:flutter/material.dart';
import 'package:levy/core/theme/theme.dart';
import 'package:levy/features/bus/presentation/utils/bus_translation.dart';
import 'package:levy/features/commons/theme/widgets/theme_widgets.dart';
import 'package:shimmer/shimmer.dart';

final class BusShimmer extends StatelessWidget {
  const BusShimmer({
    super.key,
    required this.onPop,
  });

  final VoidCallback onPop;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ThemeAppBarWidget(
        title: BusTranslation.header.departureTitle,
        onLeadingPressed: onPop,
        leadingIcon: ThemeIcons.arrowLeft,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            ...[1, 2, 3, 4, 5].map(
              (item) {
                return Column(
                  children: [
                    Shimmer.fromColors(
                      baseColor: ThemeColors.grey2,
                      highlightColor: ThemeColors.grey1,
                      child: Container(
                        height: 464,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(24),
                        ),
                      ),
                    ),
                    const SizedBox(height: 24),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
