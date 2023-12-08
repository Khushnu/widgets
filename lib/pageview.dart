import 'package:flutter/material.dart';
import 'package:widgets_/Screens/onboarding.dart';

class PageViewWidget extends StatefulWidget {
  const PageViewWidget({super.key});

  @override
  State<PageViewWidget> createState() => _PageViewWidgetState();
}

class _PageViewWidgetState extends State<PageViewWidget> {
  int _currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              height: 790,
              child: PageView(
              onPageChanged: (index){
                setState(() {
                  _currentPage = index;
                });
              },
              children: const [
                OnBoardingScreen2(), 
               OnBoardingScreen(),
               OnBoardingScreen3()
              ],
            )
            ),
          ), 
            Image.asset('Images/bg.png', height: 290, 
            fit: BoxFit.contain,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 70),
              child: Container(
                decoration: BoxDecoration( 
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: Colors.white, 
                    width: 1
                  ),
                  boxShadow: [ 
                    BoxShadow(
                      color: Colors.black.withOpacity(0.4), 
                      offset: const Offset(2, 0), 
                      blurRadius: 8, 
                      spreadRadius: 1)
                  ]
                ),
                child: ClipRRect( 
                  borderRadius: BorderRadius.circular(12),
                  child: Row(
                    children: List.generate(3, (index) => _buildPageIndicator(index)),
                  ),
                ),
              ),
            )
        ],
      ),
    );
  }
  Widget _buildPageIndicator(int index) {
    return Container(
      width: 76,
      height: 20,
      decoration: BoxDecoration(
       color: _currentPage >= index
            ? const Color.fromARGB(255, 149, 230, 124) // Color for completed steps
            : Colors.grey
      ),
    );
  }
}