import 'package:login_page/homepage.dart';

import 'login.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {

  @override
  State<SignupPage> createState() => _SignupPageState();
}
class _SignupPageState extends State<SignupPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            SizedBox(height: 20),
            Image.asset("images/123.png",width: 150,),
            SizedBox(height: 10),
            Text("Please Sign Up!",
              style: TextStyle(
                  color: Colors.pink,
                  fontSize: 40,fontWeight: FontWeight.bold),
            ),
            Text("Create your account",
              style: TextStyle(
                  color: Colors.grey
              ),
            ),
            SizedBox(height: 20),
            TextFormField(

              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  labelText : "User Name",prefixIcon: Icon(
                  Icons.person)
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  labelText: "Email",prefixIcon: Icon(
                  Icons.email)
              ),
            ),
            SizedBox(height:20),
            TextFormField(decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                labelText: "Password",prefixIcon: Icon(
                Icons.lock)
            ),),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shadowColor: Colors.red,
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32.0)),
                minimumSize: Size(700, 40),
              ),
              onPressed: () {

              },

              child: Text('Sign Up'),

            ),
            SizedBox(height: 20),
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
            Column(
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shadowColor: Colors.red,
                    elevation: 10,
                    backgroundColor: Colors.lightGreen,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32.0)),
                    minimumSize: Size(300, 40),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  HomePage()
                        ));
                  },

                  child: Text('Back to Home Page'),
                ),
              ],
            )
          ],
        ),

      ),
    );
  }
}
