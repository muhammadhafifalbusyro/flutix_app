import 'package:flutix_app/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'login_page.dart';

class BoardingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/logo.png',height: 130, width: 136,fit:BoxFit.contain),
              SizedBox(height: 30,),
              Text('New Experience',style: TextStyle(fontFamily: 'Raleway',fontWeight: FontWeight.w700,fontSize: 20),textAlign: TextAlign.center,),
              SizedBox(height: 20),
              Text('Watch a new movie mucheasier than any before',style: TextStyle(fontFamily:'Raleway',fontSize: 16,color: Color(0xFFADADAD)),textAlign:TextAlign.center ,),
              SizedBox(height: 20,),
              CustomButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                },
                text: 'Get Started',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
