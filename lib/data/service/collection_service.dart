// ignore_for_file: avoid_print

import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uik/data/localStorge/localstorge.dart';

abstract class CollectionService {
  showIndexCollection();
  indexCollection();
  addCollection();
  updateCollection();
  deleteCollection();
  toggleFavoriteCollection();
  takeCollection();
  addQizzesToCollection();
  indexTeacherCollection(int id);
  getTopCollection();
}

class CollectionServiceImplement extends CollectionService {
  @override
  addCollection()async {
   }

  @override
  addQizzesToCollection() {
    throw UnimplementedError();
  }

  @override
  deleteCollection() {
    throw UnimplementedError();
  }

  @override
  getTopCollection() async {
    Dio dio = Dio();
    Response response = await dio.get("https://testknackchat.000webhostapp.com/api/collection/top-subject/1");
    print(response);
    if (response.statusCode == 200) {
      return response.data;
    } else {
      return "error";
    }
  }

  @override
  indexTeacherCollection(id) async{
   Dio dio=Dio();
   Response response=await dio.get('https://testknackchat.000webhostapp.com/api/collection/teacher/${id}',
   options: Options(headers: {  "Authorization":"Bearer ${getIt.get<SharedPreferences>().getString('access_token')}"})
   );
   
   if( response.statusCode==200){
    return response.data;
  }
  }

  @override
indexCollection() async {
       Dio dio=Dio();
   Response response=await dio.get('https://testknackchat.000webhostapp.com/api/collection');
   
   if( response.statusCode==200){
    return response.data;
  }
  }

  @override
  showIndexCollection() async {
       Dio dio = Dio();
    Response response = await dio.get("/collection/5");
    if (response.statusCode == 200) {
      return response.data;
    } else {
      return "error";
    }
  }

  @override
  takeCollection() {

  }

  @override
  toggleFavoriteCollection() {

  }

  @override
  updateCollection() {

  }
}
