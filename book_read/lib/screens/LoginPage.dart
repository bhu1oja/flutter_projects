import 'package:book_read/main.dart';
import 'package:book_read/widgets/myTextView.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailTec = new TextEditingController();
  final TextEditingController _passTec = new TextEditingController();
     void _showDialog(context,message, Icon iconData) {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return AlertDialog(
            content: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
              height: 100,
              width: 100,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Center(
                      child: SizedBox(
                          height: 50,
                          width: 50,
                          child: iconData)),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Center(child: Text(message)),
                  ),
                ],
              )),
        ));
      },
    );
  }
void _verifyEmail(context,email){
  if(!email.contains('@')){
   return _showDialog(context, "Email must contain @ ", Icon(Icons.error, color: Colors.red,));
  }else{
    Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context) => MyHomePage()));
  }
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
               SizedBox(height:
               40),
             Container(
               child: Image.asset("assets/images/book.png"),
             ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              child: 

             TextField(
               controller: _emailTec,
  decoration: new InputDecoration(
      border: new OutlineInputBorder(
        borderRadius: const BorderRadius.all(
          const Radius.circular(10.0),
        ),
      ),
      filled: true,
      hintStyle: new TextStyle(color: Colors.grey[800]),
      hintText: "Email",
      fillColor: Colors.white70),
),),
              SizedBox(height:10),
               Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              child: 
             TextField(
               controller: _passTec,
               obscureText: true,
  decoration: new InputDecoration(
      border: new OutlineInputBorder(
        borderRadius: const BorderRadius.all(
          const Radius.circular(10.0),
        ),
      ),
      filled: true,
      hintStyle: new TextStyle(color: Colors.grey[800]),
      hintText: "Password",
      fillColor: Colors.white70),
),),
               
              SizedBox(height:10),
               InkWell(
    onTap: (){
      if( _emailTec.text.toString().trim() == "" || _passTec.text.toString().trim() == "" ){
          _showDialog(context, "Enter all data!!!", Icon(Icons.error,color: Colors.red,));
      }else{
        _verifyEmail(context, _emailTec.text.toString().trim());
      }
      
            },
      child: Container(
        margin: EdgeInsets.only(left: 20, right: 20),
      height: 60.0,
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width ,
      decoration: BoxDecoration(
        color: Colors.purple,
        borderRadius: BorderRadius.circular(12.0)
      ),child: MyTextView().myTextViewStatic(4.0, "Login", Colors.white, 24, FontWeight.bold))),
      SizedBox(height: 20),      MyTextView().myTextViewStatic(4.0, "Forgot Password ? ", Colors.purple, 16.0, FontWeight.normal)
            ],
          ),
        ),
        
      ),
    );
  }
}