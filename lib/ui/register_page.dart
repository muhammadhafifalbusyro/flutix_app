import 'package:flutix_app/ui/homepage.dart';
import 'package:flutix_app/ui/register_page.dart';
import 'package:flutix_app/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';


class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  String email = '';
  String password = '';
  String confirmPassword = '';
  File? _image;

  final emailController = TextEditingController();
  final passwordCOntroller = TextEditingController();


  Future<void> _pickImage() async {
    final picker = ImagePicker();
    final pickedImage = await picker.pickImage(source: ImageSource.gallery);

    setState(() {
      if (pickedImage != null) {
        _image = File(pickedImage.path);
      } else {
        print('No image selected.');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                children: [
                  Icon(Icons.arrow_back, color: Colors.black, size: 24,),
                  SizedBox(width: 12,),
                  Text('Create New Account', style: TextStyle(fontFamily: 'Raleway',fontSize: 20,color: Colors.black,fontWeight: FontWeight.w500),),
                  SizedBox(width: 50,)
                ],
              ),
              SizedBox(height: 12,),
              
              Stack(
                alignment: Alignment.center,
                children: [
                  // Circle Blank or Uploaded Photo
                  Container(
                    width: 90,
                    height: 90,
                    margin: EdgeInsets.all(16.0), // Add margins to the container
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey,
                      image: _image != null
                          ? DecorationImage(
                              image: FileImage(_image!),
                              fit: BoxFit.cover,
                            )
                          : null,
                    ),
                    child: _image == null
                        ? Icon(
                            Icons.camera_alt,
                            size: 40,
                            color: Colors.white,
                          )
                        : null,
                  ),
                  // Circle Button Plus
                  Positioned(
                    bottom:0, // Adjust the top margin as needed
                    child: GestureDetector(
                      onTap: _pickImage,
                      child: Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.blue,
                        ),
                        child: Icon(
                          Icons.add,
                          size: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 12,),
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
              SizedBox(height: 20),
              CustomTextField(
                obscureText: true,
                hintText: 'Confirm Password',
                labelText: 'Confirm Password',
                borderColor: Colors.black,
                borderRadius: 6.0,
                borderWidth: 1.0,
                onChanged: (value) {
                  setState(() {
                    confirmPassword= value;
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
           
            ],
          ),
        ),
      ),
    );
  }
}