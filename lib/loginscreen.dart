import 'package:flutter/material.dart';
import 'package:flutter_application_1/dashboard.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: -20,
            left: -100,
            child: Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                color: Color.fromRGBO(143, 225, 251, 50),
                shape: BoxShape.circle,
              ),
            ),
          ),
          Positioned(
            top: -100,
            left: -20,
            child: Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                color: Color.fromRGBO(143, 225, 251, 50),
                shape: BoxShape.circle,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Welcome back',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Transform.translate(
                offset: const Offset(10, 10),
                child: Image.asset(
                  'assets/orang.png',
                  height: 200,
                  width: 200,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    labelText: 'Enter Email',
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    labelText: 'Enter Password',
                  ),
                ),
              ),
              Container(
                  margin: EdgeInsets.fromLTRB(10, 15, 10, 10),
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                      style: TextStyle(
                        fontFamily: 'Poppins-Regular',
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        height: 1.5699999332,
                        color: Color(0xff000000),
                      ),
                      children: [
                        TextSpan(
                          text: 'Forget password ?',
                          style: TextStyle(
                            fontFamily: 'Poppins-Regular',
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            height: 1.5699999332,
                            color: Color.fromRGBO(80, 194, 201, 1),
                          ),
                        ),
                      ],
                    ),
                  )),
              SizedBox(
                height: 10.0,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.fromLTRB(100, 20, 100, 20),
                  backgroundColor: Color.fromARGB(255, 26, 85, 93),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Dashboard(),
                    ),
                  );
                },
                child: const FittedBox(
                  child: Text(
                    'Get Started',
                    style: TextStyle(
                      color: Color.fromRGBO(240, 244, 243, 1),
                      fontFamily: 'Poppins',
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Container(
                  margin: EdgeInsets.fromLTRB(20, 15, 10, 10),
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                      style: TextStyle(
                        fontFamily: 'Poppins-Regular',
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        height: 1.5699999332,
                        color: Color(0xff000000),
                      ),
                      children: [
                        TextSpan(
                          text: 'Dont have acount? ',
                        ),
                        TextSpan(
                          text: 'Sign In',
                          style: TextStyle(
                            fontFamily: 'Poppins-Regular',
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            height: 1.5699999332,
                            color: Color.fromRGBO(80, 194, 201, 1),
                          ),
                        ),
                      ],
                    ),
                  )),
            ],
          )
        ],
      ),
    );
  }
}
