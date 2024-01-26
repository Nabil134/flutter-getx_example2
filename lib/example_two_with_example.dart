import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_example_2/example_two_controller.dart';

class ExampleTwoWithGetx extends StatefulWidget {
  const ExampleTwoWithGetx({super.key});

  @override
  State<ExampleTwoWithGetx> createState() => _ExampleTwoWithGetxState();
}

class _ExampleTwoWithGetxState extends State<ExampleTwoWithGetx> {
  final ExampleTwoController exampletwocontroller=Get.put(ExampleTwoController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Example With Getx'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Obx(() =>
        Container(
          margin: const EdgeInsets.all(8),
          height: 200,
          width: 200,
          color: Colors.red.withOpacity(exampletwocontroller.opacity.value),
        ),
          ),
     Obx(() =>
     Slider(value: exampletwocontroller.opacity.value, onChanged: (value){
       exampletwocontroller.setOpacity(value);

     }),
     ),
      ],),
    );
  }
}
