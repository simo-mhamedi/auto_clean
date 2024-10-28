import 'package:auto_clean/screens/authProcess/choose_mark.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: LandingPage(),
  ));
}

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(right: 100.0), // Adjust right margin
                  child: Image.network(
                    'https://s3-alpha-sig.figma.com/img/a4dd/f8dc/a9b1ae9f65b28e26b7f2d435a2d41047?Expires=1730073600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=l8XSnipEa09AzoFRDTRDOF~VkK6N0tSrE5rLue9OsnxBqsWFiNiWfWif7HsQ4yjRaD9I~hHWa5HK4qHkIrTEenK5RRsqa0i6WJlmtKuTBfB6ovog9vzoYFg89OdwqTGVtICTfvlvoiFAe10kAcmcmyp7sgyu77HAGC6vq1XdOaIDCThKunM~IKHmI0aNdkCdwELSzK4bRlXJsseD-eIbQcTiTL9-0u6hbYalqhYzWQ0qqlkEvHDeWGiXhDP7C1LnjNz3Flk2OQswk6scUhg2hklvoOc5iK01zb9ngL31U3MECR-eDxJqgaaKYqxroNeSeQI08XbMthUyQukShA-rWA__', // Replace with your image URL
                    height: 400,
                    width: 450,
                  ),
                ),
                // Car image

                SizedBox(height: 30),

                // Description text
                Text(
                  'Découvrez les stations de lavage près de chez vous',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
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
                      backgroundColor: Colors.green, // Button color
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(5), // Reduced border radius
                      ),
                    ),
                    child: Text(
                      'Choisissez votre marque',
                      style: TextStyle(fontSize: 16, color: Colors.white),
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
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
