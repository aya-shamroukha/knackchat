import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shimmer/shimmer.dart';
import 'package:uik/data/localStorge/localstorge.dart';
import 'package:uik/presentation/bloc/index_teacher_collection/index_teacher_collection_bloc.dart';
import 'package:uik/presentation/widgets/shimmer_child.dart';

class TeacherCollection extends StatelessWidget {
  const TeacherCollection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => IndexTeacherCollectionBloc()..add(GetTeacherCollectionEvent(
      id: getIt.get<SharedPreferences>().getInt('id'))),
      child: Builder(builder:  (context){
       
        return  Scaffold(
          body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: BlocBuilder<IndexTeacherCollectionBloc, IndexTeacherCollectionState>(
          builder: (context, state) {
             if(state is SuccessIndexTeacherCollection){
              return  GridView.builder(
                itemCount: state.indexCollection.length,
                itemBuilder: (context, index) {
                  return  Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  color: Colors.yellow,
                ),
                child: Center(
                    child: Text(
                  state.indexCollection[index].collection,
                  style: TextStyle(fontSize: 17),
                )),
              );
                },
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, mainAxisSpacing: 4, crossAxisSpacing: 4),
            scrollDirection: Axis.vertical,
           
          );
        }else{
             return SizedBox(
                  height: 500,
                  child: Expanded(
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: 4,
                        itemBuilder: ((context, index) {
                          return Shimmer.fromColors(
                            baseColor: Colors.grey.shade300,
                            highlightColor: Colors.grey.shade100,
                            child: const ShimmerBodyForCollecation(),
                          );
                        })),
                  ),
                );
          }
           
          }
        
         
        ),
      ));
      })
    );
     
    
  }
}
