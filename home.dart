import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:login_form/constants/constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_form/screens/loginscreen/login.dart';
import 'package:login_form/widgets/customtext.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPassController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      /// body
      body: Container(
        height: height,
        width: width,
        decoration: const BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
            image: AssetImage('assets/sportslogin.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16.0),
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 4,
                sigmaY: 4,
              ),
              child: Container(
                height: height * 0.55,
                width: height * 0.5,
                padding: EdgeInsets.symmetric(horizontal: height * 0.03),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(16.0),
                  border: Border.all(
                    color: Colors.white,
                    width: 1.0,

                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    /// heading
                    SizedBox(height: height * 0.02),
                    Text(
                      'Register',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                        fontSize: height * 0.03,
                      ),
                    ),

                    /// name field
                    SizedBox(height: height * 0.03),
                    CustomTextField(
                      controller: nameController,
                      hintText: 'Enter your name',
                    ),

                    /// email field
                    SizedBox(height: height * 0.01),
                    CustomTextField(
                      controller: emailController,
                      hintText: 'Enter your email',
                    ),

                    /// password field
                    SizedBox(height: height * 0.01),
                    CustomTextField(
                      controller: passwordController,
                      obscureText: true,
                      hintText: 'Enter your password',
                    ),

                    /// confirm password field
                    SizedBox(height: height * 0.01),
                    CustomTextField(
                      controller: confirmPassController,
                      obscureText: true,
                      hintText: 'Enter password again',
                    ),

                    /// btn
                    SizedBox(height: height * 0.02),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        minimumSize: const Size.fromHeight(45),
                      ),
                      child: Center(
                        child: Text(
                          'Register',
                          style: GoogleFonts.poppins(
                            fontSize: 17,
                            color: Colors.black,
                            fontWeight: FontWeight.w500
                          ),
                        ),
                      ),
                    ),

                    /// already account
                    SizedBox(height: height * 0.01),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Already have an account?',
                          style: GoogleFonts.poppins(
                            fontSize: 10,
                            color: Colors.white.withOpacity(0.7),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        TextButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
                        }, child: Text('Login',
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            color: Colors.white,
                          ),
                        ),),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
