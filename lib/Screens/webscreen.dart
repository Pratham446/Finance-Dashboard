import 'package:fdashboard/Style/Colors.dart';
import 'package:fdashboard/widgets/sidemenu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class webscreen extends StatelessWidget {
  const webscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: AppColors.secondary,
      body: Drawerr(),
    );
  }
}

