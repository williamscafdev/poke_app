import 'package:flutter/material.dart';
import 'package:poke_app/core/core.dart';

class StatsPokemon extends StatelessWidget {
  const StatsPokemon({
    required this.label,
    required this.value,
    super.key,
  });
  final String label;
  final int value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, left: 16, right: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 2,
            child: Text(
              label,
              style: TextStyleApp.body.copyWith(
                fontSize: 20,
              ),
            ),
          ),
          space8,
          Expanded(
            child: Text(
              value.toString(),
              style: TextStyleApp.bodyBold.w900.copyWith(
                fontSize: 20,
                color: AppColors.yellow50,
              ),
            ),
          ),
          space8,
          Expanded(
            flex: 3,
            child: LinearProgressIndicator(
              value: value / 100,
              minHeight: 14,
              borderRadius: BorderRadius.circular(16),
              backgroundColor: AppColors.grey100.withOpacity(0.2),
              valueColor:
                  const AlwaysStoppedAnimation<Color>(AppColors.yellow50),
            ),
          ),
        ],
      ),
    );
  }
}
