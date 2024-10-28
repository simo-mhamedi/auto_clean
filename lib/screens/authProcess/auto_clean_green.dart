import 'package:auto_clean/screens/authProcess/choose_mark.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: AutoCleanGreen(),
  ));
}

class AutoCleanGreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: Color(0xFF70B237),
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Car image
                Image.network(
                  'https://s3-alpha-sig.figma.com/img/7cbc/c770/c1bb81fd88530a15c68cc597a2ad0bca?Expires=1730073600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=DQFxfh8VIYnjHbkkjgpGcRqn92XwVgrQ8Ov52~QxlXLkYt95No4pt5sH~7SEIN5-VUBIOYdgGem2wIBcUw5CQYM~PcY8FLJcdBTHZ9Rx0VsSldRuYOh36-dCJiXkPhcckpWb4PknKkiViy0MXMwZkU9Q8HOlLlNb2Nb0rf-DVrfu5Go0LZ1dFMFhXZYWxyMbNds3N6HNr6dnQ97v-OrC3Pe8I9HA~FhFABaLLeRd0TvLlyDiQ4G44AlTCKVqUejwY5acQH8bkpRh00ath54H7cGQN6xqHG-QQbpKkC5ZOA2gOAk-KkDaK4IWkkP38F2o5955KJpSw7FzB6Mu~8rZtQ__', // Replace with your image URL
                  height: 400,
                ),
                SizedBox(height: 30),
                Text(
                  'AutoClean Express',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20),

                // Description text
                Text(
                  'Découvrez les stations de lavage près de chez vous',
                  style: TextStyle(
                      fontSize: 18,
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
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
