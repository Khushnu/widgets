import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:widgets_/Screens/Model/apimodel.dart';

class ApiScreen extends StatefulWidget {
  const ApiScreen({super.key});

  @override
  State<ApiScreen> createState() => _ApiScreenState();
}

class _ApiScreenState extends State<ApiScreen> {
  final url = 'http://10.0.2.2:3000';
  final dio = Dio();
  ApiModel? apiModel;
List<ApiModel> list = [];
bool isLoading = false;
  getData() async {
    setState(() {
      isLoading = true;
    });
    try {
      final response = await dio.get("$url/api/home");
      if (response.statusCode == 200) {
        var res = jsonDecode(response.data.toString());
        setState(() {
           isLoading = false;
        });
   print(res);
       return list = ApiModel.fromJson(res) as List<ApiModel>;
        
        // for (Map<String, dynamic> i in res) {
        //   ApiModel apiModel = ApiModel(
        //       id: i['id'],
        //       title: i['title'],
        //       author: i['author'],
        //       content: i['content']);

        //   list.add(apiModel);
        // }
        
       
      }
    } catch (e) {
      isLoading = true;
      print(e);
    }
    setState(() {
       isLoading = false;
    });
  }

  putData()async{
    try {
      final response = await dio.post('$url/api/home', data: {
        "title":"Hy", 
        "author":"Waleeed", 
        "content":"Hello World"
      });

    if(response.statusCode == 201){
      final res = jsonDecode(response.data);

      print(res + "Posted ");
    }

    } catch (e) {
      print(e);
      
    }

  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        putData();
      }),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(child: 
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: isLoading ? [Center(child: CircularProgressIndicator(),)]: list.map((e) => Text('data')).toList(),
          )
          )
        ],
      ),
    );
  }
}
