import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:uik/presentation/widgets/my_card.dart';
import 'package:uik/utilities/constant/colors.dart';
import 'package:uik/utilities/constant/images.dart';

class S extends StatelessWidget {
  const S({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body:  
         SizedBox(child: 
         SingleChildScrollView(child: 
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: Column(children: [
          Text('Orders',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Color(0xff11B8BE)),),
           TextFormField(
            
              keyboardType: TextInputType.name,
                 
              cursorColor: Colors.grey,
              autovalidateMode: AutovalidateMode.always,
              decoration: InputDecoration(
                suffixIcon: IconButton(onPressed: (){
                  
                  
                }, icon: Icon(Icons.person, color: Color(0xff11B8BE),)),
                fillColor: Color(0xff11B8BE),
          
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff11B8BE)),
                    borderRadius: BorderRadius.circular(12)),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff11B8BE)),
                    borderRadius: BorderRadius.circular(12)),
                border: OutlineInputBorder(borderSide: BorderSide(color:Color(0xff11B8BE))),
             labelText: 'Your Name',
                labelStyle: TextStyle(fontSize: 14, color: Colors.black),
              ),
            ),
            SizedBox(height: 20,),
          TextFormField(
            
              keyboardType: TextInputType.name,
                 
              cursorColor: Colors.grey,
              autovalidateMode: AutovalidateMode.always,
              decoration: InputDecoration(
                suffixIcon: IconButton(onPressed: (){
                  
                  
                }, icon: Icon(Icons.create, color: Color(0xff11B8BE),)),
                fillColor: Color(0xff11B8BE),
          
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff11B8BE)),
                    borderRadius: BorderRadius.circular(12)),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff11B8BE)),
                    borderRadius: BorderRadius.circular(12)),
                border: OutlineInputBorder(borderSide: BorderSide(color:Color(0xff11B8BE))),
             labelText: 'Order Content',
                labelStyle: TextStyle(fontSize: 14, color: Colors.black),
              ),
            ),
         
           ],),
         )
         )
         ,)
    // Column(children: [Container(height: 290,
    //   child: Stack(children: [
    // Container(height: 190,color: black,),
    // Positioned(top: 180,child: CircleAvatar())
    //   ],),
    // ),
    // SizedBox(height: 30,),
    // ListTile(title: Text('data'),),

    // ListTile(title: Text('data'),)
    // ],)
      // child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
      //                         children: [
      //                           Container(
      //                             height: 150,
      //                             width: 150,
      //                             decoration: BoxDecoration(
      //                                             borderRadius: BorderRadius.circular(20),
      //                                             boxShadow: [BoxShadow(
      //                                               blurStyle: BlurStyle.inner,
      //                                               color: primary,blurRadius: 5,offset:Offset(2, 2.7))]),
      //                             child:
      //                              MyInkwellCard(image1:Image.asset("assets/images/math2.jpg") ,row1:Text('quiz') ,
      //                             row2: Container(
      //                               decoration: BoxDecoration(color: primary.withOpacity(0.97),
                                 
      //                               borderRadius: BorderRadius.only(bottomLeft: Radius.circular(12),topRight: Radius.circular(20))
      //                               ),
                                    
      //                               child: Padding(
      //                                 padding: const EdgeInsets.all(4.0),
      //                                 child: Text('about',style: TextStyle(color: wHite),),
      //                               )),)),
      //                             Text('question')
      //                         ],
      //                       ),
    );
  }
}