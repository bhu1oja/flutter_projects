import 'package:book_read/data.dart';
import 'package:book_read/screens/bookDetail.dart';
import 'package:book_read/widgets/myTextView.dart';
import 'package:flutter/material.dart';

class BookSelf extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
              child: Container(
          width: MediaQuery.of(context).size.width,
          child:Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _customAppBar(context),
              _builderItem(context)
            ],
          )
        ),
      ),
    );
  }
  _customAppBar(context){
    return Container(
      margin: EdgeInsets.only(top:12.0),
      height: 100,
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          MyTextView().myTextViewStatic(4.0, "BookShelf", Colors.black, 30.0, FontWeight.bold),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.search,size: 40,),
              Icon(Icons.add,size: 40,)
            ],
          )
        ],
      ),
    );
  }

_builderItem (context){
  return Container(
    child: GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,childAspectRatio: MediaQuery.of(context).size.width /
                (MediaQuery.of(context).size.height / 1.2)),
        itemCount: bookItems.length,
        shrinkWrap: true,
        padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
                  onTap: (){
                    //onTab Method
                    Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context) => BookDetail()));
                    },
                    child: Container(
                    width: MediaQuery.of(context).size.width * 0.4,
                    padding: EdgeInsets.all(4.0),
                    child: Card(
                      elevation: 4.0,
                      //color: Colors.blue,
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(image: NetworkImage(bookItems[index].image), fit: BoxFit.cover)
                        ),
                      ),
                    ),
                  ),
                );
          
        },
      ),
  );
 
}
}