import 'package:flutter/material.dart';
import 'package:navigation/pages/login_page.dart';
import 'package:navigation/widgets/customField.dart';
import 'package:navigation/widgets/passwordfield.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();

  Color usernamefillcolor = const Color(0xFFF0F0F0);
  Color emailfillcolor = const Color(0xFFF0F0F0);
  Color pass1fillcolor = const Color(0xFFF0F0F0);
  Color pass2fillcolor = const Color(0xFFF0F0F0);

  String usernamelabel = "";
  String emaillabel = "";
  String pass1label = "";
  String pass2label = "";

  void submitdata() {
    Color lightred = Color(0xFFFECCCB);
    Color lightgreen = const Color.fromRGBO(200, 230, 201, 1);

    String username = usernameController.text;
    String email = emailController.text;
    String pass1 = passwordController.text;
    String pass2 = confirmPasswordController.text;

    setState(() {});
    if(username.length < 3) {
      usernamefillcolor = lightred;
      usernamelabel = "Username cant be empty";
    }else {
      usernamefillcolor = lightgreen;
      usernamelabel = "";
    }

    if(email.isEmpty || !email.contains("@")) {
      emailfillcolor = lightred;
      emaillabel = "Not a valid address";
    }else {
      emailfillcolor = lightgreen;
      emaillabel = "";
    }

    if(pass1.length < 5) {
      pass1fillcolor = lightred;
      pass1label = "Password too short";
    }else {
      pass1fillcolor = lightgreen;
      pass1label = "";
    }

    if(pass2.length < 6) {
      pass2fillcolor = lightred;
      pass2label = "Username cant be empty";
    }else {
      pass2fillcolor = lightgreen;
      pass2label = "";
    }

    if(pass1.isEmpty || pass2.isEmpty || pass1 != pass2) {
      pass2fillcolor = lightred;
      pass1fillcolor = lightred;
      pass2label = "Password doesnt match!";
      pass1label = "Password doesnt match";
    }else {
      pass2fillcolor = lightgreen;
      pass1fillcolor = lightgreen;
      pass2label = "";
      pass1label = "";
    } 
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey[50],
        leading: const Icon(Icons.arrow_back_ios_new_rounded),
        iconTheme: IconThemeData(
          color: Colors.blueGrey[900],
          size: 30, 
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Hello! Register to get started",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 27,
                  color: Colors.blueGrey[900],
                ),
              ),
              const SizedBox(height: 25),
              CustomTextField(
                label: usernamelabel,
                hintText: "Username",
                controller: usernameController,
                fillColor: usernamefillcolor,
              ),
             CustomTextField(
                label: emaillabel,
                hintText: "Email",
                controller: emailController,
                fillColor: emailfillcolor
              ),
              PasswordField(
                label: pass1label,
                hintText: "Password",
                controller: passwordController,
                fillColor: pass1fillcolor,
              ),
              PasswordField(
                label: pass2label,
                hintText: "Confirm Password",
                controller: confirmPasswordController,
                fillColor: pass2fillcolor,
              ),
              const SizedBox(height: 35),
              FilledButton(
                onPressed: submitdata,
                style: FilledButton.styleFrom(
                  backgroundColor: Colors.blueGrey[900],
                  minimumSize: const Size(300, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text(
                  "Register",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 15,
                  ),
                ),
              ),
              const SizedBox(height: 35),
              Row(
                children: [
                  Expanded(
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
                    onPressed: () {},
                    icon: Image.asset(
                      "images/google.png",
                      height: 30,
                    ),
                  ),
                  const SizedBox(width: 35),
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      "images/facebook.png",
                      height: 30,
                    ),
                  ),
                  const SizedBox(width: 35),
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      "images/apple.png",
                      height: 30,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account?",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 14,
                      color: Colors.blueGrey[900],
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                      );
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueGrey[900],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}