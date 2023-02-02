import 'package:flutter/material.dart';


///[Sb] give you support for adding a fixed space or a custom space width and height, which can be added and used any where in rows, Column and etc.
// ignore: must_be_immutable
class Sb extends StatelessWidget {
  final bool _top;
  final bool _custom;

  ///[height] height should be passed in double or else it will be 0px
  double? height;

  ///[width] height should be passed in width or else it will be 0px
  double? width;

  ///[Sb.h2] give space of fixed height 2px


  ///[Sb.h3] give space of fixed height 3px
  static SizedBox h2 = const SizedBox(height: 2);
  static SizedBox h3 = const SizedBox(height: 3);
  static SizedBox h5 = const SizedBox(height: 5);
  static SizedBox h8 = const SizedBox(height: 8);
  static SizedBox h10 = const SizedBox(height: 10);
  static SizedBox h15 = const SizedBox(height: 15);
  static SizedBox h20 = const SizedBox(height: 20);
  static SizedBox h30 = const SizedBox(height: 30);
  static SizedBox h40 = const SizedBox(height: 40);
  static SizedBox h50 = const SizedBox(height: 50);
  static SizedBox h60 = const SizedBox(height: 60);
  static SizedBox h70 = const SizedBox(height: 70);
  static SizedBox h80 = const SizedBox(height: 80);



  static SizedBox w2 = const SizedBox(width: 2);
  static SizedBox w5 = const SizedBox(width: 5);
  static SizedBox w8 = const SizedBox(width: 8);
  static SizedBox w10 = const SizedBox(width: 10);
  static SizedBox w15 = const SizedBox(width: 15);
  static SizedBox w20 = const SizedBox(width: 20);
  static SizedBox w30 = const SizedBox(width: 30);
  static SizedBox w40 = const SizedBox(width: 40);
  static SizedBox w50 = const SizedBox(width: 50);
  static SizedBox w60 = const SizedBox(width: 60);
  static SizedBox w70 = const SizedBox(width: 60);
  static SizedBox w80 = const SizedBox(width: 80);


  ///[Sb.empty] give space of fixed height 0px & width 0px
  static SizedBox empty = const SizedBox();


  ///Sb._top() this Method gives you the space of [safeArea] from _top.
  Sb.top({Key? key})
      : _top = true,
        _custom = false,
        super(key: key);

  ///Sb.bottom() this Method gives you the space of [safeArea] from bottom.
  Sb.bottom({Key? key})
      : _top = false,
        _custom = false,
        super(key: key);

  ///Sb._custom() this Method gives you the ease to create _custom space.
  Sb.custom({Key? key, this.height, this.width})
      : _top = false,
        _custom = true,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return _custom
        ? SizedBox(
      key: key,
      height: height,
      width: width,
    )
        : SizedBox(
      key: key,
      height: _top
          ? MediaQuery.of(context).padding.top
          : MediaQuery.of(context).padding.bottom,
    );
  }
}