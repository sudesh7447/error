import 'package:chat_app/signup.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'signup.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({Key? key}) : super(key: key);

  @override
  _LoginpageState createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: w,
              height: h * (0.3),
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("Img/loginimg.png"), fit: BoxFit.cover),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20, top: 25),
              width: w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hello',
                    style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Sign in into your account',
                    style: TextStyle(fontSize: 20, color: Colors.grey[500]),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    // decoration: BoxDecoration(
                    //     color: Colors.white,
                    //     borderRadius: BorderRadius.circular(30),
                    //     boxShadow: [
                    //       BoxShadow(
                    //           blurRadius: 10,
                    //           offset: Offset(1, 1),
                    //           color: Colors.grey.withOpacity(0.5))
                    //     ]),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: 'Enter email',
                          prefixIcon: Icon(
                            Icons.email,
                            color: Colors.deepOrangeAccent,
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30))),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    // decoration: BoxDecoration(
                    //     color: Colors.white,
                    //     borderRadius: BorderRadius.circular(30),
                    //     boxShadow: [
                    //       BoxShadow(
                    //           blurRadius: 10,
                    //           offset: Offset(1, 1),
                    //           color: Colors.grey.withOpacity(0.5))
                    //     ]),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: 'Enter password',
                          prefixIcon: Icon(
                            Icons.password_outlined,
                            color: Colors.deepOrangeAccent,
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30))),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Expanded(child: Container()),
                      Text(
                        'forgot your password?',
                        style: TextStyle(fontSize: 18, color: Colors.blue[500]),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 60,
            ),
            Container(
              width: w * 0.5,
              height: h * (0.08),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                    image: AssetImage("Img/loginbtn.png"), fit: BoxFit.cover),
              ),
              child: Center(
                child: Text(
                  'Sign in',
                  style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: w * 0.15),
            RichText(
              text: TextSpan(
                  text: 'Don\'t have an account?',
                  style: TextStyle(color: Colors.grey[500], fontSize: 20),
                  children: [
                    TextSpan(
                        text: ' Sign up',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => Get.to(() => Signuppage())),
                  ]),
            )
          ],
        ),
      ),
    );
  }
}
