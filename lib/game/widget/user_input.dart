import 'dart:ffi';

import 'package:flutter/material.dart';

import '../../Game/enum.dart';
import '../../Game/widget/input_card.dart';

class UserInput extends StatelessWidget {
  final Function(UserInput) callback;
  final bool isDone;

  const UserInput({required this.isDone, required this.callback,super.key});

  @override
  Widget build(BuildContext context) {
    if (isDone) {
      return Placeholder();
    }

    return Row(
      children: _getInputs(callback: callback),
    );
  }

  List<Widget> _getInputs(Function(InputType) callback){
    return InputType.values.map((type) => InputCard(child: Image.asset(type.path), callback: callback)).toList();
  }
}
