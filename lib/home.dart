import 'package:flutter/material.dart';
import 'package:flutterexam/home.dart';
import 'package:flutterexam/label.dart';

class HomePage extends StatefulWidget{
  @override
  _HomePageState createState() => _HomePageState ();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build (BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: ListView(
                  children: [
                    buildBaslik(),

                    buildBanner(),


                    Padding(
                        padding: EdgeInsets.only(top: 48),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            buildNavigation(text: "Categories", icon: Icons.menu),
                            buildNavigation(text: "Favorites", icon: Icons.star_border),
                            buildNavigation(text: "Gifts", icon: Icons.card_giftcard),
                            buildNavigation(text: "Best selling", icon: Icons.people),

                          ],)),

                    SizedBox(height: 40),

                    Text(
                      "Sales",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          color: Color(0xFF00796B)),
                    ),
                    SizedBox(height: 16),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        buildSalesItem(
                            text: "Macbook",
                            photoUrl: "assets/images/Macbook.png",
                            discount: "-50%" ,
                            screenWidth: screenWidth,
                        ),
                        buildSalesItem(
                          text: "Surface Laptop 3",
                          photoUrl: "assets/images/OriginalPng1.png",
                          discount: "-50%" ,
                          screenWidth: screenWidth,
                        ),


                      ],

                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        buildSalesItem(
                          text: "Iphone",
                          photoUrl: "assets/images/Product2.png",
                          discount: "-50%" ,
                          screenWidth: screenWidth,
                        ),
                        buildSalesItem(
                          text: "XS Laptop 13",
                          photoUrl: "assets/images/Macbook.png",
                          discount: "-50%" ,
                          screenWidth: screenWidth,
                        ),


                      ],
                    ),
                  ],
                ),
              ),

              bottomNavigationBar("home"),


            ],
          ),
        ),
    );
  }
}



Widget buildBaslik(){
  return Padding(
    padding: const EdgeInsets.only(top : 24.0),
    child: Text(
      "Home",
      style: TextStyle(
        fontSize: 28,
        color: Color(0xFF0A1034),
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}

Widget buildBanner() {
  return Padding(
      padding: EdgeInsets.only(top: 24),
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.only(left:15, right: 36, top:18 , bottom: 15),
        decoration: BoxDecoration(
            color: Color(0xFF00796B),
            borderRadius: BorderRadius.circular(6)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Iphone 11 Pro Max",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(height:4),
                Text(
                  "USD 764",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w500),
                ),

              ],
            ),
            Image.asset("assets/images/Product.png")

          ],),
      ));
}

Widget buildNavigation({
  required String text,
  required IconData icon,
  Widget? widget,
  BuildContext? context,
}) {
  return GestureDetector(
    onTap:() {
      Navigator.push(context!, MaterialPageRoute(builder: (context){
        return widget!;
      }));
    },
    child: Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 19, vertical: 22),
          decoration:
          BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xFFE0ECF8)),
          child: Icon(
              icon,
              color: Color(0xFF00796B),
              size: 18),
        ),
        SizedBox(height: 8),
        Text(
          text,
          style: TextStyle(
            color: Colors.black,
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    ),
  );
}

Widget buildSalesItem({required String text ,required String photoUrl, required String discount, required double screenWidth}){
  return  Container(
    width: (screenWidth - 60) * 0.5,
    padding: EdgeInsets.only(left: 12, right: 12,top: 12,
        bottom:21),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      label(discount),
        SizedBox(height: 13),

        Image.asset(photoUrl),

        SizedBox(height: 25),


        Center(
          child: Text(
              text,
              style: TextStyle(
                  fontSize: 18,
                  color: Color(0xFF0A1034),
                  fontWeight: FontWeight.bold)),
        )
      ],),
  );
}

