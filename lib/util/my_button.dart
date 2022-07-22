import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {

  final iconImagePath;
  final String buttonText;
  

  const MyButton({ Key? key,
   required this.buttonText,
   required this.iconImagePath
   }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
                children: [
                    // icon
                    Container(
                      height: 90,
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        //color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white,
                            blurRadius: 30,
                            spreadRadius: 10

                          )
                        ]
                      ),
                      child: Image.asset(iconImagePath),
                    ),
                    SizedBox(height: 4,),
                    // text
                    Text(buttonText,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey[500],
                      fontWeight: FontWeight.bold

                    ),
                    ),

              
                ],
              );
  }
}