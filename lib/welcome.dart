import 'package:flutter/material.dart';

class welcomepage extends StatefulWidget {
  const welcomepage({Key? key}) : super(key: key);

  @override
  _welcomepageState createState() => _welcomepageState();
}

class _welcomepageState extends State<welcomepage> {
  @override
  Widget build(BuildContext context) {
    List images = ["g.png", "t.png", "f.png"];
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
                    height: 50,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              'Welcome ,',
              style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54),
            ),
            Text(
              'Sudesh',
              style: TextStyle(fontSize: 30, color: Colors.black54),
            ),
            SizedBox(
              height: 40,
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
                  'Sign Out',
                  style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
