
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_example_2/example_two_controller.dart';
import 'package:getx_example_2/example_two_with_example.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double opacity=0.4;
  final ExampleTwoController exampleTwoController=Get.put(ExampleTwoController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle:true,
        title: Text('Getx Example Two'),
        backgroundColor: Colors.blue,
      ),
      body: Column(children: [
        Container(
          margin: const EdgeInsets.all(8),
          height: 200,
          width: 200,
          color: Colors.red.withOpacity(opacity),
        ),
        Slider(value: opacity, onChanged:(value){
          print(value);
          opacity=value;
          setState(() {
          });

        } ),
Text('ExampleTwo With Getx '),
        ElevatedButton(onPressed: (){

          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ExampleTwoWithGetx()),
          );
        }, child:Text('Example Two With Getx'),),


      ],),
    );
  }
}
