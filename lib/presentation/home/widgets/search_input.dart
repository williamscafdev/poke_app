import 'package:flutter/material.dart';
import 'package:poke_app/core/core.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({
    required this.controller,
    required this.onChanged,
    super.key,
  });
  final TextEditingController controller;
  final void Function(String) onChanged;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: TextField(
        controller: controller,
        onChanged: onChanged,
        decoration: InputDecoration(
          hintStyle: TextStyleApp.bodyMid.grey50,
          filled: true,
          contentPadding: EdgeInsets.zero,
          hintText: 'Buscar',
          prefixIcon: const Icon(
            Icons.search,
            color: AppColors.grey50,
          ),
          fillColor: AppColors.grey,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }
}
