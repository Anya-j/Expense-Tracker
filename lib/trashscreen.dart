

import 'package:flutter/material.dart';
import 'package:flutter_expense_manager/drawer.dart';
import 'package:google_fonts/google_fonts.dart';

class trashscreen extends StatefulWidget {
  const trashscreen({super.key});

  @override
  State<trashscreen> createState() => _trashscreenState();
}

class _trashscreenState extends State<trashscreen> {
  List maplist = [];

  List headings = ["Medicine", "Food", "Shopping", "Fuel", "Movie", "Food"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Mydrawer(),
      appBar: AppBar(
        title: Text(
          "Trash",
          style: GoogleFonts.poppins(
              textStyle:
                  const TextStyle(fontWeight: FontWeight.w500, fontSize: 16)),
        ),

      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: ListView.builder(
            itemCount: 5,
            itemBuilder: ((context, index) {
              return Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.remove_circle,
                        color: Color.fromRGBO(204, 210, 227, 1),
                        size: 21,),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              headings[index],
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15)),
                            ),
                            SizedBox(
                              width: 225,
                              child: Text(
                                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry... more ",
                                  style: GoogleFonts.poppins(
                                      textStyle: const TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 10))),
                            )
                            // Text(
                            //     "Lorem Ipsum is simply dummy text of the  ",
                            //     style: GoogleFonts.poppins(
                            //         textStyle: const TextStyle(
                            //             fontWeight: FontWeight.w400,
                            //             fontSize: 10))),
                            // Text("printing and typesetting industry... more ",
                            //     style: GoogleFonts.poppins(
                            //         textStyle: const TextStyle(
                            //             fontWeight: FontWeight.w400,
                            //             fontSize: 10)))
                          ],
                        ),
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(top: 12.0),
                          child: Column(children: [
                            const Row(children: [
                              SizedBox(
                                width: 5,
                              ),
                              Text("500")
                            ]),
                            const SizedBox(
                              height: 15,
                            ),
                            Text("3 June|11:50 AM",
                                style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 9)))
                          ]),
                        ),
                      ],
                    ),
                    Divider()
                  ],
                ),
              );
            })),
      ),
    );
  }
}
