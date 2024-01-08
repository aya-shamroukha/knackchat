import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SearchTextField extends StatelessWidget {
   SearchTextField({
    super.key,
  });
TextEditingController searchcontroller =TextEditingController();
bool isNotEmpty=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: const LinearGradient(colors: [Colors.green,Colors.orange])
          ),
        child: Container(
          decoration: BoxDecoration( borderRadius: BorderRadius.circular(20),color: const Color.fromARGB(255, 241, 240, 240),),
          
          margin: const EdgeInsets.all(2),
          child: StatefulBuilder(
            builder: (context,setstate){
              return TextField(
                onChanged: (value){
                    if(searchcontroller.text.isEmpty){
                      setstate((){
                        isNotEmpty=true;
                      });
                    }else{
                       setstate((){
                        isNotEmpty=false;
                      });
                    }
                },
              controller: searchcontroller,
              cursorColor: Colors.grey,
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search,color:  Colors.green,),
                hintText: 'Search:',
                suffixIcon: isNotEmpty?const Icon(Icons.cancel,color: Color.fromARGB(255, 241, 240, 240)): IconButton(
                  onPressed: (){
                   searchcontroller.clear(); 
                  },
                 icon: const Icon(Icons.cancel,color: Colors.grey,)),                
                fillColor: Colors.grey,
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color:Colors.grey.withOpacity(0.9) ),
                    borderRadius: BorderRadius.circular(20)),
                    
                enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.grey.withOpacity(0.4)),
                    borderRadius: BorderRadius.circular(20)),
              ),
            );
            },
           
          ),
        ),
      ),
    );
  }
}
