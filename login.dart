import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:login_form/screens/homescreen/home.dart';
import 'package:login_form/screens/loginopenscreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  bool passwordVisible=false;
  void initState(){
    super.initState();
    passwordVisible=true;
  }

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
                sigmaX: 2,
                sigmaY: 2,
              ),
              child: Container(
                height: height * 0.55,
                width: height * 0.5,
                padding: EdgeInsets.symmetric(horizontal: width * 0.04),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.1),
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
                    SizedBox(height: height * 0.024),
                    Text(
                      'Log In',
                      style: TextStyle(
                        fontSize: height * 0.03,
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                    ),

                    /// email field
                    SizedBox(height: height * 0.03),
                    TextFormField(
                      cursorColor: Colors.white,
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                      decoration: InputDecoration(
                        icon:Icon(Icons.account_circle),
                        hintText: 'Enter your email',
                        hintStyle: TextStyle(
                          fontSize: 12,
                          color: Colors.white.withOpacity(0.8),
                          fontWeight: FontWeight.bold,
                          ),
                        contentPadding: const EdgeInsets.symmetric(horizontal: 0),
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white.withOpacity(0.3),
                            width: 1.0,
                          ),
                        ),
                        focusedBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                            strokeAlign:BorderSide.strokeAlignCenter ,
                            width: 0.5,
                          ),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white.withOpacity(0.3),
                            width: 0.5,
                          ),
                        ),
                      ),
                    ),

                    /// password field
                    SizedBox(height: height * 0.005),
                    TextFormField(
                      cursorColor: Colors.white,
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                      obscureText: passwordVisible,
                      decoration: InputDecoration(
                        icon:Icon(Icons.password),
                        hintText: 'Enter your password',
                        suffixIcon:IconButton(
                            icon:Icon(passwordVisible?Icons.visibility:Icons.visibility_off),
                            onPressed: (){
                              setState(() {
                                passwordVisible=!passwordVisible;
                              });
                            }),
                        hintStyle: TextStyle(
                          fontSize: 12,
                          color: Colors.white.withOpacity(0.8),
                          fontWeight: FontWeight.bold,
                        ),
                        contentPadding: const EdgeInsets.symmetric(horizontal: 0),
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white.withOpacity(0.3),
                            width: 1.0,
                          ),
                        ),
                        focusedBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                            width: 1.0,
                          ),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white.withOpacity(0.3),
                            width: 1.0,
                              strokeAlign:BorderSide.strokeAlignCenter,
                          ),
                        ),
                      ),
                    ),

                    ///
                    SizedBox(height: height * 0.02),
                    const Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                      "Forgot Password?",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),

                    /// btn
                    SizedBox(height: height * 0.04),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>hello()));
                      },
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size.fromHeight(height * 0.058),
                      ),
                      child: const Center(
                        child: Text(
                          'Login',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),

                    ///
                    SizedBox(height: height * 0.016),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Don\'t have an account?',
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.white.withOpacity(0.6),
                          ),
                        ),
                        const SizedBox(width: 5.0),
                        GestureDetector(
                        onTap: () {   Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterScreen())); },
                        child: Text( 'Register here',
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        ),
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
