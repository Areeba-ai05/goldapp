//import 'dart:nativewrappers/_internal/vm/lib/core_patch.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:goldapp/black-text-widget.dart';



class GoldHome extends StatefulWidget {
  const GoldHome({super.key});

  @override
  State<GoldHome> createState() => _GoldHomeState();
}

class _GoldHomeState extends State<GoldHome> {
  TextEditingController goldPriceController=TextEditingController();
  TextEditingController tolaQuantityController=TextEditingController();
  TextEditingController gramQuantityController=TextEditingController();
  TextEditingController ratiQuantityController=TextEditingController();
  TextEditingController pointsQuantityController=TextEditingController();
  double totalTolaPrice = 0.0;
  double totalGramPrice = 0.0;
  double totalgoldPrice = 0.0;
  double totalRatiPricee=0.0;
  double totalpointsPrice=0.0;
  double res=0.0;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.refresh_outlined),
            backgroundColor:Colors.black,onPressed: () {
            setState(() {

            goldPriceController.clear();
            tolaQuantityController.clear();
            gramQuantityController.clear();
            ratiQuantityController.clear();
            pointsQuantityController.clear();
            totalTolaPrice = 0.0;
            totalGramPrice = 0.0;
            totalgoldPrice = 0.0;
            totalRatiPricee = 0.0;
            totalpointsPrice = 0.0;
            res = 0.0;
          });
          }),

        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text('Gold App',style: TextStyle(color: Colors.white),),
          centerTitle: true,
        ),

        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal:50.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(5)
                  ),
                  child: TextFormField(
                    style: TextStyle(color: Colors.white),
                    controller:goldPriceController,
                    decoration: InputDecoration(
                      hintText: 'Enter Gold Price',
                      hintStyle: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30,),
              Container(
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(5)
                ),
                child: TextFormField(
                  style: TextStyle(color: Colors.white),
                  controller:tolaQuantityController,
                  decoration: InputDecoration(
                    hintText: 'Enter Tola Quantity',
                    hintStyle: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(5)
                ),
                child: TextFormField(
                  style: TextStyle(color: Colors.white),
                  controller:gramQuantityController,
                  decoration: InputDecoration(
                    hintText: 'Enter Gram Quantity',
                    hintStyle: TextStyle(color: Colors.white),
                  ),
                ),
              ),

              SizedBox(height: 20,),
              Container(
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(5)
                ),
                child: TextFormField(
                  style: TextStyle(color: Colors.white),
                  controller:ratiQuantityController,
                  decoration: InputDecoration(
                    hintText: 'Enter Rati Quantity',
                    hintStyle: TextStyle(color: Colors.white),
                  ),
                ),
              ),

              SizedBox(height: 20,),
              Container(
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(5)
                ),
                child: TextFormField(
                  style: TextStyle(color: Colors.white),
                  controller:pointsQuantityController,
                  decoration: InputDecoration(
                    hintText: 'Enter points Quantity',
                    hintStyle: TextStyle(color: Colors.white),
                  ),
                ),
              ),

              SizedBox(height: 20,),
             // Text('Total Gram Price :$totalGramPrice'),
              BlackTextWidget(text: 'Total Gram Price :$totalGramPrice'),
              SizedBox(height: 10,),
              // Text('Total Tola Price :$totalTolaPrice'),
              BlackTextWidget(text: 'Total Tola Price :$totalTolaPrice'),

              SizedBox(height: 10,),
              //Text('Total Rati Price :$totalRatiPricee'),
              BlackTextWidget(text: 'Total Ratti Price :$totalRatiPricee'),
              SizedBox(height: 10,),
              //Text('Total Points Price :$totalpointsPrice'),
              BlackTextWidget(text: 'Total Points Price :$totalpointsPrice'),
              SizedBox(height: 8,),
              //Text('Total Price Rs.$res'),
              BlackTextWidget(text: 'Total Price Rs. $res'),


              TextButton(onPressed:() {
                if (goldPriceController.text == '') {
                  goldPriceController.text = '0';
                }
                else {
                  if (tolaQuantityController.text == '') {
                    tolaQuantityController.text = '0';
                  }

                  if (gramQuantityController.text == '') {
                    gramQuantityController.text = '0';
                  }

                  if (ratiQuantityController.text == '') {
                    ratiQuantityController.text = '0';
                  }

                  if (pointsQuantityController.text == '') {
                    pointsQuantityController.text = '0';
                  }

                  //double n1=double.parse(goldPriceController.text);
                  double goldprice = double.parse(goldPriceController.text);
                  double tolaQuantity = double.parse(tolaQuantityController.text);
                  double gramQuantity = double.parse(gramQuantityController.text);
                  double ratiQuantity = double.parse(ratiQuantityController.text);
                  //    double pointsQuantity=double.parse(pointsQuantityController.text);


                  // to find total Price of grams
                  //to find price of 1 gram
                  double pricePerGram = goldprice / 11.664;
                  totalGramPrice = pricePerGram * gramQuantity;


                  totalTolaPrice = goldprice * tolaQuantity;

                  // to find total ratti price
                  double priceperRati = goldprice / 96;
                  totalRatiPricee = priceperRati * ratiQuantity;


                  //to find price per point
                  double pricePerpoint = goldprice / 960;
                  //   to find total points price
                  totalpointsPrice =
                      pricePerpoint * double.parse(pointsQuantityController.text);
                  res = totalTolaPrice + totalGramPrice + totalRatiPricee +
                      totalpointsPrice;
                  setState(() {

                  });
                }

              } , style: TextButton.styleFrom(
                  backgroundColor: Colors.black
              ),
                child:Text('Calculate',style: TextStyle(color: Colors.white),),),

              SizedBox(height:10),
              FloatingActionButton(onPressed: (){
                Get.snackbar(
                    icon: Icon(Icons.error_outline),
                    'Error',//title of error
                    titleText: Text('error',style: TextStyle(),),
                    duration:Duration(days: 2),

                    'field must be filled' ,//description of title,
                    backgroundColor: Colors.white.withOpacity(0.8)
                );
              })
            ],
          ),
        )
    );
  }
}