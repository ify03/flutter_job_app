import 'package:flutter/material.dart';
import 'package:myflutter/pages/registerpage.dart';

import 'homepage.dart';

//assets/images/chatbot-support-2739529-2283917.png

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  final List<Map<String, String>> onboardingData = [
    {
      'image': 'assets/images/chatbot-support-2739529-2283917.png',
      'title': 'Show Case Your Best Project!',
      'description': 'More Than A Job. We Offer Opportunity To Grow.',
    },
    {
      'image': 'assets/images/download.jpeg',
      'title': 'Explore Features',
      'description':
          'Discover amazing features that will make your life easier.',
    },
    {
      'image': 'assets/images/images.jpeg',
      'title': 'Get Started',
      'description': 'Start using MyApp today and enjoy the benefits.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              scrollDirection: Axis.horizontal,
              controller: _pageController,
              itemCount: onboardingData.length,
              onPageChanged: (index) {
                setState(() {
                  _currentPage = index;
                });
              },
              itemBuilder: (context, index) {
                return OnboardingPage(
                  image: onboardingData[index]['image']!,
                  title: onboardingData[index]['title']!,
                  description: onboardingData[index]['description']!,
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              onboardingData.length,
              (index) => buildDotIndicator(index),
            ),
          ),
          const SizedBox(height: 20.0),
          TextButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        const RegisterPage(), // Replace with your next screen widget
                  ));
              // Add your button action here
            },
            style: TextButton.styleFrom(
              foregroundColor: Colors.deepOrange,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              backgroundColor: Colors.transparent, // Transparent background
            ),
            child: const Text(
              'Skip',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }

  AnimatedContainer buildDotIndicator(int index) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      margin: const EdgeInsets.symmetric(horizontal: 5.0),
      height: 8.0,
      width: _currentPage == index ? 20.0 : 8.0,
      decoration: BoxDecoration(
        color: _currentPage == index ? Colors.deepOrange : Colors.grey,
        borderRadius: BorderRadius.circular(4.0),
      ),
    );
  }
}

class OnboardingPage extends StatelessWidget {
  final String image;
  final String title;
  final String description;

  const OnboardingPage({
    super.key,
    required this.image,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(image),
        const SizedBox(height: 5.0),
        Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 20.0),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40.0),
          child: Text(
            description,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 16.0,
              color: Color.fromARGB(255, 97, 97, 97),
            ),
          ),
        ),
      ],
    );
  }
}
