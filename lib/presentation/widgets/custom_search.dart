// ignore_for_file: body_might_complete_normally_nullable

import 'package:flutter/material.dart';
import 'package:uik/utilities/constant/colors.dart';
import 'package:uik/utilities/constant/images.dart';
import 'package:uik/domain/models/teacher_model/search_for_teacher.dart';

class CoustomSearch extends SearchDelegate{
  List ?filter;
    late List<SearchTeacherModel> search;
  @override
  List<Widget>? buildActions(BuildContext context) {
  return[
    IconButton(icon:const Icon(Icons.close),
    onPressed: (){
      query='';
    },)
  ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
return
    IconButton(icon:const Icon(Icons.arrow_back),
    onPressed: (){
       close(context, null);
    },)
  ;
  }

  @override
  Widget buildResults(BuildContext context) {
         return const Text('');
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    if(query==''){ 
      return Scaffold(backgroundColor: wHite,body: Center(child: Image.asset(searchImage)));
}else{
  //filter=search.where((element) => element.u.contains(query)).toList();
  return  Expanded(child: ListView.builder(
    itemCount: search.length,
    itemBuilder: (context,index){


    }
    
    )
  
  
  
  
  
  
  
  
  );
}
  }

}