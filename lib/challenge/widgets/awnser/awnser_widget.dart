import 'package:devquiz/core/core.dart';
import 'package:devquiz/shared/models/awnser_model.dart';
import 'package:flutter/material.dart';

class AwnserWidget extends StatelessWidget {
  final AwnserModel awnser;
  final bool selected;
  final VoidCallback onTap;

  const AwnserWidget(
      {Key? key,
      required this.awnser,
      required this.onTap,
      this.selected = false})
      : super(key: key);

  Color get _selectedColorRight =>
      awnser.rightAwnser ? AppColors.darkGreen : AppColors.darkRed;

  Color get _selectedBorderRight =>
      awnser.rightAwnser ? AppColors.lightGreen : AppColors.lightRed;

  Color get _selectedColorCardRight =>
      awnser.rightAwnser ? AppColors.lightGreen : AppColors.lightRed;

  Color get _selectedBorderCardRight =>
      awnser.rightAwnser ? AppColors.green : AppColors.red;

  TextStyle get _selectedTextStyleRight =>
      awnser.rightAwnser ? AppTextStyles.bodyDarkGreen : AppTextStyles.bodyDarkRed;

  IconData get _selectedIconRight => awnser.rightAwnser ? Icons.check : Icons.close;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 4,
      ),
      child: GestureDetector(
        onTap: onTap,
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
                  awnser.title,
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
      ),
    );
  }
}
