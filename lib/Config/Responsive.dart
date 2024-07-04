import 'package:flutter/material.dart';


class Responsive extends StatelessWidget {
  final Widget mobilescreen;
final Widget webscreen;
  const Responsive({super.key,required this.mobilescreen,required this.webscreen});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context ,constrainst){
      if (constrainst.maxWidth>600) {
        return webscreen;
      }
      return mobilescreen;
    });
  }
}