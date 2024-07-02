import 'package:flutter/material.dart';
import 'package:poke_app/core/core.dart';

class ShipMovesPokemon extends StatelessWidget {
  const ShipMovesPokemon({
    required this.labels,
    super.key,
  });
  final List<String> labels;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, left: 16, right: 16),
      child: Center(
        child: Wrap(
          spacing: 6,
          runSpacing: 4,
          alignment: WrapAlignment.center,
          runAlignment: WrapAlignment.center,
          children: List.generate(
            labels.length,
            (index) => Padding(
              padding: const EdgeInsets.only(right: 8, top: 6),
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.grey.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(20),
                  border: Border(
                    bottom: BorderSide(
                      color: AppColors.white.withOpacity(0.5),
                    ),
                  ),
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 8,
                ),
                margin: const EdgeInsets.only(bottom: 8),
                child: Text(
                  labels[index],
                  style: TextStyleApp.body.copyWith(
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
