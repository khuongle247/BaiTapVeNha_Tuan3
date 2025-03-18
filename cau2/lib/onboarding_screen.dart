import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  PageController _pageController = PageController();
  int currentPage = 0;

  List<Map<String, String>> onboardingData = [
    {
      "title": "Easy Time Management",
      "image": "assets/image/image1.jpg",
      "description": "With management based on priority and daily tasks, it will give you convenience in managing and determining the tasks that must be done first",
    },
    {
      "title": "Increase Work Effectiveness",
      "image": "assets/image/image2.jpg",
      "description": "Time management and the determination of more important tasks will give your job statistics better and always improve"
    },
    {
      "title": "Reminder Notification",
      "image": "assets/image/image3.jpg",
      "description": "The advantage of this application is that it also provides reminders for you so you don't forget to keep doing your assignments well and according to the time you have set"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [

          PageView.builder(
            controller: _pageController,
            itemCount: onboardingData.length,
            onPageChanged: (index) {
              setState(() {
                currentPage = index;
              });
            },
            itemBuilder: (context, index) {
              return OnboardingPage(
                title: onboardingData[index]["title"]!,
                image: onboardingData[index]["image"]!,
                description: onboardingData[index]["description"]!,
              );
            },
          ),


          Positioned(
            top: 40,
            left: 20,
            child: DotsIndicator(
              dotsCount: onboardingData.length,
              position: currentPage.toDouble(),
              decorator: DotsDecorator(
                activeColor: Colors.blue,
                size: Size(8.0, 8.0),
                activeSize: Size(10.0, 10.0),
                color: Colors.grey,
              ),
            ),
          ),


          Positioned(
            top: 40,
            right: 20,
            child: TextButton(
              onPressed: () {
                _pageController.jumpToPage(onboardingData.length - 1);
              },
              child: Text(
                "Skip",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
            ),
          ),



          Positioned(
            bottom: 40,
            left: 20,
            right: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                if (currentPage > 0)
                  ElevatedButton(
                    onPressed: () {
                      _pageController.previousPage(
                          duration: Duration(milliseconds: 300), curve: Curves.ease);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 14),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                    child: Icon(Icons.arrow_back, color: Colors.white, size: 24),
                  )
                else
                  SizedBox(width: 60),
                SizedBox(width: 20),


                Expanded(
                  child: SizedBox(
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        if (currentPage < onboardingData.length - 1) {
                          _pageController.nextPage(
                              duration: Duration(milliseconds: 300),
                              curve: Curves.ease);
                        } else {
                          Navigator.pushReplacementNamed(context, "/home");
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        padding: EdgeInsets.symmetric(vertical: 14),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                      child: Text(
                        currentPage == onboardingData.length - 1 ? "Get Started" : "Next",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


class OnboardingPage extends StatelessWidget {
  final String title;
  final String image;
  final String description;

  OnboardingPage(
      {required this.title, required this.image, required this.description});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(image, height: 250),
        SizedBox(height: 20),
        Text(
          title,
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            description,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16, color: Colors.grey),
          ),
        ),
      ],
    );
  }
}
