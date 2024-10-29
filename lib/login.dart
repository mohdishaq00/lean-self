import 'dart:ui';

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;

    return SafeArea(
      child: Scaffold(
        // backgroundColor: const Color.fromARGB(255, 35, 41, 107),
        body: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              'assets/image.png',
              fit: BoxFit.cover,
            ),
            // Positioned.fill(
            // child: BackdropFilter(
            // filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
            // child: Container(
            //   color: Colors.black.withOpacity(0),
            //  ),
            // ),
            // ]),
            Center(
              child: ClipRRect(
                  child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                child: Container(
                  width: width * 0.25,
                  height: height * 0.5,
                  // padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(0, 255, 255, 255)
                        .withOpacity(0.1), // Semi-transparent white container
                    borderRadius: BorderRadius.circular(15), // Rounded corners
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        'Create An Account',
                        style: TextStyle(
                          color: Color.fromARGB(255, 9, 96, 167),
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Username',
                            hintStyle:
                                TextStyle(color: Color.fromARGB(94, 0, 0, 0)),
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: TextField(
                          obscureText: true, // For password field
                          decoration: InputDecoration(
                            hintText: 'Password',
                            hintStyle:
                                TextStyle(color: Color.fromARGB(94, 0, 0, 0)),
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('Already have an account?'),
                          TextButton(
                              onPressed: () {}, child: const Text('Sign in'))
                        ],
                      ),
                      const SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text('Login'),
                      ),
                       const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          //                 // Text('hi'),
                          //                 // Text('hello'),
                            // roundButton('assets/image copy 2.png'),
                            // roundButton('assets/google.png'),
                        ],
                      )
                    ],
                  ),
                ),
              )),
            ),
          ],
        ),
      ),
    );
  }
}

Widget roundButton(String img) {
  return ElevatedButton(
    onPressed: () {},
    style: ElevatedButton.styleFrom(
        shape: const CircleBorder(), minimumSize: const Size(50, 50)),
    child: Image.asset(
      img,
      height: 30,
      width: 30,
    ),
  );
}
