import 'package:flutter/material.dart';
// import 'package:navigation/pages/sign_up_page.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Stack(
            children: [
              Positioned(
                top: 20,
                left: 10,
                child: IconButton(
                  icon: const Icon(Icons.arrow_back_ios_new_rounded),
                  iconSize: 30,
                  color: Colors.blueGrey[900],
                  onPressed: () {
                    Navigator.pushNamed(context, '/intropage');
                  },
                )
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                          const SizedBox(height: 60),
                    Text(
                      "Welcome Back Glad to see you, Again!",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 27,
                        color: Colors.blueGrey[900],
                      ),
                    ),

                    const SizedBox(height: 70),
                    Container(
                      height: 50,
                      width: 300,
                      child: TextField(
                        decoration: InputDecoration(
                          hintStyle: TextStyle(
                            color: Colors.grey[500],
                            fontFamily: "Poppins",
                            fontSize: 13,
                          ),
                          hintText: "Username",
                          filled: true,
                          fillColor: Colors.indigo[50],
                          prefixIcon: const Icon(Icons.person_outline_rounded),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide.none
                          )
                        ),
                        style: const TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 15,
                        ),
                      ),
                    ),

                    const SizedBox(height: 15),
                    Container(
                      height: 50,
                      width: 300,
                      child: TextField(
                        decoration: InputDecoration(
                          hintStyle: TextStyle(
                            color: Colors.grey[500],
                            fontFamily: "Poppins",
                            fontSize: 13,
                          ),
                          hintText: "Password",
                          filled: true,
                          fillColor: Colors.indigo[50],
                          prefixIcon: const Icon(Icons.lock_outline_rounded),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide.none
                          )
                        ),
                        style: const TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 15,
                        ),
                      ),
                    ),

                    const SizedBox(height: 10),

                    TextButton(
                      onPressed: ()  {},
                      style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                      ),
                      child: Text(
                        "Forgot Password ?",
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 13,
                          color: Colors.grey[500],
                        ),
                      )
                    ),

                    // create a login button
                    const SizedBox(height: 30),
                    FilledButton(
                      onPressed: () {},
                      style: FilledButton.styleFrom(
                        backgroundColor: Colors.blueGrey[900],
                        minimumSize: const Size(300, 50),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                      ),
                      child: const Text(
                        "Login",
                        style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 15,
                        )
                      ),
                    ),

                    const SizedBox(height: 55),
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Divider(
                            color: Colors.blueGrey[500],
                            thickness: 1,
                          ),
                        ),
          
                        Text(
                          "  Or Login with  ",
                          style: TextStyle(
                            color: Colors.blueGrey[900],
                            fontFamily: "Poppins",
                            fontSize: 13,
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Divider(
                            color: Colors.blueGrey[500],
                            thickness: 1,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed:() {},
                          icon: Image.asset("images/google.png", height: 30,),
                        ),
                        const SizedBox(width: 35),
                        IconButton(
                          onPressed:() {},
                          icon: Image.asset("images/facebook.png", height: 30,),
                        ),
                        const SizedBox(width: 35),
                        IconButton(
                          onPressed:() {},
                          icon: Image.asset("images/apple.png", height: 30,),
                        ),
                      ],
                    ),

                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Dont have an acctount?",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 14,
                            //fontWeight: FontWeight.bold,
                            color: Colors.blueGrey[900],
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/signuppage');
                          },
                          style: TextButton.styleFrom(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                          ),
                          child: Text(
                            "Sign Up",
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.blueGrey[900],
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              )
            ]  
          )
        ),
      ),
    );

  }
}