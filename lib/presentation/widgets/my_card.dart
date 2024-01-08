// ignore_for_file: prefer_const_constructors_in_immutables, sort_child_properties_last

import 'package:flutter/material.dart';


// ignore: must_be_immutable
class MyInkwellCard extends StatelessWidget {
   dynamic image1;
  final Widget row1;
  final Widget row2;
  final dynamic ontap;
  MyInkwellCard(
      {super.key,
required this.image1,
      required this.row1,
      required this.row2,
      this.ontap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(20),
      onTap: ontap,
      // context
      //     .read<QuizBloc>()
      //     .add(Ans(is_correct: state.question[0].answers[0].iscorrect));

      child: Stack(children: [
        SizedBox(
          width: 150,
          height: 200,
          child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            elevation: 7,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: 
                 image1,
              
              
            ),
          ),
        ),
        Positioned(
          child: row1,
          bottom: 4,
          left: 13,
        ),
        Positioned(
          child: row2,
          top: 3.7,
          right: 3.5,
        ),
      ]),
    );
  }
}