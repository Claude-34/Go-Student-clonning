import 'package:flutter/material.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(15, 30, 15, 25),
              color: Colors.blue,
              height: 200,
              width: 400,
              child: const Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage(
                        "assets/sport.jpg",
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "University of Buea",
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                  Text(
                    "Enter your matriculation number and password to Sign in",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            TextField(
              style: TextStyle(
                color: Colors.blue,
              ),
              decoration: InputDecoration(
                  labelText: "Matriculation Number",
                  labelStyle: TextStyle(color: Colors.blue)),
            ),
            SizedBox(
              height: 30,
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'password',
              ),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () {
                  if ('_formkey'.currentState.validate()) {}
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 50),
                ),
                child: Text(
                  'LOGIN',
                  style: TextStyle(color: Colors.blue, fontSize: 18),
                )),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text('CREATE ACCOUNT'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(' FORGOT PASSWORD'),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.arrow_forward),
              label: Text('ONLINE HELP'),
            )
          ],
        ));
  }
}

extension on String {
  get currentState => null;
}

mixin formkey {}
