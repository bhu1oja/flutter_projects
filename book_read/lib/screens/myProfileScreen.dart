import 'package:book_read/widgets/myTextView.dart';
import 'package:flutter/material.dart';

class MyProfileScreen extends StatelessWidget {
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
                height: MediaQuery.of(context).size.height * 0.44,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 180.0,
                      width: 180.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(1555)),
                        image: DecorationImage(image: NetworkImage("https://avatars1.githubusercontent.com/u/25497614?s=460&u=9b32fb3f873f19927bb0022a59acc7987a11d571&v=4"))
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    MyTextView().myTextViewStatic(4.0, "Bhupendra Ojha", Colors.white, 26.0, FontWeight.bold)
                  ],
                ),
               ),
             profileItem(Icons.settings, 'Settings'),
                      Divider(height: 1, color: Colors.grey,),
                      profileItem(Icons.help, 'Help Center'),
                      Divider(height: 1, color: Colors.grey,),
                      profileItem(Icons.info, 'About'),
                      Divider(height: 1, color: Colors.grey,),
                      profileItem(Icons.exit_to_app, 'Logout'),
                      Divider(height: 1, color: Colors.grey,),
          ],),
        ),
      ),
    
    );
  }

  Widget profileItem(IconData icon, String title, {Function action}) {
    return InkWell(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            Icon(icon, color: Colors.purple, size: 26),
            SizedBox(width: 15),
            Expanded(
                child: Text(title,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, letterSpacing: 0.5, color: Colors.black))
            ),
            SizedBox(width: 15),
            Icon(Icons.navigate_next, color: Colors.grey, size: 26),
          ],
        ),
      ),
      onTap: () => action(),
    );
  }
}