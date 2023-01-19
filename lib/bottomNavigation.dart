import 'package:flutter/material.dart';
Widget buttomNavigationBar(String page) {
  return Align(
    alignment: Alignment.bottomCenter,
    child: Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              offset: Offset(0, -3),
              color: Colors.black.withOpacity(0.25),
              blurRadius:10  )
        ],
        color: Color(0xFFEFF5FB),

      ),
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround, //aralarına ve çevrelerine boşluk
        children: [
          //Icon(
          //Icons.home_filled,
          //size: 18,
          //color: Color(0XFF0001FC),
          buildNavIcon(iconData: Icons.home_filled, active: page == "home"),
          buildNavIcon(iconData: Icons.search, active: page == "search"),
          buildNavIcon(iconData: Icons.shopping_basket, active: page == "cart"),
          buildNavIcon(iconData: Icons.person, active: page == "profile"),

          //),
        ],

      ),
    ),
  );
}

Widget buildNavIcon(
    @required IconData iconData ,
    @required bool active
    ) {
  return Icon(
      Icons.home_filled,
      size: 20,
      color: Color(
          active ? 0Xff0001FC : 0xFF0A1034));
}