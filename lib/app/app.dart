// import 'package:easy_localization/easy_localization.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:uik/app/app_preferences.dart';
// import 'package:uik/utilities/constant/theme_manger.dart';

// import 'app_state_manager.dart';
// import 'dependency_injection.dart';
// import 'package:provider/provider.dart';

// class MyApp extends StatefulWidget {
//   const MyApp._internal(); // private named constructor
//   static const MyApp instance =
//       MyApp._internal(); // single instance -- singleton

//   factory MyApp() => instance; // factory for the class instance

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   final _appStateManager = AppStateManager();
//   final _appPreferences = instance<AppPreferences>();
//   // late AppRouter appRouter;

//   // @override
//   // void initState() {
//   //   appRouter = AppRouter(
//   //     appStateManager: _appStateManager,
//   //   );
//   //   super.initState();
//   // }

//   @override
//   void didChangeDependencies() {
//     _appPreferences.getLocal().then((local) => {context.setLocale(local)});
//     super.didChangeDependencies();
//   }

//   @override
//   Widget build(BuildContext context) {
//     SystemChrome.setPreferredOrientations([
//       DeviceOrientation.portraitUp,
//       DeviceOrientation.portraitDown,
//     ]);
//     SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
//         statusBarColor: Colors.black,
//         statusBarBrightness: Brightness.dark,
//         statusBarIconBrightness: Brightness.light));
//     return ChangeNotifierProvider(
//       create: (context) => _appStateManager,
//       child: MultiBlocProvider(
//         providers: [
//           // BlocProvider(create: (context) => LoginBloc()),
//           // BlocProvider(create: (context) => SignUpBloc()),
//           // BlocProvider(create: (context) => OtpBloc()),
//           // BlocProvider(create: (context) => ProductBloc()),
//           // BlocProvider(create: (context) => ForgetPasswordBloc()),
//           // BlocProvider(create: (context) => NewPasswordBloc()),
//           // BlocProvider(create: (context) => PopularProductsBloc()..add(GetPopularProductsEvent())),
//           // BlocProvider(create: (context) => RecommendedStoresBloc()..add(GetRecommendedStoresEvent())),
//         ],
//         child: Consumer<AppStateManager>(
//           builder: (context, appStateManager, child) {
//             return ScreenUtilInit(
//               designSize: const Size(375, 812),
//               minTextAdapt: true,
//               splitScreenMode: true,
//               builder: (context, child) {
//                 return MaterialApp(
//                     localizationsDelegates: context.localizationDelegates,
//                     supportedLocales: context.supportedLocales,
//                     locale: context.locale,
//                     debugShowCheckedModeBanner: false,
//                     theme: getApplicationLightTheme(),
//                     home: child);
//               },
//               child: Provider<ApiService>(
//                 create: (BuildContext context) => ApiService.create(),
//                 dispose: (_, ApiService service) => service.client.dispose(),
//                 child: Router(
//                   backButtonDispatcher: RootBackButtonDispatcher(),
//                   routerDelegate: appRouter,
//                 ),
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
