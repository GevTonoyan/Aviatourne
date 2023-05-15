import 'package:aviatourne/theme/colors/color_manager.dart';
import 'package:flutter/material.dart';

class DropDownCard extends StatelessWidget {
  final String label;

  const DropDownCard({
    required this.label,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colorManager = ColorManager();

    return Container(
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: const Color(0xffE6E6E6)),
      ),
      child: Row(
        children: [
          const SizedBox(width: 10),
          Text(
            label,
            style: TextStyle(
              color: colorManager.theme.appBlack,
              fontSize: 12,
            ),
          ),
          const Spacer(),
          Icon(
            Icons.arrow_drop_down,
            color: colorManager.theme.description,
            size: 20,
          ),
          const SizedBox(width: 15),
        ],
      ),
    );
  }
}
