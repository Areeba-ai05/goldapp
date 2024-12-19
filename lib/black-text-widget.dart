import 'package:flutter/material.dart';

class BlackTextWidget extends StatelessWidget {
  //define data member
  String  text;//data type then variable name
  BlackTextWidget({super.key,
    required this.text
  });

  @override
  Widget build(BuildContext context) {
    return Text(text,
      style: TextStyle(color: Colors.black,fontSize: 30),);
  }
}
