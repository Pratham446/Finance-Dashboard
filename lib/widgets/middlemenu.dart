import 'package:fdashboard/widgets/chart.dart';
import 'package:flutter/material.dart';
import 'package:fdashboard/Style/Colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

const transactionHistory = [
  {
    "avatar": 'assets/new.png',
    "label": 'Car Insurance',
    "amount": "\$350",
    "time": "10:42:23 AM",
    "status": "Completed",
  },
  {    "avatar": 'assets/first.png',

    "label": 'Loan',
    "amount": "\$350",
    "time": "12:42:00 PM",
    "status": "Completed",
  },
  {    "avatar": 'assets/third.png',

    "label": 'Online Payment',
    "amount": "\$154",
    "time": "10:42:23 PM",
    "status": "Completed",
  },
];
List img=[
'assets/credit-card.svg',
'assets/transfer.svg',
'assets/bank.svg',
'assets/document.svg',

];
List first=[
'Transfer via',
'Transfer ',
'Transfer via',
'Transfer to',
];
List second=[
'Card Number',
'Other Bank',
'Same Bank',
'Card Number'

];
List amount=[
'1000',
'25400',
'4500',
'10000'

];
class middlemenu extends StatelessWidget {
  const middlemenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 10,
        child: Container(
            color: AppColors.primaryBg,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Dashboard",
                      style:
                          TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Spacer(),
                  Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
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
                      ))
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Dashboard",
                  style: TextStyle(fontSize: 14, color: AppColors.iconGray),
                ),
              ),
          
          
            GridView.builder(shrinkWrap: true, gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4, childAspectRatio: 1.6,),itemCount: 4, itemBuilder: (context,index){
              return Padding(
                padding: const EdgeInsets.all(20.0),
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
                                   Expanded(child: BarChartComponent()),
                                   SizedBox(height: 15,),

Table(
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
)                                 
 ])));
  }
}
