import 'package:flutter/material.dart';

import 'ColorsConstant.dart';

///name   |  anuj
class InHeight extends StatelessWidget {
  final String left;
  final String right;
  const InHeight( this.left,this.right, {super.key});

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children:  [
          Expanded(
              flex: 2,
              child: Text(
                left,
                style: const TextStyle(color: bgColor,fontSize: 14),
              )),
          const VerticalDivider(
            color: Colors.black,
            thickness: 1,
          ),
          Expanded(
              flex: 2,
              child: Text(right.toString()==""?"N/A":right.toString()==null?"N/A":right.toString())),
        ],
      ),
    );
  }
}

///name(u can assign color which u want)  |  anuj(u can assign color which u want)
class InHeightColor extends StatelessWidget {
  final String left;
  final Color? colourFirst;
  final String right;
  final Color? colourSecond;
  const InHeightColor( this.left,this.right, {super.key, this.colourFirst, this.colourSecond});

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children:  [
          Expanded(
              flex: 2,
              child: Text(
                left,
                style: TextStyle(color: colourFirst,fontSize: 14),
              )),
          VerticalDivider(
            color: Colors.black,
            thickness: 1,
          ),
          Expanded(
              flex: 2,
              child: Text(right==""?"N/A":right, style: TextStyle(color: colourSecond,fontSize: 14),)),
        ],
      ),
    );
  }
}

///description | the sentence
class InHeightOne extends StatelessWidget {
  final String first;
  final String second;
  const InHeightOne(  {super.key, required this.first, required this.second});

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children:  [
          Expanded(
              flex: 1,
              child: Text(
                first,
                style: const TextStyle(color: bgColor,fontSize: 14),
              )),
          Expanded(
              flex: 3,
              child: Text(second==""?"N/A":second,style: const TextStyle(color: Colors.black,fontSize: 14),)),
        ],
      ),
    );
  }
}

///name:-anuj  | roll no:-21
class InHeightTwo extends StatelessWidget {
  final String first;
  final String firstAns;
  final String second;
  final String secondAns;
  const InHeightTwo(  {super.key, required this.first, required this.firstAns, required this.second,  required this.secondAns});

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children:  [
          Expanded(
              flex: 1,
              child: Text(
                first,
                style: const TextStyle(color: bgColor,fontSize: 14),
              )),
          Expanded(
              flex: 1,
              child: Text(
                firstAns,
              )),
          const VerticalDivider(
            color: Colors.black,
            thickness: 1,
          ),
          Expanded(
              flex: 1,
              child: Text(second==""?"N/A":second,style: TextStyle(color: bgColor,fontSize: 14),)),
          Expanded(
              flex: 1,
              child: Text(secondAns==""?"N/A":secondAns)),
        ],
      ),
    );
  }
}

/// |
class CommonDivider extends StatelessWidget{
  const CommonDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Divider(
      color: Colors.black,
    );
  }
}

///blue color box with center text
class ColorContainer extends StatelessWidget {
  final String text ;
  const ColorContainer({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 25,
        width: double.infinity,
        color: bgLightColor,
        child:
        Center(child: Text(text)));
  }
}
