import 'package:flutter/material.dart';
import 'Reusable.dart/reusable.dart';

void main() {
  runApp(const HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: MaterialApp(
        home: Scaffold(
          backgroundColor: const Color.fromARGB(66, 78, 75, 75),
          appBar: AppBar(
            title: const Text('Car details'),
            centerTitle: true,
            backgroundColor: const Color.fromARGB(255, 8, 8, 8),
          ),
          body:  Column(
            
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                child: ReusableContainer(
                  noPlate: 'UPA 2023', 
                  carColor: 'white', 
                  carEngine: 'E12345', 
                  height: MediaQuery.sizeOf(context).height/2, 
                  radius: 20, 
                  width: MediaQuery.sizeOf(context).width/2
                  ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}