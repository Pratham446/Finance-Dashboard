
import 'package:fdashboard/Style/Colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class endmenu extends StatelessWidget {
  const endmenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Expanded(
          flex: 4,
          child: Container(
            color: AppColors.secondaryBg,
            child: SingleChildScrollView(
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(mainAxisAlignment: MainAxisAlignment.end,
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
                    
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: Container(decoration: BoxDecoration(
                    boxShadow: [
                    BoxShadow(blurRadius: 15,
                      color: AppColors.iconGray,
                      offset: Offset(10.0, 15.0)
                    )  ]),
                    child: Image(image: AssetImage("assets/card.png",),),
                      ),
                    )
                    ,
                    Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                    
                    Padding(
                      padding: const EdgeInsets.only(top: 8,left: 12,bottom: 3),
                      child: Text("Recent Activities",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 1,left: 12,),
                      child: Text("02 March 2024",style: TextStyle(fontSize: 14),),
                    ),
                      ],
                    ),
                    
                    
                    SizedBox(height: 15),
                    
                    ListTile(title: Text("Water Bill",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                    subtitle: Text("Successfully"),
                    trailing: Text("1000 RS",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black)),leading:SvgPicture.asset("assets/drop.svg",width: 20,height: 20) ,),
                    
                    
                    
                    ListTile(title: Text("Income Salary",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),subtitle: Text("Recieve"),trailing: Text("5000 RS",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black),),leading:SvgPicture.asset("assets/salary.svg",width: 20,height: 20,) ),
                    ListTile(title: Text("Electricity Bill",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),subtitle: Text("Successfully"),trailing: Text("2500 RS",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black),),leading:SvgPicture.asset("assets/electricity.svg",width: 20,height: 20,) ),
                    ListTile(title: Text("Internet Bill",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),subtitle: Text("Recieve"),trailing: Text("500 RS",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black),),leading:SvgPicture.asset("assets/wifi.svg",width: 20,height: 20,) )
                   
                   , Padding(
                     padding: const EdgeInsets.only(top: 5,left: 9),
                     child: Text("Upcoming Payments",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                   ),
                    Padding(
                     padding: const EdgeInsets.only(left: 9, top: 5),
                     child: Text("30 May 2024",style: TextStyle(fontSize: 14,),),
                   ),

                                       ListTile(title: Text("Home Rent",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),subtitle: Text("Pending"),trailing: Text("10000 RS",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black),),leading:SvgPicture.asset("assets/home.svg",width: 20,height: 20,) ),
                    ListTile(title: Text("Car Insurance",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),subtitle: Text("Pending"),trailing: Text("12000 RS",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black),),leading:SvgPicture.asset("assets/trophy.svg",width: 20,height: 20,) ),

                ],
              ),
            ),
          )
    );
  }
}