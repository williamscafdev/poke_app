import 'package:flutter/material.dart';
import 'package:poke_app/core/core.dart';

class TabBarPokemon extends StatelessWidget {
  const TabBarPokemon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TabBar(
      labelColor: AppColors.white,
      unselectedLabelColor: AppColors.grey50,
      indicatorColor: AppColors.white,
      dividerColor: AppColors.grey100,
      dividerHeight: 0,
      padding: pad0,
      labelPadding: pad0,
      overlayColor: WidgetStateProperty.all(AppColors.black),
      splashFactory: InkRipple.splashFactory,
      splashBorderRadius: BorderRadius.circular(16),
      indicatorSize: TabBarIndicatorSize.label,
      tabs: [
        Tab(
          child: Text(
            'Stats',
            style: TextStyleApp.bodyBold.copyWith(
              height: 4,
              fontSize: 16,
            ),
          ),
        ),
        Tab(
          child: Text(
            'Moves',
            style: TextStyleApp.bodyBold.copyWith(
              color: AppColors.grey50,
              fontSize: 16,
              height: 4,
            ),
          ),
        ),
      ],
    );
  }
}
