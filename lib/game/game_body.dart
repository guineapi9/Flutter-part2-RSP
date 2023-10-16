

import 'package:flutter/material.dart';
import 'package:test_flutter_project/Game/enum.dart';

import '../Game/widget/cpu_input.dart';
import '../Game/widget/game_result.dart';
import '../Game/widget/user_input.dart';

class GameBody extends StatefulWidget {
  const GameBody({super.key});

  @override
  State<GameBody> createState() => _GameBodyState();
}

class _GameBodyState extends State<GameBody> {
  late bool isDone;
  late InputType _userInput;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    isDone = false;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: CpuInput(isDone: isDone)),
        Expanded(child: GameResult(isDone: isDone)),
        Expanded(child: UserInput(isDone: isDone, callback: setUserInputs(userInput))),
      ],
    );
  }

  void setUserInputs(InputType userInput){
    setState(() {
      isDone = true;
      _userInput = userInput;
    });

  }
}
