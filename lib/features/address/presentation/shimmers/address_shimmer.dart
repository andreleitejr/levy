import 'package:flutter/material.dart';
import 'package:levy/core/theme/theme.dart';
import 'package:levy/features/address/presentation/utils/address_translation.dart';
import 'package:levy/features/commons/theme/shimmers/theme_list_item_shimmer.dart';
import 'package:levy/features/commons/theme/widgets/theme_widgets.dart';
import 'package:shimmer/shimmer.dart';

final class AddressShimmer extends StatelessWidget {
  const AddressShimmer({
    super.key,
    required this.onPop,
  });

  final VoidCallback onPop;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ThemeAppBarWidget(
        title: AddressTranslation.header.title,
        onLeadingPressed: onPop,
        leadingIcon: ThemeIcons.arrowLeft,
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Shimmer.fromColors(
                baseColor: ThemeColors.grey2,
                highlightColor: ThemeColors.grey1,
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(
                      color: ThemeColors.grey3,
                      width: 1.5,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: const SizedBox(height: 24),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return ThemeListItemShimmer(
                  showImageShimmer: false,
                );
              },
              childCount: 10,
            ),
          ),
        ],
      ),
    );
  }
}
