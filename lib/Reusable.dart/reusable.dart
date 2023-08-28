import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ReusableContainer extends StatefulWidget {
  String noPlate;
  String carColor;
  String carEngine;
  double height;
  double radius;
  double width;
  ReusableContainer(
      {super.key,
      required this.noPlate,
      required this.carColor,
      required this.carEngine,
      required this.height,
      required this.radius,
      required this.width,
      });

  @override
  State<ReusableContainer> createState() => _ReusableContainerState();
}

class _ReusableContainerState extends State<ReusableContainer> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      width: widget.width,
      decoration:  BoxDecoration(
        color: const Color.fromARGB(255, 189, 47, 47),
        borderRadius: BorderRadius.circular(widget.radius)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
         Center(
          child:  Text('Number plate is ${widget.noPlate} \nand the colour is ${widget.carColor} \nwith an Engine which is ${widget.carEngine}',
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20.1,
          ),
          ),
         )
        ],
      ),
    );
  }
}
