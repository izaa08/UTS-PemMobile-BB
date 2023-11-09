import 'package:flutter/material.dart';
import 'package:mobile_1/screens/hwscreen.dart';
import 'package:mobile_1/widgets/nextbutton.dart';
import 'package:mobile_1/widgets/textcontainer.dart';

class AgeScreen extends StatefulWidget {
  const AgeScreen({super.key});

  @override
  State<AgeScreen> createState() => _AgeScreenState();
}

class _AgeScreenState extends State<AgeScreen> {
  TextEditingController ageController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'BMI Calculator',
          style: TextStyle(fontSize: 20),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TextContainer(size: size, text: 'saya berumur'),
            SizedBox(height: size.height * 0.15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: size.width * 0.3,
                  height: size.height * 0.1,
                  child: TextField(
                    controller: ageController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: const UnderlineInputBorder(),
                      focusedBorder: UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.green.withOpacity(0.5)),
                      ),
                      disabledBorder: UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.green.withOpacity(0.5)),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.green.withOpacity(0.5)),
                      ),
                      contentPadding: const EdgeInsets.only(top: 20),
                    ),
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF00BB6E),
                    ),
                    onChanged: (value) {
                      setState(() {});
                    },
                  ),
                  // child:
                ),
                const Text(
                  '  years old.   ',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF00BB6E),
                  ),
                ),
              ],
            ),
            SizedBox(height: size.height * 0.16),
            NextButton(size: size, screen: const HWScreen())
          ],
        ),
      ),
    );
  }
}
