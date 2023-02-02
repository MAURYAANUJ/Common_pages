
import 'package:flutter/material.dart';

class InputWidgetTextField extends StatelessWidget {
  final String keyboardType;
  final String hintText;
  final controller;
  final bool color;
  final void Function(String) onChanged ;
  const InputWidgetTextField(this.keyboardType, this.hintText, this.controller, this.color, this.onChanged,{super.key, });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: TextField(
          controller: controller,
          keyboardType: _changeKeyboardType(keyboardType),
          cursorHeight: 25.0,
          maxLines: _changeFiledLines(keyboardType),
          maxLength: _changeFiledLength(keyboardType),
          onChanged: onChanged,
          decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.0),
                borderSide: BorderSide(color:_changeColor(color), width: 1.0),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.0),
                borderSide:    BorderSide(color: _changeColor(color), width: 1.0),
              ),
              border: const OutlineInputBorder(),
              labelText: hintText,
              counterText: "",
              hintStyle: const TextStyle(color: Colors.grey, fontSize: 18)
          ),
        ),
      ),
    );
  }

  _changeKeyboardType(entry) {
    if (entry == "Description") {
      return TextInputType.multiline;
    } else if (entry == "Number") {
      return TextInputType.number;
    } else if (entry == "Text") {
      return TextInputType.text;
    } else if (entry == "Password") {
      return TextInputType.visiblePassword;
    }else if (entry == "pin") {
      return TextInputType.text;
    }
  }
  _changeFiledLength(entry) {
    if (entry == "Description") {
      return 1000;
    } else {
      return 100;
    }
  }
  _changeFiledLines(entry) {
    if (entry == "Description") {
      return 2;
    } else {
      return 1;
    }
  }
  _changeColor(entry) {
    if (entry == true) {
      return Colors.blue;
    } else if (entry == false) {
      return Colors.red;
    }
  }

}