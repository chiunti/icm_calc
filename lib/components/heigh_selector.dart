import 'package:flutter/material.dart';
import 'package:imc_calc/core/app_colors.dart';
import 'package:imc_calc/core/text_styles.dart';

class HeighSelector extends StatefulWidget {
  const HeighSelector({super.key});

  @override
  State<HeighSelector> createState() => _HeighSelectorState();
}

class _HeighSelectorState extends State<HeighSelector> {
  double height = 170.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16.0),
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.backgroundComponent,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  Text('Altura', style: TextStyles.body),
                  Text('${height.toInt()} cm', style: TextStyles.title),
                  Slider(
                    value: height,
                    min: 120,
                    max: 220,
                    divisions: 100,
                    activeColor: AppColors.primaryColor,
                    label: '${height.toInt()}',
                    onChanged: (value) {
                      setState(() {
                        height = value;
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
