import 'package:flutter/material.dart';
import 'package:petapp/constants/sizes/padding_constant.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController textEditingController;
  final String hintText;
  final TextInputType keyboardType;
  const CustomTextField({super.key, required this.hintText, required this.textEditingController,  this.keyboardType=TextInputType.text});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(PaddingConstant.p10),
      child:  TextField(
        keyboardType: keyboardType,
        controller: textEditingController,
        decoration:  InputDecoration(
          hintText: hintText 
        ),
        
      ),
    );
  }
}