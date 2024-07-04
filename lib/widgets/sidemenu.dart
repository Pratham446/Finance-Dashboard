
import 'package:fdashboard/Style/Colors.dart';
import 'package:fdashboard/widgets/endmenu.dart';
import 'package:fdashboard/widgets/middlemenu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Drawerr extends StatelessWidget {
  const Drawerr({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0),
      child: Container(     color: AppColors.secondaryBg,             
      
        child: Row(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
      
            
      
      
      
      
      
      
      
      
      
      
      
      
        Expanded(
                flex: 1,
                child: Container(color: AppColors.secondaryBg.withOpacity(0.5),
      child: Column(
        children: [ SizedBox(
                    width: 35,
                    height: 20,
                    child: SvgPicture.asset('assets/mac-action.svg'),
                  ),
      IconButton(
                  iconSize: 20,
                  padding: EdgeInsets.symmetric(vertical: 20.0),
                  icon: SvgPicture.asset(width: 20,height:20,
                    'assets/home.svg',
                  ),color: AppColors.iconGray,
                  onPressed: () {}),
              IconButton(
                  iconSize: 20,
                  padding: EdgeInsets.symmetric(vertical: 20.0),
                  icon: SvgPicture.asset(width: 20,height:20,
                    'assets/pie-chart.svg',
                  ),color: AppColors.iconGray,
                  onPressed: () {}),
              IconButton(
                  iconSize: 20,
                  padding: EdgeInsets.symmetric(vertical: 20.0),
                  icon: SvgPicture.asset(width: 20,height:20,
                    'assets/clipboard.svg',
                  ),color: AppColors.iconGray,
                  onPressed: () {}),
              IconButton(
                  iconSize: 20,
                  padding: EdgeInsets.symmetric(vertical: 20.0),
                  icon: SvgPicture.asset(width: 20,height:20,
                    'assets/credit-card.svg',
                  ),color: AppColors.iconGray,
                  onPressed: () {}),
              IconButton(
                  iconSize: 20,
                  padding: EdgeInsets.symmetric(vertical: 20.0),
                  icon: SvgPicture.asset(width: 20,height:20,
                    'assets/trophy.svg',
                  ),color: AppColors.iconGray,
                  onPressed: () {}),
              IconButton(
                  iconSize: 20,
                  padding: EdgeInsets.symmetric(vertical: 20.0),
                  icon: SvgPicture.asset(width: 20,height:20,
                    'assets/invoice.svg',
                  ),color: AppColors.iconGray,
                  onPressed: () {}),
        ],
      ),                )),
            middlemenu(),
            endmenu()
          ],
        ),
      ),
    );
  }
}