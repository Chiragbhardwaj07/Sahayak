import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    // Duration for one cycle of the animation (moving from left to right)
    const duration = Duration(seconds: 6);

    // Initialize the AnimationController
    _controller = AnimationController(
      vsync: this,
      duration: duration,
    );

    // Create a linear animation for continuous motion
    _animation = Tween(begin: 0.0, end: 1.0).animate(_controller);

    // Start the animation and repeat indefinitely
    _controller.repeat();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Other widgets go here if needed

          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: AnimatedBuilder(
              animation: _animation,
              builder: (context, child) {
                // Adjust the range of movement based on the container width
                double movementRange = MediaQuery.of(context).size.width;

                // Calculate the position for the image
                double imageOffset = movementRange * _animation.value;

                return SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: Row(
                    children: [
                      Transform.translate(
                        offset: Offset(imageOffset, 0.0),
                        child: Container(
                          width: movementRange,
                          height: 50.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                  'assets/images/pngg.png'), // Replace with your image asset path
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
