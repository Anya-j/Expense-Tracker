

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_expense_manager/categorisescreen.dart';
import 'package:flutter_expense_manager/graphscreen.dart';
import 'package:flutter_expense_manager/homepage.dart';
import 'package:flutter_expense_manager/trashscreen.dart';
import 'package:google_fonts/google_fonts.dart';

class Mydrawer extends StatefulWidget {
  const Mydrawer({super.key});

  @override
  State<Mydrawer> createState() => MydrawerState();
}

class MydrawerState extends State<Mydrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 216,
      child: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //SizedBox(height: 20,),
              Container(
                padding: const EdgeInsets.only(left: 18, top: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Expense Manager",
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 16)),
                    ),
                    Text(
                      "Saves all your Transaction",
                      // maplist[index].name,
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 10)),
                    ),
                  ],
                ),
              ),
              // Container(
              //   padding: EdgeInsets.only(left: 18, top: 16),
              //   child: Text(
              //     "Saves all your Transaction",
              //     // maplist[index].name,
              //     style: GoogleFonts.poppins(
              //         textStyle:const TextStyle(
              //             fontWeight: FontWeight.w400, fontSize: 10)),
              //   ),
              // ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      padding: const EdgeInsets.only(left: 18),
                      height: 40,
                      width: 184,
                      decoration: BoxDecoration(
                          color: Colors.green.shade200,
                          borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(20),
                              bottomRight: Radius.circular(20))),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.shopify_sharp,
                            color: Colors.green,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          GestureDetector(
                          onTap: () {
                            Navigator.pushReplacement(context, MaterialPageRoute(builder:(context) => const HomePage(),));
                          },
                            child: Text(
                              "Transaction",
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                      fontWeight: FontWeight.w400, fontSize: 16)),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          Navigator.pushReplacement(context, MaterialPageRoute(
                            builder: (context) {
                              return const graphscreen();
                            },
                          ));
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.only(left: 18),
                        height: 40,
                        width: 184,
                        child: Row(
                          children: [
                            const Icon(
                              Icons.pie_chart_rounded,
                              color: Colors.green,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Graphs",
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16)),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          Navigator.pushReplacement(context, MaterialPageRoute(
                            builder: (context) {
                              return CategoriesScreen();
                            },
                          ));
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.only(left: 18),
                        height: 40,
                        width: 184,
                        child: Row(
                          children: [
                            const Icon(
                              Icons.arrow_circle_right_sharp,
                              color: Colors.green,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Category",
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16)),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          Navigator.pushReplacement(context, MaterialPageRoute(
                            builder: (context) {
                              return const trashscreen();
                            },
                          ));
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.only(left: 18),
                        height: 40,
                        width: 184,
                        child: Row(
                          children: [
                            const Icon(
                              Icons.delete,
                              color: Colors.green,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Trash",
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16)),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      padding: const EdgeInsets.only(left: 18),
                      height: 40,
                      width: 184,
                      child: Row(
                        children: [
                          const Icon(
                            Icons.person,
                            color: Colors.green,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            "About us",
                            style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    fontWeight: FontWeight.w400, fontSize: 16)),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 5,
              ),
            ],
          ),

          // ListTile(
          //     leading: const Icon(Icons.shopping_bag_outlined),
          //     title: const Text("Transaction"),
          //     onTap: () {
          //       Navigator.pop(context);
          //       Navigator.push(
          //         context,
          //         MaterialPageRoute(
          //           builder: (context) => const HomePage(),
          //         ),
          //       );
          //     }),
          // ListTile(
          //   hoverColor: Colors.green,
          //   //focusColor: Colors.green.shade300,
          //   leading: const Icon(Icons.pie_chart_rounded),
          //   title: const Text("Graph"),
          //   //onTap: () => Navigator.pop(context),
          // ),
          // ListTile(
          //   leading: const Icon(Icons.double_arrow_sharp),
          //   title: const Text("Category"),
          //   onTap: () => Navigator.pop(context),
          // ),
          // ListTile(
          //   leading: const Icon(Icons.delete),
          //   title: const Text("Trash"),
          //   onTap: () => Navigator.pop(context),
          // ),
          // ListTile(
          //   leading: const Icon(Icons.person),
          //   title: const Text("About us"),
          //   onTap: () => Navigator.pop(context),
          // ),
        ],
      ),
    );
  }
}
