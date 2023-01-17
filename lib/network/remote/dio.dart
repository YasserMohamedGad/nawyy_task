import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

class dioHelper{

  static Dio? dio;

  static init(){

    dio=Dio(
      BaseOptions(
        baseUrl: 'https://webapi-test.cooingestate.com/',
        receiveDataWhenStatusError: true,
        headers: {

        } ,
      ),
    );
  }

  static Future<Response> getdata({
    @required String? url,
    @required Map<String,dynamic> ?query,
  })
  async{
    return await dio!.get(url!,queryParameters: query,

    );
  }


  static Future<Response> postdata({
    @required String? url,
    Map<String,dynamic> ?query,
    required Map<String,dynamic> data,

  })
  async{
    return  dio!.post(url!,data:data,queryParameters: query );

  }








}