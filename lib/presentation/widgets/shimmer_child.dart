import 'package:flutter/material.dart';
import 'package:uik/presentation/widgets/mysizedbox.dart';

class ShimmerBodyForTeacher extends StatelessWidget {
  const ShimmerBodyForTeacher({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
       mainAxisAlignment: MainAxisAlignment.spaceBetween,
       //crossAxisAlignment: CrossAxisAlignment.,
       children: [
       Container(
         height: 80,
         width: 80,
         decoration: BoxDecoration(color: Colors.grey,borderRadius: BorderRadius.circular(100)),
       ),
                         //const  SizedBox_width(width: 20,),
       Expanded(child: Column(children: [
         Container(height: 20,width: 240,
         decoration:  BoxDecoration(color: Colors.grey,borderRadius: BorderRadius.circular(4)),),
            const  SizedBox_Height(height: 8,),
          Container(height: 20,width: 240,
         decoration:  BoxDecoration(color: Colors.grey,borderRadius: BorderRadius.circular(4)),),
                                          const  SizedBox_Height(height: 8,),

          Container(height: 20,width: 240,
         decoration:  BoxDecoration(color: Colors.grey,borderRadius: BorderRadius.circular(4)),),
        
       ],))
                              ],),
    );
  }
}
class ShimmerBodyForHomePage extends StatelessWidget {
  const ShimmerBodyForHomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
       height: 200,
           width: 150,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child:  Container(
           height: 30,
           width: 80,
           decoration: BoxDecoration(color: Colors.grey,borderRadius: BorderRadius.circular(20)),
         ),
      ),
    );
  }
}
class ShimmerBodyForQuiz extends StatelessWidget {
  const ShimmerBodyForQuiz({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
       height: 150,
           width: 150,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child:  Row(
          children: [
            Container(
               height: 150,
               width: 150,
               decoration: BoxDecoration(color: Colors.grey,borderRadius: BorderRadius.circular(20)),
             ),
              Expanded(child: Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Column(children: [
                       Container(height: 20,width: 150,
                       decoration:  BoxDecoration(color: Colors.grey,borderRadius: BorderRadius.circular(4)),),
                          const  SizedBox_Height(height: 8,),
                        Container(height: 20,width: 150,
                       decoration:  BoxDecoration(color: Colors.grey,borderRadius: BorderRadius.circular(4)),),
                                            const  SizedBox_Height(height: 8,),
              
                      
                      
                     ],),
              ))
          ],
        ),
      ),
    );
  }
}
class ShimmerBodyForSubject extends StatelessWidget {
  const ShimmerBodyForSubject({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
       height: 200,
           width: double.maxFinite,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child:  Container(
           height: 200,
           width: 150,
           decoration: BoxDecoration(color: Colors.grey,borderRadius: BorderRadius.circular(20)),
         ),
      ),
    );
  }
}
class ShimmerBodyForAbout extends StatelessWidget {
  const ShimmerBodyForAbout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
       height: 50,
           width: 300,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child:  Container(height: 20,width: 300,
               decoration:  BoxDecoration(color: Colors.grey,borderRadius: BorderRadius.circular(4)),),
      ),
    );
  }
}
class ShimmerBodyForCollecation extends StatelessWidget {
  const ShimmerBodyForCollecation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
       height: 500,
           width: 200,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child:  Expanded(child:GridView.builder(gridDelegate: 
        SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, mainAxisSpacing: 4, crossAxisSpacing: 4),
            scrollDirection: Axis.vertical,
            itemCount: 4,
         itemBuilder:  (context, index){
  return  Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      width: 200,height: 200,
                   decoration:  BoxDecoration(color: Colors.grey,borderRadius: BorderRadius.circular(20))
                  
                ),
  );
        }
      )
              ),
      ),
    );
  }
}
