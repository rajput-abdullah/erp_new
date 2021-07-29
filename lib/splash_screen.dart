import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'login.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 2500), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Login()),
      );

      // navigateUser(); //It will redirect  after 3 seconds

    });

  }

  // void navigateUser() async{
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   var status = prefs.getBool('isLoggedIn') ?? false;
  //   print(status);
  //   if (status) {
  //     screenNavigation(context, HomeScreen(false));
  //   } else {
  //      screenNavigation(context, SplashScreen());
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        color: Colors.blue[800],
        // decoration: BoxDecoration(
        //   gradient: LinearGradient(
        //     begin: Alignment.topRight,
        //     end: Alignment.bottomLeft,
        //   ),
        // ),
        child: Center(
          child: Image.asset("assets/control.png",fit: BoxFit.fill,
          ) ,
        ),
      ),
    );
  }

}
