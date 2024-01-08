// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_offline/flutter_offline.dart';
import 'package:go_router/go_router.dart';
import 'package:uik/data/service/teacher_services.dart';
import 'package:uik/presentation/bloc/search_teacher/search_teacher_bloc.dart';
import 'package:uik/presentation/pages/loading.dart';
import 'package:uik/utilities/constant/colors.dart';
import 'package:uik/utilities/constant/images.dart';
import 'package:uik/utilities/constant/route_manger.dart';

class Search extends StatelessWidget {
   Search({super.key});
TextEditingController search =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) =>  SearchTeacherBloc(TeacherImpl()),
      child: Builder(
        builder: (context) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: wHite,
              title:TextField(
                onChanged: (value) {
                  context.read<SearchTeacherBloc>().add(SearchEvent(value));
                },
                controller: search,
                cursorColor: Colors.grey,
                decoration: InputDecoration(
                  
                  border: InputBorder.none,
                hintText: 'Search'),
              ) ,
              actions: [
                  IconButton(icon:Icon(Icons.close,color: Colors.grey,),onPressed: (){

                    search.clear();
                  },)
              ],
              leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.grey,),onPressed: (){
              GoRouter.of(context).go(Routes().teacher);
              },),
            ),
            backgroundColor: wHite,
            body:OfflineBuilder(
               connectivityBuilder: (
              BuildContext context,
              ConnectivityResult connectivity,
              Widget child,){

                          final bool connected = connectivity != ConnectivityResult.none;
                       return connected?
                BlocBuilder<SearchTeacherBloc, SearchTeacherState>(
                builder: (context, state) {
                  
                  if(state is SearchTeacherInitial){
                     return Center(child: Image.asset(searchImage),);
                  }
                 else if(state is SuccessSearch){
                //  List<SearchTeacherModel> searchsuccess=state.searchteacher;
                  if(search.text.isEmpty&&search.text.length==0){
                           return Center(child: Image.asset(searchImage),);
                        }else{
                            return ListView.separated(
                              separatorBuilder: (context, index) {
                                return Divider();
                              },
                      itemCount:state.searchteacher.length ,
                      itemBuilder: (context,index){
                             return ListTile(
                              subtitle:  Text(state.searchteacher[index].user.phone),
                title: Text('${state.searchteacher[index].user.first_name} ${state.searchteacher[index].user.middle_name} ${state.searchteacher[index].user.last_name}'),
               
              );
                        
           
                    });
                        }
                  
            
            
                 }
                 else if(state is NotFoundState){
                        return Center(child: state.notfound,);
                 }else{
                  return CircularProgressIndicator();
                 }
                },
              ):Loading();
              
             
            },
           child: Text(''),
            )
          );
        }
      ),
          
        );
         
    
  }
}