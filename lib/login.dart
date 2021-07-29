import 'dart:convert';
import 'package:erp/Model/LoginData.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import 'URL.dart';
class Login extends StatefulWidget {

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  List<LoginData> loginDataList = [];

  // Location location = Location();
  //
  // bool _serviceEnabled;
  // PermissionStatus _permissionGranted;
  // LocationData _locationData;
  @override
      Widget build(BuildContext context) {
        return Scaffold(
          body: Container(
            width: double.maxFinite,
            height: double.maxFinite,
            child: Column
              (
              children: [
                Expanded(child: halfScreen()),
                Expanded(child: secondHalfScreen()),

              ],
            ),
          ),
        );
      }
      Widget halfScreen()
      {
        return Container(
          width: double.maxFinite,

          decoration: BoxDecoration(
            borderRadius: new BorderRadius.only(
            bottomLeft: const Radius.circular(30.0),
            bottomRight: const Radius.circular(30.0),
          ),
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomRight,
                  stops: [0.5, 1],
                  colors: [const Color(0xff0045a4 ), const Color(0xff5592e6)])),

          child: Stack(
            fit: StackFit.expand,
            children: [
               Center(child: Image.asset("assets/control.png",fit: BoxFit.fill,)),
              Align(alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                            margin: EdgeInsets.only(left: 15, right: 15, bottom: 5),
                            child: Image.asset("assets/client.png",fit: BoxFit.fill, height: 50,width: 50,)),
                        Text('CLIENT', style: TextStyle(color: Colors.white, fontSize: 11),textAlign: TextAlign.center)
                        ,SizedBox(height: 20,)

                      ],
                    ),

                    Column(              mainAxisAlignment: MainAxisAlignment.end,

                      children: [
                        Container(                      margin: EdgeInsets.only(left: 15, right: 15, bottom: 5),

                            child: Image.asset("assets/staff.png",fit: BoxFit.fill,height: 50,width: 50,)),
                        Text('STAFF', style: TextStyle(color: Colors.white, fontSize: 11),textAlign: TextAlign.center)
                        ,SizedBox(height: 20,)

                      ],
                    ),

                    Column( mainAxisAlignment: MainAxisAlignment.end,

                      children: [
                        Container(                     margin: EdgeInsets.only(left: 15, right: 15, bottom: 5),



                            child: Image.asset("assets/supervisor.png",fit: BoxFit.fill,height: 50,width: 50,)),
                        Text('SUPERVISOR', style: TextStyle(color: Colors.white, fontSize: 11),textAlign: TextAlign.center)
                        ,SizedBox(height: 20,)

                      ],
                    ),

                    Column(              mainAxisAlignment: MainAxisAlignment.end,

                      children: [
                        Container(                                     margin: EdgeInsets.only(left: 15, right: 15, bottom: 5),



                            child: Image.asset("assets/manager.png",fit: BoxFit.fill,height: 50,width: 50,)
                        ),
                        Text('MANAGER', style: TextStyle(color: Colors.white, fontSize: 11),textAlign: TextAlign.center)
                        ,SizedBox(height: 20,)
                      ],
                    ),

                  ],
                ),
              ),
            ],
          ),
        );
      }

  // Future<Position> _determinePosition() async {
  //   bool serviceEnabled;
  //   LocationPermission permission;
  //
  //   // Test if location services are enabled.
  //   serviceEnabled = await Geolocator.isLocationServiceEnabled();
  //   if (!serviceEnabled) {
  //     // Location services are not enabled don't continue
  //     // accessing the position and request users of the
  //     // App to enable the location services.
  //     return Future.error('Location services are disabled.');
  //   }
  //
  //   permission = await Geolocator.checkPermission();
  //   if (permission == LocationPermission.denied) {
  //     permission = await Geolocator.requestPermission();
  //     if (permission == LocationPermission.denied) {
  //       // Permissions are denied, next time you could try
  //       // requesting permissions again (this is also where
  //       // Android's shouldShowRequestPermissionRationale
  //       // returned true. According to Android guidelines
  //       // your App should show an explanatory UI now.
  //       return Future.error('Location permissions are denied');
  //     }
  //   }
  //
  //   if (permission == LocationPermission.deniedForever) {
  //     // Permissions are denied forever, handle appropriately.
  //     return Future.error(
  //         'Location permissions are permanently denied, we cannot request permissions.');
  //   }
  //
  //   // When we reach here, permissions are granted and we can
  //   // continue accessing the position of the device.
  //   return await Geolocator.getCurrentPosition();
  // }

      Widget secondHalfScreen()
      {
        return Container(

          width: double.maxFinite,
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 40,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                child: Theme(
                  data: new ThemeData(
                    primaryColor: Colors.redAccent,
                    primaryColorDark: Colors.red,
                  ),
                  child: new TextField(
                    decoration: new InputDecoration(
                        border: new OutlineInputBorder(
                            borderSide: new BorderSide(color: Colors.blue[800])),
                        enabled: true,
                        enabledBorder: OutlineInputBorder(
                            borderRadius: const BorderRadius.all(
                              const Radius.circular(10.0),
                            ),
                            borderSide:
                            new BorderSide(color: Colors.blue[800])),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: const BorderRadius.all(
                              const Radius.circular(10),
                            ),
                            borderSide:
                            new BorderSide(color: Colors.blue[800])),
                        hintText: 'Enter Your Email',
                        prefixIcon: const Icon(
                          Icons.mail,
                          color: const Color(0xFF1565C0),
                        ),
                        suffixStyle: const TextStyle(color: Colors.green)),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.only(left: 30,right:30,top: 5,),
                child: Theme(
                  data: new ThemeData(
                    primaryColor: Colors.redAccent,
                    primaryColorDark: Colors.red,
                  ),
                  child: new TextField(
                    decoration: new InputDecoration(
                        border: new OutlineInputBorder(
                            borderSide: new BorderSide(color: Colors.blue[800])),
                        enabled: true,
                        enabledBorder: OutlineInputBorder(
                            borderRadius: const BorderRadius.all(
                              const Radius.circular(10.0),
                            ),
                            borderSide:
                            new BorderSide(color: Colors.blue[800])),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: const BorderRadius.all(
                              const Radius.circular(10),
                            ),
                            borderSide:
                            new BorderSide(color: Colors.blue[800])),
                        hintText: 'Enter Your Password',
                        prefixIcon: const Icon(
                          Icons.lock,
                          color: const Color(0xFF1565C0),
                        ),
                        suffixStyle: const TextStyle(color: Colors.green)),
                  ),
                ),
              ),
              Align(
                  alignment: Alignment.topRight,
                  child: Container(
                      margin: EdgeInsets.only(right: 25),
                      child: TextButton(onPressed: () {  },
                      child: Text('Forgot Password', style: TextStyle(color: Colors.blue[800]),),))),
              SizedBox(height: 20,),
              Container(
                height: 45,
                margin: EdgeInsets.only(left: 35, right: 35),
                child: MaterialButton(
                  onPressed: () {
                    login();
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  disabledColor: Colors.blue[800],
                  disabledTextColor: Colors.white,
                  highlightColor: Colors.blue[800],
                  color: Colors.blue[800],
                  elevation: 4.0,
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 100, vertical: 7),
                      child: Text(
                        'Login',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      }
      showLoaderDialog(BuildContext context) {
        AlertDialog alert = AlertDialog(
          content: new Row(
            children: [
              CircularProgressIndicator(),
              Container(
                  margin: EdgeInsets.only(left: 7), child: Text("Logging In...")),
            ],
          ),
        );
        showDialog(
          barrierDismissible: false,
          context: context,
          builder: (BuildContext context) {
            return alert;
          },
        );
      }

     Future<List<LoginData>> login() async {
        showLoaderDialog(context);

        // http.Response response = await http.get(Uri.parse("http://g6ca9akmpg3fs7evmg.dyn-o-saur.com:8078/event/request/token?db=elite_event_management_v1&login=mflutter@comp.com&password=nsEhuMKusEhu"));
        // http.Response response = await http.get(Uri.parse("http://s4e.techkumak.pk/api/users"));
        http.Response response = await http.get(Uri.parse(URL.TOKEN+"?db=${URL.DB}&login=mflutter@comp.com&password=nsEhuMKusEhu"));
        print(response);
        var jsonResponse = json.decode(response.body);
        var data  = jsonResponse["data"];
        LoginData loginData = LoginData.fromJson(data);
        loginDataList.add(loginData);
        print(loginData.token);
        int status = jsonResponse['success'];
        SharedPreferences sharedUser = await SharedPreferences.getInstance();

        if (status==1) {
          sharedUser?.setBool("isLoggedIn", true);
          // signInStatus = true;
        } else{
          print(status);
          Navigator.pop(context);
          // Navigator.push(context, MaterialPageRoute(builder: (context)=>Login(signInStatus: false)));
          Fluttertoast.showToast(msg: "Invalid Password Or Username!!");
        }
        return loginDataList;

      }

}
