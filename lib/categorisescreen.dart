

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_expense_manager/drawer.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({super.key});

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  final GlobalKey<FormFieldState> _categoryKey = GlobalKey<FormFieldState>();
  final GlobalKey<FormFieldState> _imageURLKey = GlobalKey<FormFieldState>();

  final TextEditingController _imageURLController = TextEditingController();
  final TextEditingController _categoryController = TextEditingController();

  void showAlertBox() {
    showDialog(
      barrierDismissible: false,
      barrierColor: const Color.fromARGB(201, 0, 0, 0),
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(
            'Delete Category',
            style: GoogleFonts.poppins(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.center,
          ),
          content: Text(
            'Are you sure you want to delete the selected category?',
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
            textAlign: TextAlign.center,
          ),
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromRGBO(14, 161, 125, 1),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                    child: Text(
                      'Delete',
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromRGBO(140, 128, 128, 0.2),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                    child: Text(
                      'Cancel',
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }

  void showCategoryBottomSheet() {
    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (context) {
          return Padding(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
              left: 10,
              right: 10,
              top: 10,
            ),
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        child: Column(
                          children: [
                            Container(
                              height: 74,
                              width: 74,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: const Color.fromRGBO(140, 128, 128, 0.2),
                              ),
                              child: const Icon(
                                Icons.image,
                                size: 22,
                              ),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              "Add",
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400,
                                fontSize: 13,
                              ),
                            )
                          ],
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Image URL",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              fontSize: 13,
                            ),
                          ),
                          TextFormField(
                            key: _imageURLKey,
                            controller: _imageURLController,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Please Enter Image URL";
                              } else {
                                return null;
                              }
                            },
                            decoration: const InputDecoration(
                                border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            )),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Category",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              fontSize: 13,
                            ),
                          ),
                          TextFormField(
                            key: _categoryKey,
                            controller: _categoryController,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Please Enter Category";
                              } else {
                                return null;
                              }
                            },
                            decoration: const InputDecoration(
                                border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            )),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Container(
                    width: 300,
                    height: 50,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(10)),
                    child: ElevatedButton(
                      onPressed: () {
                        // bool titleFlag = _amountkey.currentState!.validate();
                        // bool categoryFlag = _categorykey.currentState!.validate();
                        // bool desFlag = _desKey.currentState!.validate();
                        // bool dateFlag = _dateKey.currentState!.validate();
                        // if (titleFlag && desFlag && dateFlag) {
                        //   if (!isEdit) {
                        //     submit(false);
                        //   } else {
                        //     submit(true, toDoList1);
                        //   }
                        // }
                      },
                      style: const ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                              Color.fromRGBO(14, 161, 125, 1))),
                      child: const Text(
                        "Add",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Mydrawer(),
      appBar: AppBar(
        title: Text(
          "Categories",
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 18,
            ),
          ),
        ),
        actions: const [Icon(Icons.search_sharp)],
      ),
      body: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 24,
          mainAxisSpacing: 24,
        ),
        padding: const EdgeInsets.all(24),
        children: [
          // grid child 1
          GestureDetector(
            onTap: () {
              showCategoryBottomSheet();
            },
            onLongPress: () {
              setState(() {
                showAlertBox();
              });
            },
            child: Container(
              width: 145,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(14),
                boxShadow: [
                  const BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.15),
                    offset: Offset(1, 2),
                    blurRadius: 8,
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 74,
                    width: 74,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(214, 3, 3, 0.7),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: const Icon(
                      Icons.soup_kitchen_outlined,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 14),
                  Text(
                    "Food",
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),

          // grid child 2
          GestureDetector(
            onTap: () {
              showCategoryBottomSheet();
            },
            onLongPress: () {
              setState(() {
                showAlertBox();
              });
            },
            child: Container(
              width: 145,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(14),
                boxShadow: [
                  const BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.15),
                    offset: Offset(1, 2),
                    blurRadius: 8,
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 74,
                    width: 74,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(0, 148, 255, 0.7),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: const Icon(
                      Icons.soup_kitchen_outlined,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 14),
                  Text(
                    "Fuel",
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),

          // grid child 3
          GestureDetector(
            onTap: () {
              showCategoryBottomSheet();
            },
            onLongPress: () {
              setState(() {
                showAlertBox();
              });
            },
            child: Container(
              width: 145,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(14),
                boxShadow: [
                  const BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.15),
                    offset: Offset(1, 2),
                    blurRadius: 8,
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 74,
                    width: 74,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(0, 174, 91, 0.7),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: const Icon(
                      Icons.soup_kitchen_outlined,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 14),
                  Text(
                    "Medicine",
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),

          // grid child 4
          GestureDetector(
            onTap: () {
              showCategoryBottomSheet();
            },
            onLongPress: () {
              setState(() {
                showAlertBox();
              });
            },
            child: Container(
              width: 145,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(14),
                boxShadow: [
                  const BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.15),
                    offset: Offset(1, 2),
                    blurRadius: 8,
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 74,
                    width: 74,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(242, 38, 197, 0.7),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: const Icon(
                      Icons.soup_kitchen_outlined,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 14),
                  Text(
                    "Shopping",
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: SizedBox(
        width: 166,
        height: 46,
        child: FloatingActionButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(67)),
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          onPressed: () {
            showCategoryBottomSheet();
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.add_circle_rounded,
                color: Colors.green,
                size: 32,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                "Add Categories",
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
