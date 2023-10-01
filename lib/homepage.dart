import 'package:login_page/signup.dart';

import 'login.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {

  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('Home Page'),
        backgroundColor: Colors.pink,
        actions: [
          new IconButton( icon: new Icon(Icons.search),
          onPressed: () {},)
        ],


      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Image.asset("images/12.png",width: 200),
            Text("Water Delivery Service",textAlign: TextAlign.left,
              style: TextStyle(
                  color: Colors.pink,
                  fontSize: 40,fontWeight: FontWeight.bold,),
            ),
            Text("Your Trusted H2O Partner: Fast, Fresh, and Convenient Water Delivery Service."
                "We bring the purest hydration to your doorstep, ensuring you're never thirsty again."
                "Join our community of satisfied customers today!",

              style: TextStyle(
                  color: Colors.grey
              ),
            ),
            SizedBox(height: 5),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shadowColor: Colors.red,
                elevation: 10,
                backgroundColor: Colors.pinkAccent,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32.0)),
                minimumSize: Size(700, 40),
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  LoginPage()
                    ));
              },
              child: Text('Go to Log In Page'),
            ),
            SizedBox(height: 5),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shadowColor: Colors.red,
                elevation: 8,
                backgroundColor: Colors.pinkAccent,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32.0)),
                minimumSize: Size(700, 40),
              ),
              onPressed: () {Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  SignupPage()
                  ));},

              child: Text('Go to Sign Up Page'),
            ),
            SizedBox(height:2),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an account ?"
                  ,
                  style: TextStyle(
                      color: Colors.grey
                  ),),
                TextButton(onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  LoginPage()
                      ));

                },
                    child: Text("Log In",
                      style: TextStyle(
                          fontWeight: FontWeight.bold
                      ),)),
              ],
            ),
            Row(children: [
              SizedBox(width: 50),
              new  ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shadowColor: Colors.red,
                  elevation: 10,
                  backgroundColor: Colors.cyan[400],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32.0)),
                  minimumSize: Size(100, 40),
                ),
                onPressed: () {Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  LoginPage()
                    ));},

                child: Text('Go LogIn'),
              ),
              SizedBox(width: 20),
              new  ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shadowColor: Colors.red,
                  elevation: 10,
                  backgroundColor: Colors.cyan[400],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32.0)),
                  minimumSize: Size(100, 40),
                ),
                onPressed: () {Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  SignupPage()
                    ));},

                child: Text('Go SignUp'),
              ),
            ]),
            Row(children: [
              SizedBox(width: 50),
              new  ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shadowColor: Colors.red,
                  elevation: 10,
                  backgroundColor: Colors.cyan[400],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32.0)),
                  minimumSize: Size(100, 40),
                ),
                onPressed: () {Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  LoginPage()
                    ));},

                child: Text('Go Cash'),
              ),
              SizedBox(width: 20),
              new  ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shadowColor: Colors.red,
                  elevation: 10,
                  backgroundColor: Colors.cyan[400],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32.0)),
                  minimumSize: Size(100, 40),
                ),
                onPressed: () {Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  SignupPage()
                    ));},

                child: Text('Go Bill'),
              ),
            ])

          ],
        ),

      ),
    );
  }
}
