import 'package:book_read/widgets/myTextView.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ReadBook extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String bookText = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of de Finibus Bonorum et Malorum (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, Lorem ipsum dolor sit amet.., comes from a line in section 1.10.32. There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.Mauris tincidunt posuere aliquet. Cras consectetur vestibulum consequat. Vestibulum enim purus, suscipit ac justo id, scelerisque pulvinar nisl. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris id placerat dui. Nunc convallis, orci sed fermentum dapibus, augue elit malesuada lorem, ac interdum leo felis in tellus. Nulla pretium orci in lectus venenatis facilisis ac nec dolor. Nunc porttitor, ex vitae ornare scelerisque, mi tellus posuere eros, in pharetra elit diam id neque. Ut ex velit, commodo sit amet arcu ut, luctus sodales felis. Quisque non euismod mi. Sed interdum non lectus vel auctor. Proin feugiat consequat diam in porta. Praesent consectetur, justo a laoreet accumsan, metus nisi facilisis nisl, vel efficitur erat dui vel sapien. Phasellus quis nisl quis lacus euismod iaculis vel eget arcu. Suspendisse semper libero enim, non aliquam diam gravida ac.Aliquam erat volutpat. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc faucibus ultrices posuere. Quisque aliquet leo ut velit fringilla, in maximus odio pellentesque. Aliquam non porttitor eros. Curabitur ut pharetra leo. Aliquam erat volutpat. Aenean gravida tristique ligula, vel hendrerit sem rhoncus congue. Suspendisse lobortis sapien sit amet eros egestas ultrices. Suspendisse rutrum gravida neque, ut tincidunt velit pellentesque nec. Cras volutpat aliquet ipsum sed tristique. Ut semper lacus tortor, quis dictum enim lacinia volutpat. Sed tempor ornare eleifend.";
    return Scaffold(
      body: Stack(
        children: [
          Container(color: Colors.yellow.withAlpha(80),
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.all(8.0),
              child: MyTextView().myTextViewStatic(4.0, bookText, Colors.black, 14.0, FontWeight.w400)),
          ),),
           Positioned(
                top: 20,
                left: 10,
                right: 10,
                child: _option(context)),
             
        ],
      ),
    );
  } 
_read(context){
  return InkWell(
    onTap: (){Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context) => ReadBook()));},
      child: Container(
      height: 60.0,
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width ,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.0)
      ),
      
      child: LinearPercentIndicator(
                width: 140.0,
                lineHeight: 14.0,
                percent: 0.5,
                 center: Text(
                  "Page 90/2000",
                  style: new TextStyle(fontSize: 12.0, color: Colors.white),
                ),
                linearStrokeCap: LinearStrokeCap.round,
                backgroundColor: Colors.grey,
                progressColor: Colors.blue,
              ))
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
}