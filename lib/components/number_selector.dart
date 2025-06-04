import 'package:flutter/material.dart';
import 'package:imc_calc/core/app_colors.dart';
import 'package:imc_calc/core/text_styles.dart';

class NumberSelector extends StatefulWidget {
  final String title;
  final String unit;
  final double value;
  final int decimals;
  const NumberSelector({
    super.key,
    required this.title,
    required this.unit,
    required this.value,
    this.decimals = 0,
  });

  @override
  State<NumberSelector> createState() => _NumberSelectorState();
}

class _NumberSelectorState extends State<NumberSelector> {
  double value = 0;

  @override
  void initState() {
    value = widget.value;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [
          Text(widget.title, style: TextStyles.body),
          Text(
            '${value.toStringAsFixed(widget.decimals)} ${widget.unit}',
            style: TextStyles.title,
          ),
          SizedBox(height: 12,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FloatingActionButton(
                heroTag: '${widget.title}remove',
                onPressed: () {
                  setState(() {
                    value -= 1;
                  });
                },
                shape: const CircleBorder(),
                backgroundColor: AppColors.primaryColor,
                child: const Icon(Icons.remove, color: AppColors.foregroundColor),
              ),
              SizedBox(width: 16,),
              FloatingActionButton(
                heroTag: '${widget.title}add',
                onPressed: () {
                  setState(() {
                    value += 1;
                  });
                },
                shape: const CircleBorder(),
                backgroundColor: AppColors.primaryColor,
                child: const Icon(Icons.add, color: AppColors.foregroundColor),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
