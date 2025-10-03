import 'package:flutter/material.dart';

void main() => runApp(AgrinetraApp());

class AgrinetraApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Agri_netra',
      home: WelcomeScreen(),
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFFFCC80), // soft orange
              Color(0xFFA5D6A7), // soft green
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Logo
                Icon(
                  Icons.agriculture,
                  size: 100,
                  color: Color(0xFF388E3C), // earthy green
                ),
                SizedBox(height: 20),
                // App Name
                Text(
                  'Agri_Netra',
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF2E7D32),
                  ),
                ),
                SizedBox(height: 10),
                // Tagline
                Text(
                  '"Empowering Farmers with Actionable Insights"',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18, color: Color(0xFF33691E)),
                ),
                SizedBox(height: 60),
                // Language Buttons
                Column(
                  children: [
                    LanguageButton(label: 'മലയാളം'),
                    SizedBox(height: 12),
                    LanguageButton(label: 'हिंदी'),
                    SizedBox(height: 12),
                    LanguageButton(label: 'English'),
                    SizedBox(height: 30),
                    // Continue Button
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          print('Continue pressed');
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFFB8C00), // warm orange
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: Text(
                          'Continue',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class LanguageButton extends StatelessWidget {
  final String label;
  LanguageButton({required this.label});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        onPressed: () => print('$label selected'),
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFF4CAF50),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Text(label, style: TextStyle(fontSize: 18, color: Colors.white)),
      ),
    );
  }
}
