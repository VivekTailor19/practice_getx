import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practice_getx/counter_app/counter_controller.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: CounterController(),
      builder: (controller) => SafeArea(
        child: Scaffold(

          appBar: AppBar(backgroundColor: Colors.teal,
            centerTitle: true,
            title: Text("Counter App",style: TextStyle(color: Colors.white),),
          ),

          body: Column(mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text("${controller.no}",style: TextStyle(fontSize: 30)),
              SizedBox(height: 300),
              Row(
                mainAxisAlignment:MainAxisAlignment.spaceAround,
                children: [
                IconButton(onPressed: () {controller.add1();}, icon: Icon(Icons.plus_one)),

                IconButton(onPressed: () {controller.min1();}, icon: Icon(Icons.exposure_minus_1_outlined)),
              ],),
              Row(mainAxisAlignment:MainAxisAlignment.spaceAround,
                children: [
                  IconButton(onPressed: () {controller.multi2();}, icon: Icon(Icons.two_k_outlined)),
                  IconButton(onPressed: () {controller.multi3();}, icon: Icon(Icons.three_k_outlined)),
                  IconButton(onPressed: () {controller.multi4();}, icon: Icon(Icons.four_k_outlined)),
                ],
              ),

            ],
          ),

        ),
      ),
    );
  }
}
