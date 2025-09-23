import 'package:flutter/material.dart';

const Color bgColor = Color(0xFF202020);
const Color primaryColor = Color(0xFFFFBD73);

class Assignmnet1 extends StatelessWidget {
  const Assignmnet1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 5,
            child: Image.asset('assets/images/baking.jpg', fit: BoxFit.cover),
          ),
          Expanded(
            flex: 5,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0),
                      child: Text(
                        'Sign in'.toUpperCase(),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 16.0),
                      child: Text(
                        'Sign up'.toUpperCase(),
                        style: TextStyle(color: primaryColor, fontSize: 12),
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          icon: Icon(
                            Icons.alternate_email,
                            color: primaryColor,
                          ),
                          hintText: 'Email Address',
                        ),
                      ),
                      SizedBox(height: 16),
                      TextField(
                        decoration: InputDecoration(
                          icon: Icon(Icons.lock_open, color: primaryColor),
                          hintText: 'Password',
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.all(16),
                  child: Row(
                    children: [
                      Ink(
                        decoration: ShapeDecoration(
                          shape: CircleBorder(
                            side: BorderSide(color: Colors.grey),
                          ),
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.android, color: Colors.grey),
                        ),
                      ),
                      SizedBox(width: 16),
                      Ink(
                        decoration: ShapeDecoration(
                          shape: CircleBorder(
                            side: BorderSide(color: Colors.grey),
                          ),
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.message, color: Colors.grey),
                        ),
                      ),
                      Spacer(),
                      Ink(
                        decoration: ShapeDecoration(
                          shape: CircleBorder(),
                          color: primaryColor,
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.arrow_forward, color: bgColor),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 8),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
