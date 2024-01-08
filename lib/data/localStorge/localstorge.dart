import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';


final getIt = GetIt.instance;

initgetit() async {
  final SharedPreferences sharedPreferences =
      await SharedPreferences.getInstance();

  getIt.registerLazySingleton<SharedPreferences>(() => sharedPreferences);
}






class SharedPreferencesUtil{
  final SharedPreferences sharedPreferences;

  SharedPreferencesUtil({required this.sharedPreferences});

 static String namekey='aya';
 String getName(){
  return  sharedPreferences.getString(namekey)??'';
  
 }
 Future<bool>setName(String name)async{
  return sharedPreferences.setString(namekey, name);
 }
}
