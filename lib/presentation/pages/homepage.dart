// ignore_for_file: prefer_const_constructors

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:shimmer/shimmer.dart';
import 'package:uik/data/service/collection_service.dart';
import 'package:uik/data/service/quiz_service.dart';
import 'package:uik/presentation/bloc/getmy_profile/get_my_profile_bloc.dart';
import 'package:uik/presentation/bloc/top_quiz_bloc/bloc/top_quiz_bloc.dart';
import 'package:uik/presentation/bloc/topcollection/top_collection_bloc.dart';
import 'package:uik/presentation/pages/my_profile.dart';
import 'package:uik/presentation/widgets/my_card.dart';
import 'package:uik/presentation/widgets/mysizedbox.dart';
import 'package:uik/presentation/widgets/shimmer_child.dart';
import 'package:uik/utilities/constant/colors.dart';
import 'package:uik/utilities/constant/images.dart';
import 'package:uik/utilities/constant/theme_manger.dart';

class HomePage extends StatelessWidget {
   HomePage({super.key});
final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => TopCollectionBloc(CollectionServiceImplement())
            ..add(GetTopCollection()),
        ),
         BlocProvider(
          create: (context) => GetMyProfileBloc()
          
        ),
        BlocProvider(
          create: (context) => TopQuizBloc(QuizImpl())..add(GetTopQuiz()),
        ),
      ],
      child: Builder(builder: (context) {
        return SafeArea(
            child: Scaffold(backgroundColor: themeProvider.currentTheme==ThemeMode.light?wHite:darkBNB,
         key: _scaffoldKey,
           drawer: 
                    Drawer(                    
                          width: 250,elevation: 10,shadowColor: primary,surfaceTintColor: primary,
                        child: MyProfile(),),
                  
          body: Column(
              children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(Icons.menu,color: primary,),
                    onPressed:(){ 
                         _scaffoldKey.currentState?.openDrawer();
                    }
                  ),SizedBox_width(width: 90),
                ],
              ),
              
                Text("welcome".tr(),
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        color: primary)),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "topcollections".tr(),
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 15),
                      ),
                      TextButton(
                        child: Text(
                          "showall".tr(),
                          style: TextStyle(
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w400,
                              color: primary),
                        ),
                        onPressed: () {},
                      )
                    ],
                  ),
                ),
                BlocBuilder<TopCollectionBloc, TopCollectionState>(
                  builder: (context, state) {
                    if (state is SuccessTopCollection) {
                      return Container(
                        height: 150,
                        child: Expanded(
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: state.topcollectionlist.length,
                            itemBuilder: (context, index) {
                              return SizedBox(
                                height: 200,
                                width: 200,
                                child: MyInkwellCard(
                                    image1: Image.asset(firstImage),
                                    row1: Text(
                                        "${state.topcollectionlist[index].collection}"),
                                    row2: Row(
                                      children: [Text('')],
                                    ),
                                   ),
                              );
                              // Text("Rate:${topcollection[index].rate}"),
                              // Text("Tips💡:${topcollection[index].tips}"),
                            },
                          ),
                        ),
                      );
                    } else {
                      return   SizedBox(
                        height: 200,
                        child: Expanded(
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 10,
                              itemBuilder: ((context, index) {
                                return Shimmer.fromColors(
                                  baseColor: Colors.grey.shade300,
                                  highlightColor: Colors.grey.shade100,
                                  child: ShimmerBodyForHomePage(),
                                );
                              })),
                        ),
                      );
                    }
                  },
                ),
                SizedBox(
                  height: 22,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "topquiz".tr(),
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 15),
                      ),
                      TextButton(
                        child: Text(
                          "showall".tr(),
                          style: TextStyle(
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w400,
                              color: primary),
                        ),
                        onPressed: () {},
                      )
                    ],
                  ),
                ),
                BlocBuilder<TopQuizBloc, TopQuizState>(
                  builder: (context, state) {
                    if (state is SuccessState) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 1),
                        child: Container(
                          height: 200,
                          width: double.infinity,
                          child: Expanded(
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                  itemCount: state.topquiz.length,
                                  itemBuilder: (context, index) {
                                 return   Padding(
                                   padding: const EdgeInsets.all(8.0),
                                   child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      boxShadow: [BoxShadow(
                                        blurStyle: BlurStyle.inner,
                                        color: primary,blurRadius: 5,offset:Offset(4, -3))]),
                                        height: 150,
                                        width: 150,
                                        child: MyInkwellCard(
                                            image1: firstImage,
                                            row1: Text(
                                              state.topquiz[index].quiz,
                                              style: TextStyle(color: Colors.black),
                                            ),
                                            row2: Row(
                                              children: [Text('')],
                                            ),
                                            ),
                                      ),
                                 );
                                    // Text(topquiz[index].rate.toString()),
                                  })),
                        ),
                      );
                    } else {
                      return SizedBox(
                        height: 200,
                        child: Expanded(
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 10,
                              itemBuilder: ((context, index) {
                                return Shimmer.fromColors(
                                  baseColor: Colors.grey.shade300,
                                  highlightColor: Colors.grey.shade100,
                                  child: ShimmerBodyForHomePage(),
                                );
                              })),
                        ),
                      );
                    }
                  },
                )
              ]),
        ));
      }),
    );
  }
}

