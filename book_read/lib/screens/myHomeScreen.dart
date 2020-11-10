import 'package:book_read/data.dart';
import 'package:book_read/screens/bookDetail.dart';
import 'package:book_read/screens/readBook.dart';
import 'package:book_read/widgets/myTextView.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class MyHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
         height: double.infinity,
         width: MediaQuery.of(context).size.width,
                      child: SingleChildScrollView(
              child: Column(
         mainAxisSize: MainAxisSize.min,
          children: [
            _header(context),
            SizedBox(height: 10),
            Container(
               padding: EdgeInsets.all(8.0),
              width: MediaQuery.of(context).size.width,
              alignment: Alignment.topLeft,
              child: MyTextView().myTextViewStatic(4.0, "Recently Read", Colors.black, 30.0, FontWeight.bold)),
          _buildList1(context),
          _buildList2()
          ],
        ),
                      ),
      ),
    );
  }

  _buildList1(context){
    return  Container(
      padding: EdgeInsets.all(8.0),
      width: MediaQuery.of(context).size.width ,
      height: 250,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        //physics: NeverScrollableScrollPhysics(),
        itemCount: bookItems.length,
        itemBuilder: (BuildContext context, int index) => GestureDetector(
          onTap: (){Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context) => BookDetail()));},
                  child: Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  padding: EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadiusDirectional.circular(12.0),
                      image: DecorationImage(image: NetworkImage(bookItems[index].image), fit: BoxFit.cover)
                    ),
                  ),
                ),
        ),
      ),
    );
  
  }
 _buildList2(){
    return  Container(
      padding: EdgeInsets.all(8.0),
      child: ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        itemCount: bookItems.length,
        itemBuilder: (BuildContext context, int index) => 
        GestureDetector(
          onTap: (){Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context) => BookDetail()));},
          child: Container(
                width: MediaQuery.of(context).size.width * 0.4,
                height: 150,
                padding: EdgeInsets.all(4.0),
                child: Card(
                  elevation: 1.0,
                     child: Stack(
                       alignment: FractionalOffset.topRight,
                       children: [
                         Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Container(
                    decoration: BoxDecoration(
                   
                            borderRadius: BorderRadiusDirectional.circular(12.0),
                            //image: DecorationImage(image: NetworkImage(bookItems[index].image), fit: BoxFit.cover)
                    ),
                    child: Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(14.0),
                                height: 130.0,
                                width: 120.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadiusDirectional.only( bottomStart:Radius.elliptical(50, 100) , topEnd: Radius.elliptical(50, 100), topStart: Radius.elliptical(50, 100), bottomEnd: Radius.elliptical(50, 100)),
                                  image: DecorationImage(image: NetworkImage(bookItems[index].image,scale:1))
                                ),),
                                Column( crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    MyTextView().myTextViewStatic(4.0, bookItems[index].name, Colors.black, 20.0, FontWeight.bold),
                                    MyTextView().myTextViewStatic(4.0, "by ${bookItems[index].author}", Colors.grey, 16.0, FontWeight.normal),
                                    SizedBox(
                                      height: 15.0, 
                                    ),
                                    Container(height: 20.0, width: 80.0,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      color:bookItems[index].category == "Love" ? Colors.red : Colors.green ,
                                      borderRadius: BorderRadius.circular(22.0)
                                    ),
                                    child: MyTextView().myTextViewStatic(4.0, bookItems[index].category, Colors.white, 12.0, FontWeight.normal),
                                    )

                                  ],
                                ),
                                
                            ],
                    ),
                  ),
                         ),
                         IconButton(icon: Icon(Icons.menu), onPressed: null)
                       ],
                     
                     ),
                ),
              ),
        )
      ),
    );
  
  }


  _header(context){
    return   Container(
                decoration: BoxDecoration(
                 borderRadius: BorderRadiusDirectional.only( bottomStart:Radius.elliptical(40, 40) ),
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: <Color>[
                       Colors.teal,
                       Colors.blue
                      ],
                    ),
                  ),
                height: MediaQuery.of(context).size.height /2,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.only(left:12.0,top: 12.0),
                      width: MediaQuery.of(context).size.width,
                      alignment: Alignment.centerLeft,
                      child: MyTextView().myTextViewStatic(4.0, "Hi Bhupendra!", Colors.white, 26.0, FontWeight.bold)),
                       Container(
                      padding: EdgeInsets.only(left:12.0),
                      width: MediaQuery.of(context).size.width,
                      alignment: Alignment.centerLeft,
                      child: MyTextView().myTextViewStatic(4.0, "Wanna read your last book?", Colors.white, 16.0, FontWeight.normal)),
                    
                    
                    SizedBox(
                      height: 15,
                    ),
                    

                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                        Container(
                        height: 180.0,
                        width: 180.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadiusDirectional.only( bottomStart:Radius.elliptical(50, 100) , topEnd: Radius.elliptical(50, 100), topStart: Radius.elliptical(50, 100), bottomEnd: Radius.elliptical(50, 100)),
                          image: DecorationImage(image: NetworkImage("https://covers.openlibrary.org/b/olid/OL9217664M-M.jpg",scale:1))
                        ),
                      ),

                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            MyTextView().myTextViewStatic(4.0, "Eleven Minutes", Colors.white, 26.0, FontWeight.bold),
                            MyTextView().myTextViewStatic(4.0, "by Paulo Coelho", Colors.white, 16.0, FontWeight.normal),
                            SizedBox(
    height: 10,
  ),
                            
                            LinearPercentIndicator(
                width: 140.0,
                lineHeight: 14.0,
                percent: 0.5,
                 center: Text(
                  "50.0%",
                  style: new TextStyle(fontSize: 12.0, color: Colors.white),
                ),
                linearStrokeCap: LinearStrokeCap.roundAll,
                backgroundColor: Colors.grey,
                progressColor: Colors.blue,
              ),
  SizedBox(
    height: 10,
  ),
              InkWell(
                onTap: (){Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context) => ReadBook()));},
                              child: Container(
                  height: 40,
                  width: 160,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12)
                  ),
                  child: MyTextView().myTextViewStatic(4.0, "Contiune reading", Colors.black, 14.0, FontWeight.w500),
                ),
              )
                          ],
                        ),
                      )
                      ],),
                    )
                  ],
                ),
               );
            

  }
}