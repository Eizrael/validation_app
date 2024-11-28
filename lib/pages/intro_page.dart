import 'package:flutter/material.dart';
//import 'package:navigation/pages/login_page.dart';
// import 'package:navigation/pages/sign_up_page.dart';


class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            //1, add the signup image
            Image.asset(
              'images/signup.png',
                width: 300,
                height: 480,
           ),

            //2, add the welcome text
            Text(
              "Welcome!",
              style: TextStyle(
                fontSize: 32,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
                color: Colors.blueGrey[900],
              ),
            ),
            const SizedBox(height: 5),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 27.0),
              child: Text(
               "Sign up to create an account or login to continue.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Poppins',
                  color: Colors.blueGrey[900],
                ),
              ),
            ),

            const SizedBox(height: 30),
            FilledButton(
              onPressed: () {
                Navigator.pushNamed(context, '/signuppage');
              },
              style: FilledButton.styleFrom(
                backgroundColor: (Colors.blueGrey[900]),
                minimumSize: const Size(250, 52),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7),
                ),
              ),
              child: const Text(
                "Sign up",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: "Poppins",
                  fontSize: 17,
                ),
              ),
            ),

            const SizedBox(height: 10),
            OutlinedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/loginpage');
              },
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.blueGrey[900],
                side: const BorderSide(
                  color: Color.fromRGBO(38, 50, 56, 1),
                  width: 1.1,
                ),
                minimumSize: const Size(250, 52),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
              ),
              child: const Text(
                "Login",
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 17,
                ),
              ),
            ),
          ],
        ),
      )
    );
  }       
}
