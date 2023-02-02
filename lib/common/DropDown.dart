import 'package:flutter/material.dart';

import 'ColorsConstant.dart';


class DropdownContainer extends StatelessWidget {
  final String? value;
  final String? hint;
  final void Function(String?) onChange;
  final List<DropdownMenuItem<String>> items;
  const DropdownContainer({Key? key, this.value, this.hint, required this.onChange, required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 5.0, right: 5.0),
      width: double.infinity,
      height: 45,
      decoration: BoxDecoration(
        color: bgWhiteColor,
        border: Border.all(color: bgColor, width: 1.0),
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: DropdownButtonHideUnderline(
          child: DropdownButton<String>(
            value: value,
            isDense: true,
            dropdownColor: bgWhiteColor,
            menuMaxHeight: 450,
            isExpanded: true,
            iconEnabledColor: bgColor,
            items: items,
            hint:  Padding(
              padding: const EdgeInsets.only(left: 3.0),
              child: Text(
                hint!,
                style: const TextStyle(
                  color: bgColor,
                  fontSize: 14.5,
                ),
              ),
            ),
            onChanged: onChange,
          ),
        ),
      ),
    );
  }
}


class SwitchSc extends StatelessWidget {
  final bool value;
  final String text;
  final void Function(bool?) onChange;
  const SwitchSc({Key? key, required this.value, required this.onChange, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Switch(
          activeColor: Colors.white,
          activeTrackColor: bgColor,
          inactiveThumbColor: Colors.white,
          inactiveTrackColor: Colors.grey.shade400,
          splashRadius: 50.0,
          value: value,
          onChanged:onChange
          ),
         Text(text)
      ],
    );
  }
}
