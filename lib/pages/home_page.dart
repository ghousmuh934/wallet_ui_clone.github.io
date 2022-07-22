// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unnecessary_new

import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wallet_ui_clone_app/util/my_button.dart';
import 'package:wallet_ui_clone_app/util/my_card.dart';
import 'package:wallet_ui_clone_app/util/my_listtile.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // page controller
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: Colors.pink,
        child: Icon(Icons.monetization_on),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      bottomNavigationBar: BottomAppBar(
        color: Colors.grey[160],
        child: Padding(
          padding: const EdgeInsets.only(top:8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(onPressed: (){},
               icon: Icon(Icons.home,
               size: 32,
               color: Colors.pink,
               ),
              ),
              IconButton(onPressed: (){},
               icon: Icon(Icons.settings,
               size: 32,
               color: Colors.grey,
               ),
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Column(children: [
            // app bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text('My ',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold
                  ),),
                  Text('Card',
                  style: TextStyle(
                    fontSize: 28,
                    
                  ),
                  ),
    
                  ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[400],
                      shape: BoxShape.circle
                    ),
                    padding: EdgeInsets.all(4),
                    child: Icon(Icons.add)
                    )
                ],
              ),
            ),

            SizedBox(height: 25,),

            // cards
            Container(
              height: 180,
              child: PageView(
                scrollDirection: Axis.horizontal,
                //below controller will keep the page number
                controller: _controller,
                children: [
                  MyCard(
                    balance: 5000.94,
                    cardNumber: 2343543254552224,
                    expiryMonth: 10,
                    expiryYear: 24,
                    color: Colors.green[300],
                  ),
                  MyCard(
                    balance: 8340.64,
                    cardNumber: 2343543254552224,
                    expiryMonth: 11,
                    expiryYear: 25,
                    color: Colors.blue[300],
                  ),
                  MyCard(
                    balance: 40550.94,
                    cardNumber: 2343543254552224,
                    expiryMonth: 5,
                    expiryYear: 23,
                    color: Colors.deepPurple[300],
                  ),
                  
                ],
              ),

            ),
            SizedBox(height: 20,),
            // smooth page indicator
            SmoothPageIndicator(
              controller: _controller, count: 3,
              effect: ExpandingDotsEffect(
                activeDotColor: Colors.grey.shade800
              ),
              
            ),
            SizedBox(height: 20,),
      
            // 3 button -> send , pay , bills
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  // send Button
                  MyButton(
                    buttonText: 'Send',
                    iconImagePath: 'lib/icons/send-money.png'
                  ),

                  // pay button
                  MyButton(
                    buttonText: 'Pay',
                    iconImagePath: 'lib/icons/credit-card.png'
                  ),

                  // bill button
                  MyButton(
                    buttonText: 'Bills',
                    iconImagePath: 'lib/icons/bill.png'
                  ),
                ],
              ),
            ),
     
            SizedBox(height: 40,),
            // column -> stats, transaction
            Expanded(
              child: Padding(
                padding:  EdgeInsets.symmetric(horizontal: 25.0),
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    MyListTile(
                      iconImagePath: 'lib/icons/analysis.png', 
                      title: 'Statistics', 
                      subTitle: 'Payment and Income'
                    ),
                          
                    // trasaction
                    MyListTile(
                      iconImagePath: 'lib/icons/transaction.png', 
                      title: 'Transaction', 
                      subTitle: 'Transaction History'
                    ),
                  ],
            
                ),
              ),
            )
          ],),
        ),
      ),
      
    );
  }
}