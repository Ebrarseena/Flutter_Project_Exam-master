import 'package:flutter/material.dart';
import 'package:flutterexam/header.dart';
import 'package:flutterexam/productDetail.dart';
class CategoryPage extends StatelessWidget{
 String categoryTitle;


  List<Map> products = [
    {"isim": "Surface Laptop 3","fotograf":"assets/images/SurfaceLaptop.png" , "fiyat":"999"},
    {"isim": "XPS Laptop 13","fotograf":"assets/images/SurfaceLaptop.png" , "fiyat":"999"},
    {"isim": "Lg Gram 17","fotograf":"assets/images/SurfaceLaptop.png" , "fiyat":"999"},
    {"isim": "Macbook Pro 13","fotograf":"assets/images/SurfaceLaptop.png" , "fiyat":"999"},
    {"isim": "Hauwei","fotograf":"assets/images/SurfaceLaptop.png" , "fiyat":"999"},
    {"isim": "Pixelbook","fotograf":"assets/images/SurfaceLaptop.png" , "fiyat":"999"},
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Stack(children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Header 
            header(categoryTitle, context),
            SizedBox(height: 32),

            //İçerik
             // buildContent("Surface Laptop 3", "assets/images/SurfaceLaptop.png", "999"),
              Expanded(
              child :GridView.count(
                crossAxisCount: 2 ,
                mainAxisSpacing: 15,
                crossAxisSpacing: 10,
                children: products.map((Map product) {
                return buildContent(
                    product["isim"], product["fotograf"], product["fiyat"],context);
              }).toList(),
              ),
              )
          ],)
          )

          bottomNavigationBar("search"),
        ],),
      )

    );
  }
}

 Widget buildContent(String title, String photoUrl , String price, context) {
  return   GestureDetector(
    onTap:() {
    Navigator.push(context, MaterialPageRoute(builder: (context)
    {
      return ProductDetailPage(title);
    }));
    },
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: 12 , vertical: 16),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.08),
              blurRadius: 24,
              offset: Offset(0,16),
            )
          ]
      ),
      child: Column(
          children: [
          SizedBox(height: 16),
      Image.asset(photoUrl),
      SizedBox(height: 32),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Text(
          title,
          style: TextStyle(
            color: Color(0xFF0A1034),
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
            "USD $price",
          style: TextStyle(
          color: Color(0xFF0A1034),
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),),
],


    ),
    ],
      ),
    ),
  );


  }