import 'package:flutter/material.dart';
import 'package:imc_calc/core/text_styles.dart';

class NumberSelector
 extends StatefulWidget {
  final String title;
  final String unit;
  final double value;
  const NumberSelector({super.key, required this.title, required this.unit, required this.value});
  

  @override
  State<NumberSelector> createState() => _NumberSelectorState();
  
}

class _NumberSelectorState extends State<NumberSelector> {
 
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(widget.title, style: TextStyles.title,),
        Text(widget.value.toString(), style: TextStyles.body,),],
    );
  }
}