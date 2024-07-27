


import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_expense_manager/loginscreen.dart';
import 'package:google_fonts/google_fonts.dart';

class flashscreen extends StatefulWidget {
  const flashscreen({super.key});

  @override
  State<flashscreen> createState() => _flashscreenState();
}

class _flashscreenState extends State<flashscreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 4),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const LoginPage()
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 350),
                child: Container(
                  height: 144,
                  width: 144,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromRGBO(234, 238, 235, 1)
                  ),
                  child: Image.asset("assets/splashscreen.png"),
                ),
              ),
              const Spacer(),
               Padding(
                 padding: const EdgeInsets.all(35),
                 child: Text("Expense Manager",style: GoogleFonts.poppins(textStyle:const TextStyle(
                 fontSize: 16,
                 fontWeight:FontWeight.w600))),
               )
            ],
          ),
      ),
    );
  }
}
