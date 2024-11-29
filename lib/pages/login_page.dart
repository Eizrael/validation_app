import 'package:flutter/material.dart';
import 'package:navigation/widgets/customField.dart';
import 'package:navigation/widgets/passwordfield.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController loginuserController = TextEditingController();
  final TextEditingController userpassController = TextEditingController();

  String userlabel = "";
  String passlabel = "";

  void login () {
    String username = loginuserController.text;
    String loginpass = userpassController.text;
    
    setState(() {
      if (username.isEmpty) {
      userlabel = "Username can't be empty";
    }else {
      userlabel = "";
    }

     if (loginpass.isEmpty) {
      passlabel = "Password can't be empty";
    }else {
      passlabel = "";
    }
    });
    

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
          color: Colors.blueGrey.shade900, // Fixed null safety
          size: 30,
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 30),

                // Welcome text
                Text(
                  "Welcome Back Glad to see you, Again!",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 27,
                    color: Colors.blueGrey.shade900,
                  ),
                ),

                const SizedBox(height: 40),

                // Username field
                CustomTextField(
                  controller: loginuserController, 
                  label: userlabel,
                  hintText: "Username",
                  beforeicon: Icon(Icons.person_4_rounded),
                ),

                const SizedBox(height: 5),
                // Password field
                PasswordField(
                  controller: userpassController,
                  label: passlabel, 
                  hintText: "Password",
                  beforeicon: const Icon(Icons.lock_outline_rounded),
                ),
                const SizedBox(height: 10),

                // Forgot password button
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 13,
                      color: Colors.grey[500],
                    ),
                  ),
                ),

                // Login button
                const SizedBox(height: 30),
                FilledButton(
                  onPressed: () {
                    login();
                  },
                  style: FilledButton.styleFrom(
                    backgroundColor: Colors.blueGrey.shade900,
                    minimumSize: const Size(300, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text(
                    "Login",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 15,
                    ),
                  ),
                ),

                const SizedBox(height: 55),

                // Divider and "Or Login with"
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
                        color: Colors.blueGrey.shade900,
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

                // Social login buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset("images/google.png", height: 30),
                    ),
                    const SizedBox(width: 35),
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset("images/facebook.png", height: 30),
                    ),
                    const SizedBox(width: 35),
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset("images/apple.png", height: 30),
                    ),
                  ],
                ),

                const SizedBox(height: 20),

                // Sign up row
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account?",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 14,
                        color: Colors.blueGrey.shade900,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/signuppage');
                      },
                      style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.blueGrey.shade900,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}