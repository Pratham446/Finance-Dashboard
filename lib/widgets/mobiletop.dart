
import 'package:fdashboard/Style/Colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class mobiletop extends StatelessWidget {
  const mobiletop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(flex: 1, child: Container(color: AppColors.secondaryBg,
    
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(decoration: BoxDecoration(
        color: Colors.white,borderRadius: BorderRadius.circular(10)
      ),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            DrawerButton(color: Colors.black,),
            Row(
        children: [
           Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: IconButton(onPressed: (){}, icon: SvgPicture.asset("assets/calendar.svg",width: 23,height: 23,)),
                          ),
                           Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: IconButton(onPressed: (){}, icon: SvgPicture.asset("assets/ring.svg",width: 23,height: 23,)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 15,left: 15),
                            child: CircleAvatar(radius: 25, backgroundImage:AssetImage("assets/man.jpeg"),),
                          ),
        ],
            )
          ],
        ),
      ),
    ),));
  }
}