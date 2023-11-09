import 'package:flutter/material.dart';
import 'package:mobile_1/screens/agescreen.dart';

import '../widgets/nextbutton.dart';
import '../widgets/textcontainer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool mIsChecked = false;
  bool fIsChecked = false;

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
        leading: IconButton(
          icon: Icon(Icons.settings),
          onPressed: () {
            // Tambahkan logika untuk aksi di pojok kiri atas
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => YourSettingsScreen()));
          },
        ),
      ),
      body: Column(
        children: [
          TextContainer(
            size: size,
            text: 'saya seorang ',
          ),
          const SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  const CircleImage(gender: 'pria'),
                  Transform.scale(
                    scale: 1.5,
                    child: Checkbox(
                      value: mIsChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          if (fIsChecked == true) {
                            fIsChecked = false;
                          }
                          mIsChecked = value!;
                        });
                      },
                      fillColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                          return const Color(0xFF00BB6E);
                        },
                      ),
                      materialTapTargetSize: MaterialTapTargetSize.padded,
                    ),
                  ),
                  const Text(
                    'pria',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF00BB6E),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  const CircleImage(gender: 'wanita'),
                  Transform.scale(
                    scale: 1.5,
                    child: Checkbox(
                      value: fIsChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          if (mIsChecked == true) {
                            mIsChecked = false;
                          }
                          fIsChecked = value!;
                        });
                      },
                      fillColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                          return const Color(0xFF00BB6E);
                        },
                      ),
                      materialTapTargetSize: MaterialTapTargetSize.padded,
                    ),
                  ),
                  const Text(
                    'Female',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF00BB6E),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: size.height * 0.16),
          NextButton(size: size, screen: const AgeScreen()),
        ],
      ),
    );
  }
}

class CircleImage extends StatelessWidget {
  const CircleImage({
    Key? key,
    required this.gender,
  }) : super(key: key);

  final String gender;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 40,
      backgroundColor: const Color(0xFF00BB6E),
      child: CircleAvatar(
        radius: 35,
        backgroundColor: Colors.white,
      ),
    );
  }
}

class YourSettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('profil'),
      ),
      body: Center(
        child: Text('Your  profil'),
      ),
    );
  }
}
