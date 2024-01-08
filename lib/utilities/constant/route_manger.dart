import 'package:go_router/go_router.dart';
import 'package:uik/presentation/pages/bottom_navigation_main_screen.dart';
import 'package:uik/presentation/pages/loading.dart';
import 'package:uik/presentation/pages/login.dart';
import 'package:uik/presentation/pages/onboarding.dart';
import 'package:uik/presentation/pages/quiz_in_subject.dart';
import 'package:uik/presentation/pages/rr.dart';
import 'package:uik/presentation/pages/search.dart';
import 'package:uik/presentation/pages/section.dart';
import 'package:uik/presentation/pages/signup.dart';
import 'package:uik/presentation/pages/teacher.dart';
import 'package:uik/presentation/pages/teacher_profile.dart';
import '../../presentation/widgets/curve_navbar.dart';

class Routes{
  String onBoarding ='/o';
  String signUp='/SignUp';
  String section='/Section';
    String loading='/Loading';
    String bottom='/BottomNavigationBarr';
      String teacher='/Teacher';
      String search='/Search';
      String login='/Login';
      String quizInSubject='/QuizInSubject';

      String bottomNavBar='/';
            String teacherProfile='/TeacherProfile';
             String s='/';

}
final GoRouter router = GoRouter(routes: <GoRoute>[
    GoRoute(
      routes: const <GoRoute>[],
      path: Routes().onBoarding,
      builder: (context, state) => const OnBoarding(),
    ),
    GoRoute(
      routes: const <GoRoute>[],
      path: Routes().bottomNavBar,
      builder: (context, state) => const BottomNavBar(),
    ),
     GoRoute(
      routes: const <GoRoute>[],
      path: Routes().search,
      builder: (context, state) =>  Search(),
    ),
    GoRoute(
      routes: const <GoRoute>[],
      path: Routes().s,
      builder: (context, state) =>  S(),
    ),
    GoRoute(
      routes: const <GoRoute>[],
      path: Routes().login,
      builder: (context, state) =>  Login(),
    ),
    GoRoute(
      routes: const <GoRoute>[],
      path: Routes().quizInSubject,
      builder: (context, state) =>  QuizInSubject(),
    ),
     GoRoute(
      routes: const <GoRoute>[],
      path: Routes().teacherProfile,
      builder: (context, state) => const TeacherProfile(),
    ),
   
    GoRoute(
      routes: const <GoRoute>[],
      path: Routes().section,
      builder: (context, state) => const Section(),
    ),
    GoRoute(
      routes: const <GoRoute>[],
      path: Routes().teacher,
      builder: (context, state) => const Teacher(),
    ),
     GoRoute(
      routes: const <GoRoute>[],
      path: Routes().loading,
      builder: (context, state) => const Loading(),
    ),
    GoRoute(
      routes: const <GoRoute>[],
      path: Routes().signUp,
      builder: (context, state) => SignUp(),
    ),
     GoRoute(
      routes: const <GoRoute>[],
      path: Routes().bottom,
      builder: (context, state) => const BottomNavigationBarr(),
    ),
  ]);