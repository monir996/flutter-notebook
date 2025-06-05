import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  // ----------------------- Step List ------------------
  int _currentActiveStep = 0;

  List<Step> stepList()=> [
    Step(
        isActive: _currentActiveStep >= 0,
        title: Text("Beginner"),
        content: Text("You are a beginner Programmer.")
    ),
    Step(
        isActive: _currentActiveStep >= 1,
        title: Text("Mid Level"),
        content: Text("You are a mid level Programmer.")
    ),
    Step(
        isActive: _currentActiveStep >= 2,
        title: Text("Pro"),
        content: Text("You are a pro Programmer.")
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Stepper Widget", style: TextStyle(color: Colors.white)), backgroundColor: Colors.blue),

      // ----------------------- Branch 39 ==> Stepper Widget ------------------

      body: Stepper(

          steps: stepList(),
          //type: StepperType.horizontal,
          currentStep: _currentActiveStep,

          onStepContinue: (){
            if(_currentActiveStep < (stepList().length - 1)) {
             setState(() {
               _currentActiveStep += 1;
             });
            }
          },

          onStepCancel: (){
            if(_currentActiveStep == 0 ) {
              return;
            }

            setState(() {
              _currentActiveStep -= 1;
            });
          },

          onStepTapped: (index){
            setState(() {
              _currentActiveStep = index;
            });
          },

      ),

    );
  }
}