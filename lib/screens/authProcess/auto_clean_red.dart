import 'package:auto_clean/screens/authProcess/choose_mark.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: AutoCleanRed(),
  ));
}

class AutoCleanRed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Car image
                Image.network(
                  'https://s3-alpha-sig.figma.com/img/5d58/3446/0ae9c2610f3facb522d27abc6f92a110?Expires=1730073600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=XWwWY-MtFs6rOJltDt5DJMHxAEh2KA~RTjFE-O1jrWnfzqUirg3bhjoI69dg2hHSF3rOqfi-TAsQDCvwRyWCanuBFzj~rBMe7Nn4-oCqvsCBruq9iVURg0AxZ0Ds0di2LaBH4Vu6Gnm0LRZPGPJBCxQuA1tX1mcp-43I3-KPuPjN2O33jAlW88lZXxuy3ay3IGxN3X-H8UCve7~5iZZ7NCl6uFEfDiqkwfnz7sE5-PYFsG6GxPBmYYYATYt1HwQ5pPivMs2Njps~hIEPv97tWxMlmd9EumM-X4UK~5DBgcDeAULm2z3luS3LtlP1yvmRFKVJRyahPWvPfFk92UlSYA__', // Replace with your image URL
                  height: 400,
                ),
                SizedBox(height: 30),

                // Description text
                Text(
                  'AutoClean Express',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 50),
                SizedBox(
                  width: 450,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ChooseMark()),
                      );
                      // Add navigation or action here
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white, // Button color
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(5), // Reduced border radius
                      ),
                    ),
                    child: Text(
                      'Reserver online',
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                  ),
                )
                // Button
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
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
