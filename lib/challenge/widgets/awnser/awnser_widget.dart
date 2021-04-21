import 'package:devquiz/core/core.dart';
import 'package:flutter/material.dart';

class AwnserWidget extends StatelessWidget {
  final String title;
  final bool rightAwnser;
  final bool selected;

  const AwnserWidget(
      {Key? key,
      required this.title,
      this.rightAwnser = false,
      this.selected = false})
      : super(key: key);

  Color get _selectedColorRight =>
      rightAwnser ? AppColors.darkGreen : AppColors.darkRed;

  Color get _selectedBorderRight =>
      rightAwnser ? AppColors.lightGreen : AppColors.lightRed;

  Color get _selectedColorCardRight =>
      rightAwnser ? AppColors.lightGreen : AppColors.lightRed;

  Color get _selectedBorderCardRight =>
      rightAwnser ? AppColors.green : AppColors.red;

  TextStyle get _selectedTextStyleRight =>
      rightAwnser ? AppTextStyles.bodyDarkGreen : AppTextStyles.bodyDarkRed;

  IconData get _selectedIconRight => rightAwnser ? Icons.check : Icons.close;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 4,
      ),
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: selected ? _selectedColorCardRight : AppColors.white,
          border: Border.fromBorderSide(
            BorderSide(
              color: selected ? _selectedBorderCardRight : AppColors.border,
            ),
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                title,
                style: selected ? _selectedTextStyleRight : AppTextStyles.body,
              ),
            ),
            Container(
              height: 24,
              width: 24,
              decoration: BoxDecoration(
                color: selected ? _selectedColorRight : AppColors.white,
                border: Border.fromBorderSide(
                  BorderSide(
                    color: selected ? _selectedBorderRight : AppColors.border,
                  ),
                ),
                borderRadius: BorderRadius.circular(500),
              ),
              child: selected
                  ? Icon(_selectedIconRight, color: AppColors.white, size: 16)
                  : null,
            )
          ],
        ),
      ),
    );
  }
}
