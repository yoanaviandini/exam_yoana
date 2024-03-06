import 'package:flutter/material.dart';
import 'package:flutter_application_1/loginscreen.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
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
            children: [
              const SizedBox(
                height: 100.0,
              ),
              const Text(
                'Welcome to Oboard!',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              const Text(
                'Let’s help to meet up your tasks.',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 15.0,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 1,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    labelText: 'Enter Your full Name',
                  ),
                ),
              ),
              SizedBox(
                height: 1,
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
                height: 1,
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
              SizedBox(
                height: 1,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    labelText: 'Confirm Email',
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.fromLTRB(73, 10, 73, 15),
                  backgroundColor: Color.fromARGB(255, 26, 85, 93),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginPage(),
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
                          text: 'Already have an account ? ',
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
          ),
        ],
      ),
    );
  }
}
