import 'package:flutter/material.dart';

class CategoriesPage extends StatelessWidget {
  final List<String> categories = [
    "All",
    "Computers",
    "Accessories",
    "Smartphones"
        "Smart objects",
    "Speakers",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Stack(children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 29),
                    //geri ikonu
                    Icon(Icons.arrow_back, color: Color(0xFF0A1034), size: 27),
                    //kategoriler
                    SizedBox(height: 24),
                    Text(
                      "Categories",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          color: Color(0xFF0A1034)),
                    ),

                    SizedBox(height: 16),

                    Expanded(
                      child: ListView(
                          children: categories
                              .map((String title) => buildCategory(title,context))
                              .toList()),
                    )
                  ],
                ),
              )
              bottomNavigationBar("search"),
            ])));
  }
}

Widget buildCategory(String title, context) {
  return GestureDetector(
    child: Container(
      onTap:() {
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return CategoryPage(title);
        }));
      },
      padding: EdgeInsets.all(24),
      margin: EdgeInsets.only(bottom: 16),
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.25),
              blurRadius: 4,
              offset: Offset(0, 4),
            )
          ]),
      child: Text(
        title,
        style: TextStyle(
            fontSize: 18, fontWeight: FontWeight.w600, color: Color(0xFF0A1034)),
      ),
    ),
  );
}

