
import 'package:firstapp/SMSController.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
class Homepage extends StatelessWidget
{
  const Homepage({super.key});
  @override
  Widget build(BuildContext context)
  { SMSController smsController = Get.put(SMSController());
    return Scaffold(
      body:Column(
        children: [
          TextButton(onPressed:(){
            smsController.requestForPermission();
          }, child:const Text("hi"),)
        ],
      )
    );
  }
}
