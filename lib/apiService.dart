import 'dart:convert';
import 'dart:io';
import 'package:activity_app/activity_model.dart';
import 'package:http/http.dart' as http;



class ApiService{

  Future getActivity () async{
    try{
    final users = Uri.parse("https://www.boredapi.com/api/activity");
    final response = await http.get(users);
    final jsonString = response.body;
    final rawString = json.decode(jsonString);
    final activity = Activity.fromJson(rawString);
    print(activity);
    } on HttpException catch (error){
      print(error);
    } on SocketException catch (error){
      print(error);
    } on FormatException catch (error){
      print(error);
    } on TypeError catch (error){
      print(error);
    }
  }   
}

