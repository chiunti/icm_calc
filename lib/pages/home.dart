import 'package:flutter/material.dart';
import 'package:imc_calc/components/gender_selector.dart';
import 'package:imc_calc/components/heigh_selector.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [GenderSelector(), HeighSelector()]);
  }
}
