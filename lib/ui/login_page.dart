import 'package:flutix_app/ui/homepage.dart';
import 'package:flutix_app/ui/register_page.dart';
import 'package:flutix_app/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';

  final emailController = TextEditingController();
  final passwordCOntroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Baris 1: Logo
              SizedBox(height: 100,),
              Align(
                alignment: Alignment.centerLeft,
                child: Image.asset('assets/images/logo.png', width: 100, height: 100),
              ),
              SizedBox(height: 20,),
      
              // Baris 2: Welcome Text
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Welcome Back,',
                  style: TextStyle(fontSize: 20,fontFamily: 'Raleway',fontWeight: FontWeight.bold),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Explorer!',
                  style: TextStyle(fontSize: 20,fontFamily: 'Raleway',fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 20,),
              // Baris 3: Email Address TextField
              CustomTextField(
                obscureText: false,
                hintText: 'Email Address',
                labelText: 'Email Address',
                borderColor: Colors.black,
                borderRadius: 6.0,
                borderWidth: 1.0,
                onChanged: (value) {
                  setState(() {
                    email= value;
                  });
                },
              ),
              SizedBox(height: 20),
              CustomTextField(
                obscureText: true,
                hintText: 'Password',
                labelText: 'Password',
                borderColor: Colors.black,
                borderRadius: 6.0,
                borderWidth: 1.0,
                onChanged: (value) {
                  setState(() {
                    password= value;
                  });
                },
              ),
              SizedBox(height: 20,),
              // Baris 5: Tombol Lingkaran
              SizedBox(
                height: 60,
                width: 60,
                child: ElevatedButton(
                  onPressed: () {
                    // Tambahkan logika aksi tombol di sini
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                  },
                  child: Icon(Icons.arrow_forward),
                  style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                    primary: Color(0xFF503E9D)
                  ),
                ),
              ),
              SizedBox(height: 20,),
             GestureDetector(
              onTap: () {
                // Navigasi ke halaman register ketika teks "Klik" diklik
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegisterPage()),
                );
              },
              child: RichText(
                text: TextSpan(
                  text: 'Start fresh now? ',
                  style: TextStyle(color: Colors.grey, fontFamily: 'Raleway'),
                  children: [
                    TextSpan(
                      text: 'Sign Up',
                      style: TextStyle(color: Color(0xFF503E9D),fontFamily: 'Raleway'),
                    ),
                  ],
                ),
              ),
            )
            ],
          ),
        ),
      ),
    );
  }
}