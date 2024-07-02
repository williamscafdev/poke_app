import 'package:flutter/material.dart';
import 'package:poke_app/core/core.dart';

class GradientBackgroundImg extends StatelessWidget {
  const GradientBackgroundImg({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: const [0.7, 2],
          colors: [
            AppColors.black,
            AppColors.grey10.withOpacity(0.5),
          ],
        ),
      ),
    );
  }
}
