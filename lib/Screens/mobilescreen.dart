import 'package:fdashboard/Style/Colors.dart';
import 'package:fdashboard/widgets/chart.dart';
import 'package:fdashboard/widgets/middlemenu.dart';
import 'package:fdashboard/widgets/mobiletop.dart';
import 'package:fdashboard/widgets/sidemenu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Mobilescreen extends StatelessWidget {
  const Mobilescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: AppColors.secondaryBg,
 drawer: FractionallySizedBox(widthFactor: 0.2,
   child: Drawer(
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
                    
                    ])),
   ),
 ),
      
    
      body: SingleChildScrollView(scrollDirection: Axis.vertical,
        child: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.center,
          children: [
       Container(
        color: Colors.amber,
        child: Row(children: [mobiletop()],),
        
       ),
        Container(
        
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("DashBoard",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      Spacer(),
                      Expanded(
                        child: TextField(
                                  decoration: InputDecoration(
                                    filled: true,fillColor: AppColors.white,
                                    prefixIcon: Icon(Icons.search),
                                    hintText: "Search",
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(25),
                                        borderSide: BorderSide(color: Colors.black)),
                                    focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide(color: Colors.white)),
                                  ),
                                ),
                      ),
                    ],
                  ),
        ),),
        Container(
          child: 
            GridView.builder(shrinkWrap: true, gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 0 ,mainAxisSpacing: 0, childAspectRatio: 1.6,),itemCount: 4, itemBuilder: (context,index){
                return Padding(
                  padding: const EdgeInsets.only(top: 10,right: 7 ,left: 7,bottom: 0),
                  child: SingleChildScrollView(
                    child: Container(decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20)),child: Column(
                      children: [
                        SvgPicture.asset(img[index],width: 40,height: 40,),
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Text(first[index]),
                        ),
                                            Padding(
                                              padding: const EdgeInsets.all(3.0),
                                              child: Text(second[index]),
                                            ),
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Text(amount[index],style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold) ,),
                        ),
                    
                    
                      ],
                    ),),
                  ),
              
                );
              }),
        ),
        Container(
          child: 
           Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [                          Text("Balance"),
                      
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                                
                                Text("75,000 INR",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                                                   Text("Past 30 days"),
                                                 ],
                            ),
                          )
                          ,
                        ],
                      ),
                    ),
        ),

       Container(height: 200,
            
            child: BarChartComponent(),
          ),
        
        Container(
          child:  Padding(
                      padding: const EdgeInsets.all(38.0),
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
        ),
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

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Table(
            children: List.generate(transactionHistory.length, (index)=>TableRow(
              children:[
                Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(child: CircleAvatar(backgroundImage:AssetImage(transactionHistory[index]['avatar']!,),radius: 25,),),
                ),
                Text(transactionHistory[index]['label']!,style: TextStyle(color: AppColors.iconGray),),
              Text(transactionHistory[index]['time']!,style: TextStyle(color: AppColors.iconGray)),
                Text(transactionHistory[index]['amount']!,style: TextStyle(fontWeight: FontWeight.bold,color: AppColors.iconGray,fontSize: 16),),
                Text(transactionHistory[index]['status']!,style: TextStyle(color: AppColors.iconGray)),
          
              ]
            )),
            ),
        )  ]
       ),
      
      ),
    );
  }
}
