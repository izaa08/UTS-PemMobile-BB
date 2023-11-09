import 'package:flutter/material.dart';
import 'package:mobile_1/screens/homescreen.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(
      {super.key,
      required this.bmiResult,
      required this.resultText,
      required this.interpretation});

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'BMI Calculator',
          style: TextStyle(fontSize: 20, color: Color(0xFF00BB6E)),
        ),
        centerTitle: true,
        elevation: 0,
        iconTheme: const IconThemeData(color: Color(0xFF00BB6E)),
      ),
      body: Center(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: size.height * 0.1),
            
            SizedBox(height: size.height * 0.01),
            Text(
              '$resultText\n\nBMI:',
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w500,
                color: Color(0xFF00BB6E),
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              bmiResult,
              style: const TextStyle(
                fontSize: 80,
                fontWeight: FontWeight.w900,
                color: Color(0xFF00BB6E),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Text(
                interpretation,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF00BB6E),
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: size.height * 0.08),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()),
                );
              },
              child: Padding(
                padding: EdgeInsets.only(
                    right: 12.0, bottom: 30, left: size.width * 0.3),
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: size.width * 0.65,
                    height: size.height * 0.07,
                    decoration: BoxDecoration(
                      color: const Color(0xFF00BB6E),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Center(
                      child: Padding(
                        // padding: EdgeInsets.only(left: size.width * 0.1),
                        padding:
                            EdgeInsets.symmetric(horizontal: size.width * 0.05),
                        child: const ListTile(
                          title: Text(
                            'coba lagi!',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          trailing:
                              Icon(Icons.arrow_forward, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
