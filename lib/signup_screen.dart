

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_expense_manager/loginscreen.dart';
import 'package:google_fonts/google_fonts.dart';

class signuppage extends StatefulWidget {
  const signuppage({super.key});
  @override
  State<signuppage> createState() => _signuppageState();
}

class _signuppageState extends State<signuppage> {
  TextEditingController NameTextEditingController = TextEditingController();
  TextEditingController userNameTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 42),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 86,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 88),
                  child: Image.asset(
                    "assets/splashscreen.png",
                    width: 70,
                    height: 59,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Text(
                  "Login to your Account",
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: const BoxDecoration(boxShadow: [
                    BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.15),
                        offset: Offset(0, 3),
                        blurRadius: 10)
                  ]),
                  child: TextFormField(
                    controller: NameTextEditingController,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color.fromRGBO(255, 255, 255, 1),
                      hintText: "Name",
                      hintStyle: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 0.4),
                        fontSize: 12,
                      )),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter name";
                      } else {
                        return null;
                      }
                    },
                    keyboardType: TextInputType.emailAddress,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: const BoxDecoration(boxShadow: [
                    BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.15),
                        offset: Offset(0, 3),
                        blurRadius: 10)
                  ]),
                  child: TextFormField(
                    controller: userNameTextEditingController,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color.fromRGBO(255, 255, 255, 1),
                      hintText: "Username",
                      hintStyle: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 0.4),
                        fontSize: 12,
                      )),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter username";
                      } else {
                        return null;
                      }
                    },
                    keyboardType: TextInputType.emailAddress,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: const BoxDecoration(boxShadow: [
                    BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.15),
                        offset: Offset(0, 3),
                        blurRadius: 10)
                  ]),
                  child: TextFormField(
                    controller: passwordTextEditingController,
                    obscureText: true,
                    obscuringCharacter: "*",
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color.fromRGBO(255, 255, 255, 1),
                      hintText: "Password",
                      hintStyle: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 0.4),
                        fontSize: 12,
                      )),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter password";
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: const BoxDecoration(boxShadow: [
                    BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.15),
                        offset: Offset(0, 3),
                        blurRadius: 10)
                  ]),
                  child: TextFormField(
                    controller: passwordTextEditingController,
                    obscureText: true,
                    obscuringCharacter: "*",
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color.fromRGBO(255, 255, 255, 1),
                      hintText: "Confirm Password",
                      hintStyle: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 0.4),
                        fontSize: 12,
                      )),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter password again";
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                    height: 49,
                    width: 280,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(14, 161, 125, 1),
                        borderRadius: BorderRadius.circular(8)),
                    child: GestureDetector(
                      onTap: () {
                        bool loginValidated = _formKey.currentState!.validate();
                        if (loginValidated) {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LoginPage(),
                              ));
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text("Signup Successful"),
                            ),
                          );
                        } else {
                          null;
                        }
                      },
                      child: Text(
                        "Sign In",
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(255, 255, 255, 1)),
                        ),
                      ),
                    )),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.all(33),
                  child: Row(
                    children: [
                      Text("Already have an account?",
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(fontSize: 12))),
                      GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const LoginPage(),
                                ));
                          },
                          child: Text(" Sign In",
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                      fontSize: 12,
                                      color: Color.fromRGBO(14, 161, 125, 1)))))
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
