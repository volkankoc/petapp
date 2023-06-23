import 'package:flutter/material.dart';

class CustomTextFromField extends StatelessWidget {
  final String hintText;
  final int minLength;
  final TextInputType keyboardType;
  final TextEditingController textEditingController;
  const CustomTextFromField({super.key, required this.hintText, required this.textEditingController,  this.minLength=6,  this.keyboardType=TextInputType.text,});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType:keyboardType ,
      validator: (text){
        if(text!.isEmpty){
          return 'Lütfen $hintText giriniz';
        }
        if (text.length < minLength) {
          return '$hintText en az $minLength karakter olmalıdır';
        }
        if(keyboardType==TextInputType.emailAddress){
          if(!text.contains('@')){
            return 'Lütfen geçerli bir email adresi giriniz';
          }
        }
        return null;
      }
      ,
      controller: textEditingController,
      decoration:  InputDecoration(
        border: const OutlineInputBorder(),
        hintText: hintText,
      ),
    );
  }
}