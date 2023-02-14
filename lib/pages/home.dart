import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
// import 'package:http/http.dart' as http;

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override

  /*
  void getData() async{
     //Response response=await get("Mere pas link nhi h");
    //print(response.body);    pura api in the form of string print hoga
    //Map data=jsonDecode(response.body);
    //print(data['key']);
  }
   */

  void getData() async{
    Response response=await get(Uri.parse("https://api.openweathermap.org/data/2.5/weather?lat=44.34&lon=10.99&appid=a002b760b02d2e3056f27fd1f24a180b"));
    Map data=jsonDecode(response.body);
    //print(jsonDecode(response.body));
    List weather_data=data['weather'];
    Map weather_main_data=weather_data[0];
    print(weather_data);
    print(weather_main_data);
    //Map temp_data=data['main'];
    //double temp=temp_data['temp'];
    //print(temp);
  }

  /*
  void timer(){
    Future.delayed(Duration(seconds:3),(){
      print("ALARM IS RINGING");
    });
    //print("ALARM IS RINGING");
    print("This is not delayed");
  }
  */
  //String? username;

  //Async:Function start but return some delayed
  //Future.delayed: Function start after some delay
  /*
  void getData() async{
    await Future.delayed(Duration(seconds: 3),(){
        username="Dhruv";
    });
    print("$username");
  }

  void showData() async{
    print("$username");
  }
   */
  
  void initState() {
    // TODO: implement initState
    super.initState();
    //timer();
    getData();
    //showData();
    print("This is init state");
  }
  int counter=1;
  @override
  void setState(VoidCallback fn) {
    // TODO: implement setState
    super.setState(fn);
    print("This is setState");
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print("Widget Destroyed");
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HOME ACTIVITY"),
      ),
      body:
          Column(children: <Widget>[
            FloatingActionButton(
              onPressed: ()=> setState(() {
                counter+=1;
              }),
            ),
            Text("$counter"),
          ],)

    );
  }
}
