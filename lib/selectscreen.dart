import 'package:flutter/material.dart';

class SelectScreen extends StatefulWidget {
  const SelectScreen({super.key});

  @override
  State<SelectScreen> createState() => _SelectScreenState();
}

class _SelectScreenState extends State<SelectScreen> {
  int selectedIndex = 0;

  List<String> categoryList = [
    "all",
    "new to you",
    "mohnlala",
    "film",
    "comedy"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        height: 50,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor:
                          selectedIndex == index ? Colors.black : Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(21),
                      )),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        categoryList[index],
                        style: TextStyle(
                            color: selectedIndex == index
                                ? const Color.fromARGB(255, 239, 216, 6)
                                : const Color.fromARGB(255, 239, 6, 6)),
                      )
                    ],
                  )),
            );
          },
          itemCount: categoryList.length,
        ),
      )),
    );
  }
}
