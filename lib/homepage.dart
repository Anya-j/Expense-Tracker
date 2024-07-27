import 'package:flutter/material.dart';
import 'package:flutter_expense_manager/drawer.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<FormFieldState> _amountkey = GlobalKey<FormFieldState>();
  final GlobalKey<FormFieldState> _desKey = GlobalKey<FormFieldState>();
  final GlobalKey<FormFieldState> _dateKey = GlobalKey<FormFieldState>();
  final GlobalKey<FormFieldState> _categoryKey = GlobalKey<FormFieldState>();

  final TextEditingController _amountcontroller = TextEditingController();
  final TextEditingController _desController = TextEditingController();
  final TextEditingController _dateController = TextEditingController();
  final TextEditingController _categoryController = TextEditingController();
  List maplist = [];
  List imagelist = [
    "assets/medicine.png",
    "assets/food.png",
    "assets/shopping.png",
    "assets/fuel.png",
    "assets/movie.png",
  ];

  List headings = [
    "Medicine",
    "Food",
    "Shopping",
    "Fuel",
    "Movie",
  ];

  void showBottomSheet1() {
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
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Add Expense",
                  style: GoogleFonts.quicksand(
                      fontWeight: FontWeight.w600,
                      fontSize: 22,
                      color: const Color.fromRGBO(0, 0, 0, 1)),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Date",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 13,
                        ),
                      ),
                      TextFormField(
                        key: _dateKey,
                        controller: _dateController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please Enter Date";
                          } else {
                            return null;
                          }
                        },
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        )),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Amount",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 13,
                        ),
                      ),
                      TextFormField(
                        key: _amountkey,
                        controller: _amountcontroller,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please Enter Amount";
                          } else {
                            return null;
                          }
                        },
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        )),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
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
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        )),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Description",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 13,
                        ),
                      ),
                      TextFormField(
                        key: _desKey,
                        controller: _desController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please Enter Description";
                          } else {
                            return null;
                          }
                        },
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        )),
                      ),
                    ],
                  ),
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
                    onPressed: () {},
                    style: const ButtonStyle(
                        fixedSize: MaterialStatePropertyAll(Size(129, 40)),
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
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Mydrawer(),
      appBar: AppBar(
        title: Text(
          "June 2022",
          style: GoogleFonts.poppins(
              textStyle:
                  const TextStyle(fontWeight: FontWeight.w500, fontSize: 16)),
        ),
        actions: const [Icon(Icons.search_sharp)],
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: ListView.builder(
            //scrollDirection:Axis.horizontal,
            //shrinkWrap:true,
            itemCount: 5,
            itemBuilder: ((context, index) {
              return Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          imagelist[index],
                          width: 50,
                          height: 50,
                        ),
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
                            Text("Lorem Ipsum is simply dummy text of the ",
                                style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10)))
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Column(children: [
                            const Row(children: [
                              Icon(
                                Icons.remove_circle_outlined,
                                color: Color.fromRGBO(246, 113, 49, 1),
                                size: 15,
                              ),
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
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        width: 166,
        height: 46,
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: FloatingActionButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(67)),
          backgroundColor: Colors.white,
          onPressed: () {
            showBottomSheet1();
          },
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.add_circle_rounded,
                color: Color.fromRGBO(14, 161, 125, 1),
                size: 32,
              ),
              SizedBox(
                width: 10,
              ),
              Text("Add Expense")
            ],
          ),
        ),
      ),
    );
  }
}
