import 'dart:ui';

import 'package:book_read/data.dart';
import 'package:book_read/screens/readBook.dart';
import 'package:book_read/widgets/myTextView.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class BookDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String bookText = "Brian Fairrington is a nationally syndicated, award-winning editorial cartoon-ist and illustrator and one of the few U.S. cartoonists whose political leanings are conservative. Brian began his career in the mid-1990s while he was a student at Arizona State University, where he began drawing cartoons for thestudent newspaper, the State Press.Arizona State University is home to the Walter Cronkite School of Journalism, one of the more prestigious journalism programs in the country. The news-paper is part of that program but is independently operated by the students. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum";

    return Scaffold(
     body: Stack(
       children: [
         Container(
            child: SingleChildScrollView(
              child: Column(
                children: [
                 _header(context),
                 Container(
                   padding: EdgeInsets.all(8.0),
                   child:
                  MyTextView().myTextViewStatic(4.0, bookText, Colors.black, 16.0, FontWeight.w400),)
              ],),
            ),
          ),
            Positioned(
                bottom: 20,
                left: 10,
                right: 10,
                child: _read(context)),
                Positioned(
                  top: 40,
                  left: 30,
                  right: 30,
                  child: _option(context))
       ],
     ),
    
    );
  }

  _option(context){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
children: [
  CircleAvatar(
    child: IconButton(icon: Icon(Icons.arrow_back), onPressed: (){Navigator.pop(context);}),
  ),
  CircleAvatar(
    child: IconButton(icon: Icon(Icons.menu), onPressed: (){}),
  )
],
    );
  }

_read(context){
  return InkWell(
    onTap: (){Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context) => ReadBook()));},
      child: Container(
      height: 60.0,
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width / 2,
      decoration: BoxDecoration(
        color: Colors.purple,
        borderRadius: BorderRadius.circular(12.0)
      ),
      
      child: MyTextView().myTextViewStatic(4.0, "Read", Colors.white, 18, FontWeight.bold)),
  );
}

  _header(context){
    return  Container(
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
                height: MediaQuery.of(context).size.height / 1.8,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    
                    Container(
                      height: 180.0,
                      width: 180.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(52.0),
                        image: DecorationImage(image: NetworkImage("https://covers.openlibrary.org/b/olid/OL25648843M-M.jpg"))
                      ),
                      child:  BackdropFilter(filter:  ImageFilter.blur(sigmaX: 600.0, sigmaY: 1000.0)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    MyTextView().myTextViewStatic(4.0, "Half GirlFriend", Colors.white, 26.0, FontWeight.bold),
                    MyTextView().myTextViewStatic(4.0, "By Chetan Bhagat", Colors.white, 16.0, FontWeight.normal),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            MyTextView().myTextViewStatic(4.0, "Pages", Colors.white, 16.0, FontWeight.normal),
                            MyTextView().myTextViewStatic(4.0, "620", Colors.white, 18.0, FontWeight.bold),

                          ],
                        ),
                        Container(
                          color: Colors.white,
                          height: 30,
                          width: 1
                        ),
                         Column(
                          children: [ 
                            MyTextView().myTextViewStatic(4.0, "Language", Colors.white, 16.0, FontWeight.normal),
                            MyTextView().myTextViewStatic(4.0, "ENG", Colors.white, 18.0, FontWeight.bold),

                          ],
                        ),
                         Container(
                          color: Colors.white,
                          height: 30,
                          width: 1
                        ),
                         Column(
                          children: [
                            MyTextView().myTextViewStatic(4.0, "Read 42%", Colors.white, 16.0, FontWeight.normal),
                            LinearPercentIndicator(
                width: 100.0,
                lineHeight: 14.0,
                percent: 0.4,
                
                linearStrokeCap: LinearStrokeCap.roundAll,
                backgroundColor: Colors.grey,
                progressColor: Colors.white,
              ),

                          ],
                        )
                      ],
                    )
                  ],
                ),
               );
            
  }
}