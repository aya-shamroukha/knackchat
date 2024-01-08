import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shimmer/shimmer.dart';
import 'package:uik/data/localStorge/localstorge.dart';
import 'package:uik/data/service/teacher_services.dart';
import 'package:uik/presentation/bloc/show_teacher/showteacher_bloc.dart';
import 'package:uik/presentation/widgets/mysizedbox.dart';
import 'package:uik/presentation/widgets/shimmer_child.dart';
import 'package:uik/utilities/constant/colors.dart';

class AboutTeacher extends StatelessWidget {
  const AboutTeacher({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ShowteacherBloc(TeacherImpl())
        ..add(GetShowTeacher(id: getIt.get<SharedPreferences>().getInt('id'))),
      child: Builder(builder: (context) {
        return Scaffold(
          body: BlocBuilder<ShowteacherBloc, ShowteacherState>(
            builder: (context, state) {
              if(state is SuccessShowTeacher){
 return Padding(
   padding: const EdgeInsets.all(20.0),
   child: Column(
 
                  children: [
                     Row(
                      children: [
                         Icon(Icons.phone,color: primary,),
                        const SizedBox_width(width: 8,),
                         Text(
                         'phone number: ',
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500,color:primary),
                        ),
                         Text( state.showteacher.user.phone,
                      style: const TextStyle(fontSize: 20 ),
                    ),
                      ],
                    ),
                    const SizedBox_Height(height: 8,),
                    Row(
                        children: [
                           Icon(Icons.person,color: primary,),
                          const SizedBox_width(width: 5,),
                           Text(
                           ' User name: ',
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500,color:primary),
                          ),
                           Text( state.showteacher.user.user_tag,
                        style: const TextStyle(fontSize: 20 ),
                      ),
                        ],
                      ),
                      const SizedBox_Height(height: 8,),
                    Row(
                        children: [
                           Icon(Icons.work_rounded,color: primary,),
                          const SizedBox_width(width: 5,),
                           Text(
                           ' Speciality: ',
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500,color:primary),
                          ),
                           Text( state.showteacher.about,
                        style: const TextStyle(fontSize: 20 ),
                      ),
                        ],
                      ),
                      const SizedBox_Height(height: 8,),
                   
                   
                  ],
                ),
 );
              }else{
                return SizedBox(
                  height: 500,
                  child: Expanded(
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: 10,
                        itemBuilder: ((context, index) {
                          return Shimmer.fromColors(
                            baseColor: Colors.grey.shade300,
                            highlightColor: Colors.grey.shade100,
                            child: const ShimmerBodyForAbout(),
                          );
                        })),
                  ));
              }
             
            },
          ),
        );
      }),
    );
  }
}
