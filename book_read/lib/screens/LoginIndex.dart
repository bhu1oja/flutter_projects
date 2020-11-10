import 'package:book_read/screens/LoginPage.dart';
import 'package:book_read/widgets/myTextView.dart';
import 'package:flutter/material.dart';

class LoginIndex extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
               Container(
                decoration: BoxDecoration(
                 borderRadius: BorderRadiusDirectional.only(bottomEnd : Radius.elliptical(40, 40), bottomStart:Radius.elliptical(40, 40) ),
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: <Color>[
                       Colors.teal,
                       Colors.blue
                      ],
                    ),
                  ),
                height: MediaQuery.of(context).size.height * 0.6,
                width: MediaQuery.of(context).size.width,
                child: Icon(Icons.library_books, color: Colors.white, size: 90,),
               ),
               SizedBox(height: 10,),
               MyTextView().myTextViewStatic(4.0, "Read your books \n wherever you are", Colors.black, 24, FontWeight.bold),
              SizedBox(height: 20,),
               InkWell(
    onTap: (){Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context) => LoginPage()));},
      child: Container(
        margin: EdgeInsets.only(left: 20, right: 20),
      height: 60.0,
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width ,
      decoration: BoxDecoration(
        color: Colors.purple,
        borderRadius: BorderRadius.circular(12.0)
      ),child: MyTextView().myTextViewStatic(4.0, "Login", Colors.white, 24, FontWeight.bold)))
            ],
          ),
        ),
        
      ),
    );
  }
}