import 'package:flutter/material.dart';
import 'package:navigation/pages/login_page.dart';
import 'package:navigation/widgets/customField.dart';

class SignUpPage extends StatefulWidget {
  @override
  SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController emailontroller = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  Color usernameFillColorController = const Color.fromRGBO(232, 234, 246, 1);
  Color emailFillColorController = const Color.fromRGBO(232, 234, 246, 1);
  Color pass1FillColorController= const Color.fromRGBO(232, 234, 246, 1);
  Color pass2FillColorController = const Color.fromRGBO(232, 234, 246, 1);


  void submitdata (){
    const lightGreen = Color.fromRGBO(232, 245, 233, 1);
    const lightRed = Color.fromRGBO(255, 205, 210, 1);

    setState(() {
      if (usernameController.text.isEmpty) {
        usernameFillColorController = lightRed;
      }
      else {
        usernameFillColorController = lightGreen;
      }
      //email
      if (emailontroller.text.isEmpty || !emailontroller.text.contains('@')) {
        emailFillColorController = lightRed;
      }
      else {
        emailFillColorController = lightGreen;
      }
      //password
      if (passwordController.text.isEmpty) {
        pass1FillColorController = lightRed;
      }
      else {
        pass1FillColorController = lightGreen;
      }
      //confirm password
      if (confirmPasswordController.text.isEmpty || confirmPasswordController.text != passwordController.text) {
        pass2FillColorController = lightRed;
      }
      else {
        pass2FillColorController = lightGreen;
      }    
    });

  }
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
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(25.0),
                
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 60),
                    Text(
                      "Hello! Register to get started",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 27,
                        color: Colors.blueGrey[900],
                      ),
                    ),

                    const SizedBox(height: 40),
                    const CustomTextField(label: "", hintText: "Username",),
                    //const SizedBox(height: 5),
                    const CustomTextField(label: "", hintText: "Email"),
                    //const SizedBox(height: 5),
                    const CustomTextField(label: "", hintText: "Password",),
                    //const SizedBox(height: 5),
                    const CustomTextField(label: "", hintText: "Confirm Password",),
                    
                    const SizedBox(height: 35),

                    //REGISTER BUTTON
                    FilledButton(
                      onPressed: () {
                        submitdata();
                      },
                      style: FilledButton.styleFrom(
                        backgroundColor: Colors.blueGrey[900],
                        minimumSize: const Size(300, 50),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                      ),
                      child: const Text(
                        "Register",
                        style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 15,
                        )
                      ),
                    ),
                    const SizedBox(height: 35),

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
                          "  Or Register with  ",
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
                          "Already have an acctount?",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 14,
                            //fontWeight: FontWeight.bold,
                            color: Colors.blueGrey[900],
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()),);
                          },
                          style: TextButton.styleFrom(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                          ),
                          child: Text(
                            "Login",
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
            ],
          )
        )
      ),
    );
  }
}
