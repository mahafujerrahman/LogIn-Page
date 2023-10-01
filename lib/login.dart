import 'signup.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() =>_LoginPage ();
}
class _LoginPage extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            SizedBox(height: 20),
            Image.asset("images/123.png",width: 150,),
            SizedBox(height: 10),
            Text("Welcome Back!",
              style: TextStyle(
                  fontSize: 40,fontWeight: FontWeight.bold),
            ),
            Text("Log in your account",
              style: TextStyle(
                  color: Colors.grey
              ),),

            SizedBox(height: 20,),
            TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  labelText: "Email",
                  prefixIcon: Icon(
                      Icons.email)
              ),

            ),
            SizedBox(height: 20,),
            TextFormField(decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),

              ),prefixIcon: Icon(Icons.lock),
              labelText: "Password",
            ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shadowColor: Colors.red,
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32.0)),
                minimumSize: Size(700, 40),),
              onPressed: () {},
              child: Text('Log In'),),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account ?",
                  style: TextStyle(
                      color: Colors.grey),),
                TextButton(onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  SignupPage()),
                  );},
                    child: Text("Sign Up",style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),))
              ],
            )
          ],
        ),

      ),
    );
  }
}