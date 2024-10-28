import 'package:auto_clean/screens/authProcess/auto_clean_green.dart';
import 'package:auto_clean/screens/authProcess/auto_clean_red.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ChooseMark(),
  ));
}

class ChooseMark extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  child: Padding(
                    padding: const EdgeInsets.only(
                    bottom: 50.0), // Add margin below the text
                    child: Text(
                      'Choisissez votre Marque',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                )
                // Description text

                ,
                SizedBox(
                  width: 450,
                  height: 200,
                  child: ElevatedButton(
                    onPressed: () {
                       Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AutoCleanGreen()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white, // Button color
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(7),
                             side: BorderSide(
                          color: Colors.black, // Border color
                          width: 2, // Border width
                        ), // Reduced border radius
                      ),
                    ),
                    child: Text(
                      'AutoClean Express',
                      style: TextStyle(fontSize: 21, color: Colors.black),
                    ),
                  ),
                ),
                // Button
                SizedBox(height: 50),
                SizedBox(
                  width: 450,
                  height: 200,
                  child: ElevatedButton(
                    onPressed: () {
                         Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AutoCleanRed()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white, // Button color
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(7),
                             side: BorderSide(
                          color: Colors.black, // Border color
                          width: 2, // Border width
                        ), // Reduced border radius
                      ),
                    ),
                    child: Text(
                      'AutoClean Express',
                      style: TextStyle(fontSize: 21, color: Colors.black),
                    ),
                  ),
                )
              ],
            ),
          ),
          // Title positioned at the top-right
          Positioned(
            top: 40, // Distance from the top
            right: 20, // Distance from the right
            child: Text(
              'Reserver Casual',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
