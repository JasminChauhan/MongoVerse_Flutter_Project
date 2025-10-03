// import 'dart:math' as math;
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:get/get.dart';
// import 'package:mongoverse/view/dashboard_screen.dart';
//
// class SplashScreen extends StatefulWidget {
//   const SplashScreen({super.key});
//
//   @override
//   State<SplashScreen> createState() => _SplashScreenState();
// }
//
// class _SplashScreenState extends State<SplashScreen>
//     with TickerProviderStateMixin {
//   late AnimationController _logoController;
//   late AnimationController _textController;
//   late AnimationController _progressController;
//   late AnimationController _floatingController;
//   late AnimationController _particleController;
//
//   late Animation<double> _logoScaleAnimation;
//   late Animation<double> _logoOpacityAnimation;
//   late Animation<double> _textSlideAnimation;
//   late Animation<double> _textOpacityAnimation;
//   late Animation<double> _progressAnimation;
//   late Animation<double> _floatingAnimation;
//
//   @override
//   void initState() {
//     super.initState();
//
//     // Initialize animation controllers
//     _logoController = AnimationController(
//       duration: const Duration(milliseconds: 1200),
//       vsync: this,
//     );
//
//     _textController = AnimationController(
//       duration: const Duration(milliseconds: 800),
//       vsync: this,
//     );
//
//     _progressController = AnimationController(
//       duration: const Duration(milliseconds: 3000),
//       vsync: this,
//     );
//
//     _floatingController = AnimationController(
//       duration: const Duration(seconds: 3),
//       vsync: this,
//     );
//
//     _particleController = AnimationController(
//       duration: const Duration(seconds: 4),
//       vsync: this,
//     );
//
//     // Initialize animations
//     _logoScaleAnimation = Tween<double>(
//       begin: 0.0,
//       end: 1.0,
//     ).animate(CurvedAnimation(
//       parent: _logoController,
//       curve: Curves.elasticOut,
//     ));
//
//     _logoOpacityAnimation = Tween<double>(
//       begin: 0.0,
//       end: 1.0,
//     ).animate(CurvedAnimation(
//       parent: _logoController,
//       curve: const Interval(0.0, 0.6, curve: Curves.easeIn),
//     ));
//
//     _textSlideAnimation = Tween<double>(
//       begin: 50.0,
//       end: 0.0,
//     ).animate(CurvedAnimation(
//       parent: _textController,
//       curve: Curves.easeOutBack,
//     ));
//
//     _textOpacityAnimation = Tween<double>(
//       begin: 0.0,
//       end: 1.0,
//     ).animate(CurvedAnimation(
//       parent: _textController,
//       curve: Curves.easeIn,
//     ));
//
//     _progressAnimation = Tween<double>(
//       begin: 0.0,
//       end: 1.0,
//     ).animate(CurvedAnimation(
//       parent: _progressController,
//       curve: Curves.easeInOut,
//     ));
//
//     _floatingAnimation = Tween<double>(
//       begin: 0.0,
//       end: 1.0,
//     ).animate(CurvedAnimation(
//       parent: _floatingController,
//       curve: Curves.easeInOut,
//     ));
//
//     // Start animations sequence
//     _startAnimationSequence();
//   }
//
//   void _startAnimationSequence() async {
//     // Add haptic feedback
//     HapticFeedback.lightImpact();
//
//     // Start floating animation
//     _floatingController.repeat(reverse: true);
//     _particleController.repeat();
//
//     // Logo animation
//     await Future.delayed(const Duration(milliseconds: 300));
//     _logoController.forward();
//
//     // Text animation
//     await Future.delayed(const Duration(milliseconds: 600));
//     _textController.forward();
//
//     // Progress animation
//     await Future.delayed(const Duration(milliseconds: 400));
//     _progressController.forward();
//
//     // Navigate to dashboard after loading
//     await Future.delayed(const Duration(milliseconds: 3000));
//     _navigateToDashboard();
//   }
//
//   void _navigateToDashboard() {
//     // Replace with your dashboard navigation
//     Get.off(DashboardScreen());
//     // Or use: Get.off(() => DashboardScreen());
//   }
//
//   @override
//   void dispose() {
//     _logoController.dispose();
//     _textController.dispose();
//     _progressController.dispose();
//     _floatingController.dispose();
//     _particleController.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         decoration: const BoxDecoration(
//           gradient: LinearGradient(
//             begin: Alignment.topLeft,
//             end: Alignment.bottomRight,
//             colors: [
//               Color(0xFFF8FAFF),
//               Color(0xFFE8F2FF),
//               Color(0xFFF0F8FF),
//             ],
//           ),
//         ),
//         child: Stack(
//           children: [
//             // Animated particles background
//             _buildParticlesBackground(),
//
//             // Main content
//             SafeArea(
//               child: Column(
//                 children: [
//                   const Spacer(flex: 2),
//
//                   // Logo section
//                   _buildLogoSection(),
//
//                   const SizedBox(height: 40),
//
//                   // Title and subtitle
//                   _buildTitleSection(),
//
//                   const Spacer(flex: 2),
//
//                   // Loading section
//                   _buildLoadingSection(),
//
//                   const SizedBox(height: 50),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   Widget _buildParticlesBackground() {
//     return AnimatedBuilder(
//       animation: _particleController,
//       builder: (context, child) {
//         return Stack(
//           children: List.generate(6, (index) {
//             final offset = _particleController.value * 2 * math.pi + (index * math.pi / 3);
//             final radius = 100 + (index * 20);
//             return Positioned(
//               left: MediaQuery.of(context).size.width / 2 +
//                   math.cos(offset) * radius - 25,
//               top: MediaQuery.of(context).size.height / 2 +
//                   math.sin(offset) * radius - 25,
//               child: Opacity(
//                 opacity: 0.1,
//                 child: Container(
//                   width: 50,
//                   height: 50,
//                   decoration: BoxDecoration(
//                     shape: BoxShape.circle,
//                     gradient: LinearGradient(
//                       colors: [
//                         Colors.blue.shade300,
//                         Colors.purple.shade300,
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             );
//           }),
//         );
//       },
//     );
//   }
//
//   Widget _buildLogoSection() {
//     return AnimatedBuilder(
//       animation: _logoController,
//       builder: (context, child) {
//         return Transform.scale(
//           scale: _logoScaleAnimation.value,
//           child: Opacity(
//             opacity: _logoOpacityAnimation.value,
//             child: AnimatedBuilder(
//               animation: _floatingController,
//               builder: (context, child) {
//                 return Transform.translate(
//                   offset: Offset(
//                     0,
//                     math.sin(_floatingAnimation.value * 2 * math.pi) * 8,
//                   ),
//                   child: Container(
//                     padding: const EdgeInsets.all(24),
//                     decoration: BoxDecoration(
//                       gradient: LinearGradient(
//                         colors: [
//                           Colors.blue.shade400,
//                           Colors.purple.shade400,
//                         ],
//                       ),
//                       borderRadius: BorderRadius.circular(28),
//                       boxShadow: [
//                         BoxShadow(
//                           color: Colors.blue.withOpacity(0.3),
//                           blurRadius: 20,
//                           offset: const Offset(0, 8),
//                         ),
//                         BoxShadow(
//                           color: Colors.purple.withOpacity(0.2),
//                           blurRadius: 20,
//                           offset: const Offset(0, 8),
//                         ),
//                       ],
//                     ),
//                     child: Image.asset(
//                       'assets/mongoverse_logo.jpg',
//                       width: 100,
//                       height: 100,
//                       fit: BoxFit.contain,
//                     ),
//
//                   ),
//                 );
//               },
//             ),
//           ),
//         );
//       },
//     );
//   }
//
//   Widget _buildTitleSection() {
//     return AnimatedBuilder(
//       animation: _textController,
//       builder: (context, child) {
//         return Transform.translate(
//           offset: Offset(0, _textSlideAnimation.value),
//           child: Opacity(
//             opacity: _textOpacityAnimation.value,
//             child: Column(
//               children: [
//                 ShaderMask(
//                   shaderCallback: (bounds) => LinearGradient(
//                     colors: [
//                       Colors.blue.shade600,
//                       Colors.purple.shade600,
//                     ],
//                   ).createShader(bounds),
//                   child: const Text(
//                     "MongoVerse",
//                     style: TextStyle(
//                       fontSize: 42,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.white,
//                       letterSpacing: 1.2,
//                     ),
//                   ),
//                 ),
//                 const SizedBox(height: 8),
//                 Text(
//                   "FROM NO-SQL TO KNOW-IT-ALL",
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                     fontSize: 16,
//                     color: Colors.grey.shade600,
//                     fontWeight: FontWeight.w500,
//                     letterSpacing: 0.5,
//                   ),
//                 ),
//                 const SizedBox(height: 20),
//                 Container(
//                   padding: const EdgeInsets.symmetric(
//                     horizontal: 20,
//                     vertical: 8,
//                   ),
//                   decoration: BoxDecoration(
//                     gradient: LinearGradient(
//                       colors: [
//                         Colors.blue.shade50,
//                         Colors.purple.shade50,
//                       ],
//                     ),
//                     borderRadius: BorderRadius.circular(20),
//                     border: Border.all(
//                       color: Colors.blue.shade100,
//                       width: 1,
//                     ),
//                   ),
//                   child: Row(
//                     mainAxisSize: MainAxisSize.min,
//                     children: [
//                       Icon(
//                         Icons.school_outlined,
//                         size: 16,
//                         color: Colors.blue.shade600,
//                       ),
//                       const SizedBox(width: 8),
//                       Text(
//                         "Learn • Practice • Master",
//                         style: TextStyle(
//                           fontSize: 12,
//                           fontWeight: FontWeight.w600,
//                           color: Colors.blue.shade700,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         );
//       },
//     );
//   }
//
//   Widget _buildLoadingSection() {
//     return AnimatedBuilder(
//       animation: _progressController,
//       builder: (context, child) {
//         return Column(
//           children: [
//             Text(
//               "Loading your learning journey...",
//               style: TextStyle(
//                 fontSize: 14,
//                 color: Colors.grey.shade600,
//                 fontWeight: FontWeight.w500,
//               ),
//             ),
//             const SizedBox(height: 20),
//
//             // Progress bar
//             Container(
//               width: 200,
//               height: 4,
//               decoration: BoxDecoration(
//                 color: Colors.grey.shade200,
//                 borderRadius: BorderRadius.circular(2),
//               ),
//               child: Stack(
//                 children: [
//                   Container(
//                     width: 200 * _progressAnimation.value,
//                     height: 4,
//                     decoration: BoxDecoration(
//                       gradient: LinearGradient(
//                         colors: [
//                           Colors.blue.shade400,
//                           Colors.purple.shade400,
//                         ],
//                       ),
//                       borderRadius: BorderRadius.circular(2),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//
//             const SizedBox(height: 16),
//
//             // Loading percentage
//             Text(
//               "${(_progressAnimation.value * 100).toInt()}%",
//               style: TextStyle(
//                 fontSize: 12,
//                 color: Colors.grey.shade500,
//                 fontWeight: FontWeight.w600,
//               ),
//             ),
//
//             const SizedBox(height: 30),
//
//             // Feature highlights
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 40),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceAround,
//                 children: [
//                   _buildFeatureIcon(
//                     Icons.play_circle_outline,
//                     "Interactive\nLessons",
//                     Colors.green,
//                   ),
//                   _buildFeatureIcon(
//                     Icons.code,
//                     "Hands-on\nPractice",
//                     Colors.blue,
//                   ),
//                   _buildFeatureIcon(
//                     Icons.trending_up,
//                     "Track\nProgress",
//                     Colors.orange,
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         );
//       },
//     );
//   }
//
//   Widget _buildFeatureIcon(IconData icon, String label, Color color) {
//     return Column(
//       children: [
//         Container(
//           padding: const EdgeInsets.all(12),
//           decoration: BoxDecoration(
//             color: color.withOpacity(0.1),
//             borderRadius: BorderRadius.circular(12),
//           ),
//           child: Icon(
//             icon,
//             color: color,
//             size: 20,
//           ),
//         ),
//         const SizedBox(height: 8),
//         Text(
//           label,
//           textAlign: TextAlign.center,
//           style: TextStyle(
//             fontSize: 10,
//             color: Colors.grey.shade600,
//             fontWeight: FontWeight.w500,
//           ),
//         ),
//       ],
//     );
//   }
// }


import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:mongoverse/view/dashboard_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late AnimationController _logoController;
  late AnimationController _textController;
  late AnimationController _progressController;
  late AnimationController _floatingController;
  late AnimationController _particleController;

  late Animation<double> _logoScaleAnimation;
  late Animation<double> _logoOpacityAnimation;
  late Animation<double> _textSlideAnimation;
  late Animation<double> _textOpacityAnimation;
  late Animation<double> _progressAnimation;
  late Animation<double> _floatingAnimation;

  @override
  void initState() {
    super.initState();

    // Initialize animation controllers
    _logoController = AnimationController(
      duration: const Duration(milliseconds: 1200),
      vsync: this,
    );

    _textController = AnimationController(
      duration: const Duration(milliseconds: 800),
      vsync: this,
    );

    _progressController = AnimationController(
      duration: const Duration(milliseconds: 3000),
      vsync: this,
    );

    _floatingController = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    );

    _particleController = AnimationController(
      duration: const Duration(seconds: 4),
      vsync: this,
    );

    // Initialize animations
    _logoScaleAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(
      parent: _logoController,
      curve: Curves.elasticOut,
    ));

    _logoOpacityAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(
      parent: _logoController,
      curve: const Interval(0.0, 0.6, curve: Curves.easeIn),
    ));

    _textSlideAnimation = Tween<double>(
      begin: 50.0,
      end: 0.0,
    ).animate(CurvedAnimation(
      parent: _textController,
      curve: Curves.easeOutBack,
    ));

    _textOpacityAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(
      parent: _textController,
      curve: Curves.easeIn,
    ));

    _progressAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(
      parent: _progressController,
      curve: Curves.easeInOut,
    ));

    _floatingAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(
      parent: _floatingController,
      curve: Curves.easeInOut,
    ));

    // Start animations sequence
    _startAnimationSequence();
  }

  void _startAnimationSequence() async {
    // Add haptic feedback
    HapticFeedback.lightImpact();

    // Start floating animation
    _floatingController.repeat(reverse: true);
    _particleController.repeat();

    // Logo animation
    await Future.delayed(const Duration(milliseconds: 300));
    _logoController.forward();

    // Text animation
    await Future.delayed(const Duration(milliseconds: 600));
    _textController.forward();

    // Progress animation
    await Future.delayed(const Duration(milliseconds: 400));
    _progressController.forward();

    // Navigate to dashboard after loading
    await Future.delayed(const Duration(milliseconds: 3000));
    _navigateToDashboard();
  }

  void _navigateToDashboard() {
    // Replace with your dashboard navigation
    Get.off(DashboardScreen());
    // Or use: Get.off(() => DashboardScreen());
  }

  @override
  void dispose() {
    _logoController.dispose();
    _textController.dispose();
    _progressController.dispose();
    _floatingController.dispose();
    _particleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFFF8FAFF),
              Color(0xFFE8F2FF),
              Color(0xFFF0F8FF),
            ],
          ),
        ),
        child: Stack(
          children: [
            // Animated particles background
            _buildParticlesBackground(),

            // Main content
            SafeArea(
              child: Column(
                children: [
                  // New Image Container (2:1 ratio)
                  Container(
                    height: 100,
                    width: 230,
                    margin: const EdgeInsets.symmetric(horizontal: 24),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(16),
                            child: Image.asset(
                              'assets/du_logo.png',
                              fit: BoxFit.cover,
                              errorBuilder: (context, error, stackTrace) => Container(
                                color: Colors.blue.shade100,
                                child: const Icon(
                                  Icons.image_not_supported,
                                  size: 100,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          flex: 1,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(16),
                            child: Image.asset(
                              'assets/logo_aswdc.png',
                              fit: BoxFit.cover,
                              errorBuilder: (context, error, stackTrace) => Container(
                                color: Colors.purple.shade100,
                                child: const Icon(
                                  Icons.image_not_supported,
                                  size: 100,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),
                  const Spacer(flex: 2),

                  // Logo section
                  _buildLogoSection(),

                  const SizedBox(height: 40),

                  // Title and subtitle
                  _buildTitleSection(),

                  const Spacer(flex: 2),

                  // Loading section
                  _buildLoadingSection(),

                  const SizedBox(height: 50),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildParticlesBackground() {
    return AnimatedBuilder(
      animation: _particleController,
      builder: (context, child) {
        return Stack(
          children: List.generate(6, (index) {
            final offset = _particleController.value * 2 * math.pi + (index * math.pi / 3);
            final radius = 100 + (index * 20);
            return Positioned(
              left: MediaQuery.of(context).size.width / 2 +
                  math.cos(offset) * radius - 25,
              top: MediaQuery.of(context).size.height / 2 +
                  math.sin(offset) * radius - 25,
              child: Opacity(
                opacity: 0.1,
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      colors: [
                        Colors.blue.shade300,
                        Colors.purple.shade300,
                      ],
                    ),
                  ),
                ),
              ),
            );
          }),
        );
      },
    );
  }

  Widget _buildLogoSection() {
    return AnimatedBuilder(
      animation: _logoController,
      builder: (context, child) {
        return Transform.scale(
          scale: _logoScaleAnimation.value,
          child: Opacity(
            opacity: _logoOpacityAnimation.value,
            child: AnimatedBuilder(
              animation: _floatingController,
              builder: (context, child) {
                return Transform.translate(
                  offset: Offset(
                    0,
                    math.sin(_floatingAnimation.value * 2 * math.pi) * 8,
                  ),
                  child: Container(
                    padding: const EdgeInsets.all(24),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.blue.shade400,
                          Colors.purple.shade400,
                        ],
                      ),
                      borderRadius: BorderRadius.circular(28),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.blue.withOpacity(0.3),
                          blurRadius: 20,
                          offset: const Offset(0, 8),
                        ),
                        BoxShadow(
                          color: Colors.purple.withOpacity(0.2),
                          blurRadius: 20,
                          offset: const Offset(0, 8),
                        ),
                      ],
                    ),
                    child: Image.asset(
                      'assets/mongoverse_logo.jpg',
                      width: 100,
                      height: 100,
                      fit: BoxFit.contain,
                    ),
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }

  Widget _buildTitleSection() {
    return AnimatedBuilder(
      animation: _textController,
      builder: (context, child) {
        return Transform.translate(
          offset: Offset(0, _textSlideAnimation.value),
          child: Opacity(
            opacity: _textOpacityAnimation.value,
            child: Column(
              children: [
                ShaderMask(
                  shaderCallback: (bounds) => LinearGradient(
                    colors: [
                      Colors.blue.shade600,
                      Colors.purple.shade600,
                    ],
                  ).createShader(bounds),
                  child: const Text(
                    "MongoVerse",
                    style: TextStyle(
                      fontSize: 42,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      letterSpacing: 1.2,
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  "FROM NO-SQL TO KNOW-IT-ALL",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey.shade600,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.5,
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 8,
                  ),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.blue.shade50,
                        Colors.purple.shade50,
                      ],
                    ),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Colors.blue.shade100,
                      width: 1,
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.school_outlined,
                        size: 16,
                        color: Colors.blue.shade600,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        "Learn • Practice • Master",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Colors.blue.shade700,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildLoadingSection() {
    return AnimatedBuilder(
      animation: _progressController,
      builder: (context, child) {
        return Column(
          children: [
            Text(
              "Loading your learning journey...",
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey.shade600,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 20),
            // Progress bar
            Container(
              width: 200,
              height: 4,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(2),
              ),
              child: Stack(
                children: [
                  Container(
                    width: 200 * _progressAnimation.value,
                    height: 4,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.blue.shade400,
                          Colors.purple.shade400,
                        ],
                      ),
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            // Loading percentage
            Text(
              "${(_progressAnimation.value * 100).toInt()}%",
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey.shade500,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 30),
            // Feature highlights
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildFeatureIcon(
                    Icons.play_circle_outline,
                    "Interactive\nLessons",
                    Colors.green,
                  ),
                  _buildFeatureIcon(
                    Icons.code,
                    "Hands-on\nPractice",
                    Colors.blue,
                  ),
                  _buildFeatureIcon(
                    Icons.trending_up,
                    "Track\nProgress",
                    Colors.orange,
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }

  Widget _buildFeatureIcon(IconData icon, String label, Color color) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: color.withOpacity(0.1),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Icon(
            icon,
            color: color,
            size: 20,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          label,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 10,
            color: Colors.grey.shade600,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}