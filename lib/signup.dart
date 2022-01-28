import 'package:chat_app/auth_contr.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'login.dart';

class Signuppage extends StatefulWidget {
  const Signuppage({Key? key}) : super(key: key);

  @override
  _SignuppageState createState() => _SignuppageState();
}

class _SignuppageState extends State<Signuppage> {
  @override
  Widget build(BuildContext context) {
    List images = ["g.png", "t.png", "f.png"];
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    var usernameController = TextEditingController();

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
                    image: AssetImage("Img/signup.png"), fit: BoxFit.cover),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: h * (0.16),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white70,
                    radius: 50,
                    backgroundImage: AssetImage("Img/profile1.png"),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20, top: 25),
              width: w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
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
                      controller: usernameController,
                      decoration: InputDecoration(
                          hintText: 'Enter username',
                          prefixIcon: Icon(
                            Icons.person,
                            color: Colors.deepOrangeAccent,
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30))),
                    ),
                  ),
                  SizedBox(
                    height: 15,
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
                      controller: emailController,
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
                      controller: passwordController,
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
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                AuthControl.instance.register(
                    usernameController.text.trim(),
                    emailController.text.trim(),
                    passwordController.text.trim());
              },
              child: Container(
                width: w * 0.5,
                height: h * (0.08),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                      image: AssetImage("Img/loginbtn.png"), fit: BoxFit.cover),
                ),
                child: Center(
                  child: Text(
                    'Sign up',
                    style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
            SizedBox(height: w * 0.08),
            RichText(
              text: TextSpan(
                text: 'Sign up Using ',
                style: TextStyle(color: Colors.grey[500], fontSize: 20),
              ),
            ),
            Wrap(
              children: List<Widget>.generate(3, (index) {
                return Padding(
                  padding: EdgeInsets.all(10.0),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.grey[500],
                    child: CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage("Img/" + images[index]),
                    ),
                  ),
                );
              }),
            ),
            SizedBox(
              height: h * 0.03,
            ),
            RichText(
              text: TextSpan(
                  text: 'Already have an account?',
                  style: TextStyle(color: Colors.grey[500], fontSize: 20),
                  children: [
                    TextSpan(
                        text: ' Log in',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => Get.to(() => Loginpage())),
                  ]),
            )
          ],
        ),
      ),
    );
  }
}
