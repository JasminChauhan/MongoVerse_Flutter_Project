// import 'dart:math' as math;
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:url_launcher/url_launcher.dart';
// import '../utils/import_export.dart';
//
// class AboutUsScreen extends StatefulWidget {
//   const AboutUsScreen({super.key});
//
//   @override
//   State<AboutUsScreen> createState() => _AboutUsScreenState();
// }
//
// class _AboutUsScreenState extends State<AboutUsScreen> with TickerProviderStateMixin {
//   late AnimationController _floatingController;
//
//   @override
//   void initState() {
//     super.initState();
//     _floatingController = AnimationController(
//       duration: const Duration(seconds: 3),
//       vsync: this,
//     )..repeat(reverse: true);
//     _floatingController.forward();
//   }
//
//   @override
//   void dispose() {
//     _floatingController.dispose();
//     super.dispose();
//   }
//
//   Future<void> _launchEmail() async {
//     final Uri emailLaunchUri = Uri(
//       scheme: 'mailto',
//       path: 'chauhanjasmin00@gmail.com',
//     );
//     if (await canLaunchUrl(emailLaunchUri)) {
//       await launchUrl(emailLaunchUri);
//     } else {
//       print('Could not launch email');
//     }
//   }
//
//   Future<void> _launchPhone() async {
//     final Uri phoneLaunchUri = Uri(
//       scheme: 'tel',
//       path: '+919313474523',
//     );
//     if (await canLaunchUrl(phoneLaunchUri)) {
//       await launchUrl(phoneLaunchUri);
//     } else {
//       print('Could not launch phone');
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('About Us'),
//         elevation: 0,
//         leading: GestureDetector(
//           onTap: () => Navigator.pop(context),
//           child: Container(
//             margin: const EdgeInsets.all(8),
//             decoration: BoxDecoration(
//               gradient: LinearGradient(
//                 colors: [Colors.blue.shade400, Colors.purple.shade400],
//               ),
//               borderRadius: BorderRadius.circular(12),
//               boxShadow: [
//                 BoxShadow(
//                   color: Colors.blue.withOpacity(0.3),
//                   blurRadius: 8,
//                   offset: const Offset(0, 2),
//                 ),
//               ],
//             ),
//             child: const Icon(
//               Icons.arrow_back_ios_new_rounded,
//               color: Colors.white,
//               size: 20,
//             ),
//           ),
//         ),
//       ),
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
//         child: SingleChildScrollView(
//           padding: const EdgeInsets.all(20),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               // Header Section
//               Container(
//                 padding: const EdgeInsets.all(24),
//                 decoration: BoxDecoration(
//                   gradient: LinearGradient(
//                     begin: Alignment.topLeft,
//                     end: Alignment.bottomRight,
//                     colors: [Colors.blue.shade500, Colors.purple.shade500, Colors.indigo.shade500],
//                   ),
//                   borderRadius: BorderRadius.circular(32),
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.blue.shade300.withOpacity(0.3),
//                       blurRadius: 20,
//                       offset: const Offset(0, 8),
//                     ),
//                   ],
//                 ),
//                 child: Column(
//                   children: [
//                     AnimatedBuilder(
//                       animation: _floatingController,
//                       builder: (context, child) {
//                         return Transform.translate(
//                           offset: Offset(
//                             0,
//                             math.sin(_floatingController.value * 2 * math.pi) * 8,
//                           ),
//                           child: Container(
//                             padding: const EdgeInsets.all(20),
//                             decoration: BoxDecoration(
//                               color: Colors.white.withOpacity(0.2),
//                               shape: BoxShape.circle,
//                               boxShadow: [
//                                 BoxShadow(
//                                   color: Colors.black.withOpacity(0.2),
//                                   blurRadius: 15,
//                                   offset: const Offset(0, 5),
//                                 ),
//                               ],
//                             ),
//                             child: Image.asset(
//                               'assets/mongoverse_logo.png', // Replace with your logo asset
//                               height: 80,
//                               errorBuilder: (context, error, stackTrace) => const Icon(
//                                 Icons.storage_rounded,
//                                 size: 80,
//                                 color: Colors.white,
//                               ),
//                             ),
//                           ),
//                         );
//                       },
//                     ),
//                     const SizedBox(height: 24),
//                     Text(
//                       'MongoVerse',
//                       style: Theme.of(context).textTheme.headlineSmall?.copyWith(
//                         fontWeight: FontWeight.bold,
//                         color: Colors.white,
//                         fontSize: 36,
//                       ),
//                     ),
//                     const SizedBox(height: 8),
//                     Text(
//                       'FROM NO-SQL TO KNOW-IT-ALL',
//                       style: Theme.of(context).textTheme.titleMedium?.copyWith(
//                         color: Colors.white.withOpacity(0.9),
//                         fontWeight: FontWeight.w500,
//                         letterSpacing: 1.2,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               const SizedBox(height: 40),
//               // About Section
//               _buildSectionCard(
//                 title: 'Who We Are',
//                 content: 'We are a passionate team dedicated to creating innovative solutions that make a difference. Our mission is to deliver high-quality products and services that empower our users and enhance their lives.',
//               ),
//               const SizedBox(height: 20),
//               _buildSectionCard(
//                 title: 'Our Vision',
//                 content: 'To be the leading provider of cutting-edge technology solutions, fostering creativity and progress globally.',
//               ),
//               const SizedBox(height: 40),
//               // Team Section
//               _buildSectionCard(
//                 title: 'Meet Our Team',
//                 child: SizedBox(
//                   height: 200,
//                   child: ListView(
//                     scrollDirection: Axis.horizontal,
//                     children: [
//                       TeamMemberCard(
//                         name: 'Jasmin Chauhan',
//                         role: 'App Developer',
//                         imagePath: 'assets/team1.jpg',
//                         floatingController: _floatingController,
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 40),
//               // Contact Section
//               _buildSectionCard(
//                 title: 'Get in Touch',
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     ListTile(
//                       leading: const Icon(Icons.email, color: Colors.blue),
//                       title: const Text('Email: chauhanjasmin00@gmail.com'),
//                       onTap: _launchEmail,
//                     ),
//                     ListTile(
//                       leading: const Icon(Icons.phone, color: Colors.green),
//                       title: const Text('Phone: +91 9313474523'),
//                       onTap: _launchPhone,
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   Widget _buildSectionCard({required String title, String? content, Widget? child}) {
//     return Container(
//       padding: const EdgeInsets.all(24),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(24),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black.withOpacity(0.05),
//             blurRadius: 15,
//             offset: const Offset(0, 5),
//           ),
//         ],
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Row(
//             children: [
//               Container(
//                 width: 4,
//                 height: 24,
//                 decoration: BoxDecoration(
//                   gradient: LinearGradient(
//                     colors: [Colors.blue.shade400, Colors.purple.shade400],
//                   ),
//                   borderRadius: BorderRadius.circular(2),
//                 ),
//               ),
//               const SizedBox(width: 12),
//               Text(
//                 title,
//                 style: Theme.of(context).textTheme.titleLarge?.copyWith(
//                   fontWeight: FontWeight.bold,
//                   color: Colors.grey.shade800,
//                 ),
//               ),
//             ],
//           ),
//           const SizedBox(height: 16),
//           if (content != null)
//             Text(
//               content,
//               style: Theme.of(context).textTheme.bodyLarge?.copyWith(
//                 color: Colors.grey.shade600,
//                 height: 1.7,
//               ),
//             ),
//           if (child != null) child,
//         ],
//       ),
//     );
//   }
// }
//
// class TeamMemberCard extends StatelessWidget {
//   final String name;
//   final String role;
//   final String imagePath;
//   final AnimationController? floatingController; // Added parameter
//
//   const TeamMemberCard({
//     super.key,
//     required this.name,
//     required this.role,
//     required this.imagePath,
//     this.floatingController, // Optional parameter
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 150,
//       margin: const EdgeInsets.only(right: 16),
//       child: Column(
//         children: [
//           AnimatedBuilder(
//             animation: floatingController ?? AnimationController(vsync: Navigator.of(context) as TickerProvider), // Fallback if null
//             builder: (context, child) {
//               return Transform.translate(
//                 offset: Offset(
//                   0,
//                   math.sin(2 * math.pi ?? 0) * 2,
//                 ),
//                 child: CircleAvatar(
//                   radius: 50,
//                   backgroundImage: AssetImage(imagePath),
//                   onBackgroundImageError: (_, __) => const Icon(
//                     Icons.person,
//                     size: 50,
//                     color: Colors.grey,
//                   ),
//                 ),
//               );
//             },
//           ),
//           const SizedBox(height: 8),
//           Text(
//             name,
//             style: Theme.of(context).textTheme.titleMedium?.copyWith(
//               fontWeight: FontWeight.bold,
//             ),
//             textAlign: TextAlign.center,
//           ),
//           Text(
//             role,
//             style: Theme.of(context).textTheme.bodySmall?.copyWith(
//               color: Colors.grey[600],
//             ),
//             textAlign: TextAlign.center,
//           ),
//         ],
//       ),
//     );
//   }
// }
//
//






//
//
// import 'dart:math' as math;
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:url_launcher/url_launcher.dart';
// import 'package:share_plus/share_plus.dart';
// import 'package:package_info_plus/package_info_plus.dart';
// import '../utils/import_export.dart';
//
// class AboutUsScreen extends StatefulWidget {
//   const AboutUsScreen({super.key});
//
//   @override
//   State<AboutUsScreen> createState() => _AboutUsScreenState();
// }
//
// class _AboutUsScreenState extends State<AboutUsScreen> with TickerProviderStateMixin {
//   late AnimationController _floatingController;
//
//   @override
//   void initState() {
//     super.initState();
//     _floatingController = AnimationController(
//       duration: const Duration(seconds: 3),
//       vsync: this,
//     )..repeat(reverse: true);
//     _floatingController.forward();
//   }
//
//   @override
//   void dispose() {
//     _floatingController.dispose();
//     super.dispose();
//   }
//
//   Future<void> _launchEmail() async {
//     final Uri emailLaunchUri = Uri(
//       scheme: 'mailto',
//       path: 'chauhanjasmin00@gmail.com',
//     );
//     if (await canLaunchUrl(emailLaunchUri)) {
//       await launchUrl(emailLaunchUri);
//     } else {
//       print('Could not launch email');
//     }
//   }
//
//   Future<void> _launchPhone() async {
//     final Uri phoneLaunchUri = Uri(
//       scheme: 'tel',
//       path: '+919313474523',
//     );
//     if (await canLaunchUrl(phoneLaunchUri)) {
//       await launchUrl(phoneLaunchUri);
//     } else {
//       print('Could not launch phone');
//     }
//   }
//
//   Future<void> _shareApp() async {
//     const String message = 'Check out MongoVerse - FROM NO-SQL TO KNOW-IT-ALL!';
//     await Share.share(message);
//   }
//
//   Future<void> _rateApp() async {
//     // Replace with your app's package name
//     const String packageName = 'com.yourcompany.mongoverse';
//     final Uri playStoreUri = Uri.parse('market://details?id=$packageName');
//     final Uri webPlayStoreUri = Uri.parse('https://play.google.com/store/apps/details?id=$packageName');
//
//     try {
//       bool canLaunch = await canLaunchUrl(playStoreUri);
//       if (canLaunch) {
//         await launchUrl(playStoreUri, mode: LaunchMode.externalApplication);
//       } else {
//         await launchUrl(webPlayStoreUri, mode: LaunchMode.externalApplication);
//       }
//     } catch (e) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         const SnackBar(content: Text('Could not open Play Store. Please try again later.')),
//       );
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     final isDarkMode = Theme.of(context).brightness == Brightness.dark;
//     final size = MediaQuery.of(context).size;
//
//     return Scaffold(
//       appBar: PreferredSize(
//         preferredSize: const Size.fromHeight(kToolbarHeight),
//         child: Container(
//           decoration: BoxDecoration(
//             gradient: LinearGradient(
//               begin: Alignment.topLeft,
//               end: Alignment.bottomRight,
//               colors: [Colors.blue.shade500, Colors.purple.shade500],
//             ),
//             boxShadow: [
//               BoxShadow(
//                 color: Colors.blue.shade300.withOpacity(0.3),
//                 blurRadius: 8,
//                 offset: const Offset(0, 2),
//               ),
//             ],
//           ),
//           child: AppBar(
//             backgroundColor: Colors.transparent,
//             elevation: 0,
//             leading: Container(
//               margin: const EdgeInsets.all(8),
//               decoration: BoxDecoration(
//                 color: Colors.white.withOpacity(0.2),
//                 borderRadius: BorderRadius.circular(12),
//               ),
//               child: IconButton(
//                 iconSize: 20,
//                 icon: const Icon(
//                   Icons.arrow_back_ios_new_rounded,
//                   color: Colors.white,
//                 ),
//                 onPressed: () => Navigator.pop(context),
//               ),
//             ),
//             title: Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 const Icon(
//                   Icons.info_outline_rounded,
//                   color: Colors.white,
//                   size: 20,
//                 ),
//                 const SizedBox(width: 8),
//                 const Text(
//                   'About Us',
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 20,
//                     fontWeight: FontWeight.w600,
//                   ),
//                 ),
//               ],
//             ),
//             centerTitle: true,
//             actions: [
//               Container(
//                 width: 48,
//                 margin: const EdgeInsets.all(8),
//               ),
//             ],
//           ),
//         ),
//       ),
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
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//               // Hero Section
//               Container(
//                 width: size.width,
//                 decoration: BoxDecoration(
//                   gradient: LinearGradient(
//                     begin: Alignment.topLeft,
//                     end: Alignment.bottomRight,
//                     colors: [Colors.blue.shade500, Colors.purple.shade500],
//                   ),
//                   borderRadius: const BorderRadius.only(
//                     bottomLeft: Radius.circular(30),
//                     bottomRight: Radius.circular(30),
//                   ),
//                 ),
//                 child: Column(
//                   children: [
//                     const SizedBox(height: 16),
//                     AnimatedBuilder(
//                       animation: _floatingController,
//                       builder: (context, child) {
//                         return Transform.translate(
//                           offset: Offset(
//                             0,
//                             math.sin(_floatingController.value * 2 * math.pi) * 8,
//                           ),
//                           child: Container(
//                             padding: const EdgeInsets.all(16),
//                             decoration: BoxDecoration(
//                               shape: BoxShape.circle,
//                               color: Colors.white.withOpacity(0.15),
//                               border: Border.all(
//                                 color: Colors.white.withOpacity(0.3),
//                                 width: 2,
//                               ),
//                               boxShadow: [
//                                 BoxShadow(
//                                   color: Colors.black.withOpacity(0.2),
//                                   blurRadius: 20,
//                                   offset: const Offset(0, 10),
//                                 ),
//                               ],
//                             ),
//                             child: Image.asset(
//                               'assets/mongoverse_logo.jpg',
//                               height: 80,
//                               width: 80,
//                               errorBuilder: (context, error, stackTrace) => const Icon(
//                                 Icons.storage_rounded,
//                                 size: 80,
//                                 color: Colors.white,
//                               ),
//                             ),
//                           ),
//                         );
//                       },
//                     ),
//                     const SizedBox(height: 12),
//                     const Text(
//                       'MongoVerse',
//                       style: TextStyle(
//                         fontSize: 28,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.white,
//                       ),
//                     ),
//                     const SizedBox(height: 6),
//                     const Text(
//                       'FROM NO-SQL TO KNOW-IT-ALL',
//                       style: TextStyle(
//                         fontSize: 14,
//                         color: Colors.white70,
//                         fontWeight: FontWeight.w500,
//                         letterSpacing: 1.2,
//                       ),
//                     ),
//                     const SizedBox(height: 6),
//                     FutureBuilder<PackageInfo>(
//                       future: PackageInfo.fromPlatform(),
//                       builder: (context, snapshot) {
//                         if (!snapshot.hasData) {
//                           return const Text(
//                             'Version ...',
//                             style: TextStyle(
//                               fontSize: 12,
//                               color: Colors.white60,
//                             ),
//                           );
//                         }
//                         final info = snapshot.data!;
//                         return Text(
//                           'Version ${info.version}',
//                           style: const TextStyle(
//                             fontSize: 12,
//                             color: Colors.white60,
//                           ),
//                         );
//                       },
//                     ),
//                     const SizedBox(height: 20),
//                   ],
//                 ),
//               ),
//
//               // Content Sections
//               Padding(
//                 padding: const EdgeInsets.all(20),
//                 child: Column(
//                   children: [
//                     // About Section
//                     _buildSection(
//                       isDarkMode: isDarkMode,
//                       icon: Icons.info_outline_rounded,
//                       title: 'About MongoVerse',
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Container(
//                             padding: const EdgeInsets.all(16),
//                             decoration: BoxDecoration(
//                               color: Colors.blue.shade50,
//                               borderRadius: BorderRadius.circular(12),
//                               border: Border.all(
//                                 color: Colors.blue.shade100,
//                               ),
//                             ),
//                             child: const Text(
//                               'MongoVerse is a comprehensive learning platform designed to transform your understanding of NoSQL databases. From basic concepts to advanced operations, we provide interactive learning experiences that make database management accessible to everyone.',
//                               style: TextStyle(
//                                 fontSize: 14,
//                                 height: 1.6,
//                                 color: Colors.black87,
//                               ),
//                               textAlign: TextAlign.justify,
//                             ),
//                           ),
//                           const SizedBox(height: 16),
//                           Row(
//                             children: [
//                               Icon(
//                                 Icons.lightbulb_outline,
//                                 color: Colors.blue.shade600,
//                                 size: 24,
//                               ),
//                               const SizedBox(width: 8),
//                               Text(
//                                 'Our Mission',
//                                 style: TextStyle(
//                                   fontSize: 18,
//                                   fontWeight: FontWeight.bold,
//                                   color: Colors.blue.shade600,
//                                 ),
//                               ),
//                             ],
//                           ),
//                           const SizedBox(height: 12),
//                           Container(
//                             padding: const EdgeInsets.all(12),
//                             decoration: BoxDecoration(
//                               color: Colors.purple.shade50,
//                               borderRadius: BorderRadius.circular(12),
//                               border: Border.all(
//                                 color: Colors.purple.shade200,
//                               ),
//                             ),
//                             child: Text(
//                               'To bridge the gap between traditional database knowledge and modern NoSQL technologies, making MongoDB accessible and understandable for developers at all levels.',
//                               style: TextStyle(
//                                 fontSize: 14,
//                                 height: 1.5,
//                                 color: Colors.purple.shade700,
//                               ),
//                               textAlign: TextAlign.justify,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//
//                     const SizedBox(height: 20),
//
//                     // Team Section
//                     _buildSection(
//                       isDarkMode: isDarkMode,
//                       icon: Icons.people_alt_rounded,
//                       title: 'Meet Our Team',
//                       child: Column(
//                         children: [
//                           _buildTeamMember(
//                             label: 'Lead Developer',
//                             name: 'Jasmin Chauhan',
//                             description: 'App Developer & MongoDB Specialist',
//                             isDarkMode: isDarkMode,
//                           ),
//                           const SizedBox(height: 16),
//                           Container(
//                             height: 120,
//                             child: ListView(
//                               scrollDirection: Axis.horizontal,
//                               children: [
//                                 TeamMemberCard(
//                                   name: 'Jasmin Chauhan',
//                                   role: 'App Developer',
//                                   imagePath: 'assets/team1.jpg',
//                                   floatingController: _floatingController,
//                                 ),
//                                 TeamMemberCard(
//                                   name: 'Prof. Mehul Bhundiya',
//                                   role: 'Project Mentor',
//                                   imagePath: 'assets/team1.jpg',
//                                   floatingController: _floatingController,
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//
//                     const SizedBox(height: 20),
//
//                     // Contact Section
//                     _buildSection(
//                       isDarkMode: isDarkMode,
//                       icon: Icons.contact_support_rounded,
//                       title: 'Contact Us',
//                       child: Column(
//                         children: [
//                           InkWell(
//                             onTap: _launchEmail,
//                             borderRadius: BorderRadius.circular(12),
//                             child: _buildContactItem(
//                               icon: Icons.email_rounded,
//                               label: 'Email',
//                               text: 'chauhanjasmin00@gmail.com',
//                               isDarkMode: isDarkMode,
//                             ),
//                           ),
//                           const Padding(
//                             padding: EdgeInsets.symmetric(vertical: 16),
//                             child: Divider(),
//                           ),
//                           InkWell(
//                             onTap: _launchPhone,
//                             borderRadius: BorderRadius.circular(12),
//                             child: _buildContactItem(
//                               icon: Icons.phone_rounded,
//                               label: 'Phone',
//                               text: '+91 9313474523',
//                               isDarkMode: isDarkMode,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//
//                     const SizedBox(height: 20),
//
//                     // Action Buttons Section
//                     _buildSection(
//                       isDarkMode: isDarkMode,
//                       padding: const EdgeInsets.all(16),
//                       child: Column(
//                         children: [
//                           Row(
//                             children: [
//                               Expanded(
//                                 child: _buildActionButton(
//                                   icon: Icons.share_rounded,
//                                   label: 'Share App',
//                                   onTap: _shareApp,
//                                   isDarkMode: isDarkMode,
//                                 ),
//                               ),
//                               const SizedBox(width: 12),
//                               Expanded(
//                                 child: _buildActionButton(
//                                   icon: Icons.star_rounded,
//                                   label: 'Rate Us',
//                                   onTap: _rateApp,
//                                   isDarkMode: isDarkMode,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ),
//
//                     const SizedBox(height: 20),
//
//                     // Footer
//                     Container(
//                       width: size.width,
//                       padding: const EdgeInsets.all(20),
//                       decoration: BoxDecoration(
//                         color: Colors.white.withOpacity(0.7),
//                         borderRadius: BorderRadius.circular(20),
//                         border: Border.all(
//                           color: Colors.grey.withOpacity(0.2),
//                         ),
//                         boxShadow: [
//                           BoxShadow(
//                             color: Colors.grey.withOpacity(0.1),
//                             blurRadius: 10,
//                             offset: const Offset(0, 5),
//                           ),
//                         ],
//                       ),
//                       child: Column(
//                         children: [
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               const Icon(
//                                 Icons.storage_rounded,
//                                 color: Colors.blue,
//                                 size: 20,
//                               ),
//                               const SizedBox(width: 8),
//                               Text(
//                                 '© ${DateTime.now().year} MongoVerse',
//                                 style: const TextStyle(
//                                   color: Colors.black87,
//                                   fontSize: 13,
//                                   fontWeight: FontWeight.w500,
//                                 ),
//                               ),
//                             ],
//                           ),
//                           const SizedBox(height: 8),
//                           const Text(
//                             'All Rights Reserved',
//                             style: TextStyle(
//                               color: Colors.black54,
//                               fontSize: 11,
//                             ),
//                           ),
//                           const SizedBox(height: 12),
//                           const Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               Text(
//                                 'Made with ',
//                                 style: TextStyle(
//                                   color: Colors.black54,
//                                   fontSize: 12,
//                                 ),
//                               ),
//                               Icon(
//                                 Icons.favorite,
//                                 color: Colors.red,
//                                 size: 16,
//                               ),
//                               Text(
//                                 ' for developers',
//                                 style: TextStyle(
//                                   color: Colors.black54,
//                                   fontSize: 12,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   Widget _buildSection({
//     required bool isDarkMode,
//     IconData? icon,
//     String? title,
//     required Widget child,
//     EdgeInsets padding = const EdgeInsets.all(20),
//   }) {
//     return Container(
//       width: double.infinity,
//       padding: padding,
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(20),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black.withOpacity(0.05),
//             blurRadius: 15,
//             offset: const Offset(0, 5),
//           ),
//         ],
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           if (icon != null && title != null) ...[
//             Row(
//               children: [
//                 Container(
//                   padding: const EdgeInsets.all(8),
//                   decoration: BoxDecoration(
//                     color: Colors.blue.shade100,
//                     borderRadius: BorderRadius.circular(12),
//                   ),
//                   child: Icon(
//                     icon,
//                     color: Colors.blue.shade600,
//                     size: 24,
//                   ),
//                 ),
//                 const SizedBox(width: 16),
//                 Text(
//                   title,
//                   style: TextStyle(
//                     fontSize: 20,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.grey.shade800,
//                   ),
//                 ),
//               ],
//             ),
//             const SizedBox(height: 20),
//           ],
//           child,
//         ],
//       ),
//     );
//   }
//
//   Widget _buildContactItem({
//     required IconData icon,
//     required String label,
//     required String text,
//     required bool isDarkMode,
//   }) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 8),
//       child: Row(
//         children: [
//           Container(
//             padding: const EdgeInsets.all(12),
//             decoration: BoxDecoration(
//               color: Colors.blue.shade50,
//               borderRadius: BorderRadius.circular(12),
//             ),
//             child: Icon(
//               icon,
//               color: Colors.blue.shade600,
//               size: 24,
//             ),
//           ),
//           const SizedBox(width: 16),
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   label,
//                   style: const TextStyle(
//                     fontSize: 14,
//                     color: Colors.black54,
//                   ),
//                 ),
//                 const SizedBox(height: 4),
//                 Text(
//                   text,
//                   style: const TextStyle(
//                     fontSize: 16,
//                     fontWeight: FontWeight.w600,
//                     color: Colors.black87,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           const Icon(
//             Icons.arrow_forward_ios_rounded,
//             size: 16,
//             color: Colors.black38,
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget _buildActionButton({
//     required IconData icon,
//     required String label,
//     required VoidCallback onTap,
//     required bool isDarkMode,
//   }) {
//     return InkWell(
//       onTap: onTap,
//       borderRadius: BorderRadius.circular(12),
//       child: Container(
//         padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
//         decoration: BoxDecoration(
//           color: Colors.blue.shade50,
//           borderRadius: BorderRadius.circular(12),
//           border: Border.all(
//             color: Colors.blue.shade200,
//           ),
//         ),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Icon(
//               icon,
//               color: Colors.blue.shade600,
//               size: 18,
//             ),
//             const SizedBox(width: 6),
//             Flexible(
//               child: Text(
//                 label,
//                 style: const TextStyle(
//                   color: Colors.black87,
//                   fontSize: 12,
//                   fontWeight: FontWeight.w500,
//                 ),
//                 overflow: TextOverflow.ellipsis,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   Widget _buildTeamMember({
//     required String label,
//     required String name,
//     required String description,
//     required bool isDarkMode,
//   }) {
//     return Row(
//       children: [
//         Expanded(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 label,
//                 style: const TextStyle(
//                   fontSize: 14,
//                   color: Colors.black54,
//                 ),
//               ),
//               const SizedBox(height: 4),
//               Text(
//                 name,
//                 style: const TextStyle(
//                   fontSize: 16,
//                   fontWeight: FontWeight.w600,
//                   color: Colors.black87,
//                 ),
//               ),
//               const SizedBox(height: 2),
//               Text(
//                 description,
//                 style: const TextStyle(
//                   fontSize: 13,
//                   color: Colors.black54,
//                   height: 1.2,
//                 ),
//               ),
//             ],
//           ),
//         ),
//         const Icon(
//           Icons.arrow_forward_ios_rounded,
//           size: 16,
//           color: Colors.black38,
//         ),
//       ],
//     );
//   }
// }
//
// class TeamMemberCard extends StatelessWidget {
//   final String name;
//   final String role;
//   final String imagePath;
//   final AnimationController? floatingController;
//
//   const TeamMemberCard({
//     super.key,
//     required this.name,
//     required this.role,
//     required this.imagePath,
//     this.floatingController,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 120,
//       margin: const EdgeInsets.only(right: 16),
//       child: Column(
//         children: [
//           AnimatedBuilder(
//             animation: floatingController ?? const AlwaysStoppedAnimation(0),
//             builder: (context, child) {
//               return Transform.translate(
//                 offset: Offset(
//                   0,
//                   floatingController != null
//                       ? math.sin(floatingController!.value * 2 * math.pi) * 2
//                       : 0,
//                 ),
//                 child: CircleAvatar(
//                   radius: 30,
//                   backgroundImage: AssetImage(imagePath),
//                   onBackgroundImageError: (_, __) {},
//                   child: Container(
//                     decoration: const BoxDecoration(
//                       shape: BoxShape.circle,
//                       color: Colors.grey,
//                     ),
//                     child: const Icon(
//                       Icons.person,
//                       size: 30,
//                       color: Colors.white,
//                     ),
//                   ),
//                 ),
//               );
//             },
//           ),
//           const SizedBox(height: 8),
//           Text(
//             name,
//             style: Theme.of(context).textTheme.titleSmall?.copyWith(
//               fontWeight: FontWeight.bold,
//             ),
//             textAlign: TextAlign.center,
//             maxLines: 1,
//             overflow: TextOverflow.ellipsis,
//           ),
//           Text(
//             role,
//             style: Theme.of(context).textTheme.bodySmall?.copyWith(
//               color: Colors.grey[600],
//             ),
//             textAlign: TextAlign.center,
//             maxLines: 1,
//             overflow: TextOverflow.ellipsis,
//           ),
//         ],
//       ),
//     );
//   }
// }
//
//
//
import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:share_plus/share_plus.dart';
import 'package:package_info_plus/package_info_plus.dart';

class AboutUsScreen extends StatefulWidget {
  const AboutUsScreen({super.key});

  @override
  State<AboutUsScreen> createState() => _AboutUsScreenState();
}

class _AboutUsScreenState extends State<AboutUsScreen> with TickerProviderStateMixin {
  late AnimationController _floatingController;
  late AnimationController _fadeController;

  @override
  void initState() {
    super.initState();
    _floatingController = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    )..repeat(reverse: true);
    _fadeController = AnimationController(
      duration: const Duration(milliseconds: 1000),
      vsync: this,
    )..forward();
  }

  @override
  void dispose() {
    _floatingController.dispose();
    _fadeController.dispose();
    super.dispose();
  }

  Future<void> _launchEmail() async {
    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: 'aswdc@darshan.ac.in',
    );
    if (await canLaunchUrl(emailLaunchUri)) {
      await launchUrl(emailLaunchUri);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Could not launch email')),
      );
    }
  }

  Future<void> _launchPhone() async {
    final Uri phoneLaunchUri = Uri(
      scheme: 'tel',
      path: '+919727747317',
    );
    if (await canLaunchUrl(phoneLaunchUri)) {
      await launchUrl(phoneLaunchUri);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Could not launch phone')),
      );
    }
  }

  Future<void> _shareApp() async {
    const String message = 'Check out MongoVerse - FROM NO-SQL TO KNOW-IT-ALL!';
    await Share.share(message);
  }

  Future<void> _rateApp() async {
    const String packageName = 'com.yourcompany.mongoverse';
    final Uri playStoreUri = Uri.parse('market://details?id=$packageName');
    final Uri webPlayStoreUri = Uri.parse('https://play.google.com/store/apps/details?id=$packageName');

    try {
      bool canLaunch = await canLaunchUrl(playStoreUri);
      if (canLaunch) {
        await launchUrl(playStoreUri, mode: LaunchMode.externalApplication);
      } else {
        await launchUrl(webPlayStoreUri, mode: LaunchMode.externalApplication);
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Could not open Play Store. Please try again later.')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.blue.shade600, Colors.purple.shade600],
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: 12,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: Container(
              margin: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.3),
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 6,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: IconButton(
                iconSize: 22,
                icon: const Icon(
                  Icons.arrow_back_ios_new_rounded,
                  color: Colors.white,
                ),
                onPressed: () => Navigator.pop(context),
              ),
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.info_outline_rounded,
                  color: Colors.white,
                  size: 22,
                ),
                const SizedBox(width: 8),
                const Text(
                  'About Us',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 0.5,
                  ),
                ),
              ],
            ),
            centerTitle: true,
            actions: [
              Container(
                width: 48,
                margin: const EdgeInsets.all(8),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: isDarkMode
                ? [Colors.grey.shade900, Colors.grey.shade800]
                : [Colors.white, Colors.blue.shade50],
          ),
        ),
        child: FadeTransition(
          opacity: _fadeController,
          child: SingleChildScrollView(
            child: Column(
              children: [
                // Hero Section
                Container(
                  width: size.width,
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Colors.blue.shade700, Colors.purple.shade700],
                    ),
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.15),
                        blurRadius: 20,
                        offset: const Offset(0, 8),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      AnimatedBuilder(
                        animation: _floatingController,
                        builder: (context, child) {
                          return Transform.translate(
                            offset: Offset(
                              0,
                              math.sin(_floatingController.value * 2 * math.pi) * 10,
                            ),
                            child: Container(
                              padding: const EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                color: Colors.white.withOpacity(0.2),
                                border: Border.all(
                                  color: Colors.white.withOpacity(0.4),
                                  width: 3,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.25),
                                    blurRadius: 20,
                                    offset: const Offset(0, 10),
                                  ),
                                ],
                              ),
                              child: Image.asset(
                                'assets/mongoverse_logo.jpg',
                                height: 80,
                                width: 80,
                                fit: BoxFit.contain,
                                errorBuilder: (context, error, stackTrace) => const Icon(
                                  Icons.storage_rounded,
                                  size: 50,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                      const SizedBox(height: 16),
                      const Text(
                        'MongoVerse',
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          letterSpacing: 1.2,
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        'FROM NO-SQL TO KNOW-IT-ALL',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white70,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1.5,
                        ),
                      ),
                      const SizedBox(height: 8),
                      FutureBuilder<PackageInfo>(
                        future: PackageInfo.fromPlatform(),
                        builder: (context, snapshot) {
                          if (!snapshot.hasData) {
                            return const Text(
                              'Version ...',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.white60,
                              ),
                            );
                          }
                          final info = snapshot.data!;
                          return Text(
                            'Version ${info.version}',
                            style: const TextStyle(
                              fontSize: 14,
                              color: Colors.white60,
                              fontWeight: FontWeight.w500,
                            ),
                          );
                        },
                      ),
                      const SizedBox(height: 24),
                    ],
                  ),
                ),

                // Content Sections
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      // About Section with Image Container
                      _buildSection(
                        isDarkMode: isDarkMode,
                        icon: Icons.info_outline_rounded,
                        title: 'About MongoVerse',
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // New Image Container (2:1 ratio)
                            Container(
                              height: 150,
                              margin: const EdgeInsets.only(bottom: 5),
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
                                            size: 45,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 8),
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
                                            size: 45,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                color: isDarkMode ? Colors.grey.shade800 : Colors.blue.shade50,
                                borderRadius: BorderRadius.circular(16),
                                border: Border.all(
                                  color: isDarkMode ? Colors.grey.shade700 : Colors.blue.shade100,
                                ),
                              ),
                              child: Text(
                                'MongoVerse is a comprehensive learning platform designed to transform your understanding of NoSQL databases. From basic concepts to advanced operations, we provide interactive learning experiences that make database management accessible to everyone.',
                                style: TextStyle(
                                  fontSize: 14,
                                  height: 1.6,
                                  color: isDarkMode ? Colors.white : Colors.black87,
                                ),
                                textAlign: TextAlign.justify,
                              ),
                            ),
                            const SizedBox(height: 16),
                            Row(
                              children: [
                                Icon(
                                  Icons.lightbulb_outline,
                                  color: Colors.blue.shade600,
                                  size: 26,
                                ),
                                const SizedBox(width: 8),
                                Text(
                                  'Our Mission',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: isDarkMode ? Colors.white : Colors.blue.shade600,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 12),
                            Container(
                              padding: const EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                color: isDarkMode ? Colors.purple.shade900 : Colors.purple.shade50,
                                borderRadius: BorderRadius.circular(16),
                                border: Border.all(
                                  color: isDarkMode ? Colors.purple.shade800 : Colors.purple.shade200,
                                ),
                              ),
                              child: Text(
                                'To bridge the gap between traditional database knowledge and modern NoSQL technologies, making MongoDB accessible and understandable for developers at all levels.',
                                style: TextStyle(
                                  fontSize: 14,
                                  height: 1.6,
                                  color: isDarkMode ? Colors.white70 : Colors.purple.shade700,
                                ),
                                textAlign: TextAlign.justify,
                              ),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(height: 24),

                      // Team Section
                      _buildSection(
                        isDarkMode: isDarkMode,
                        icon: Icons.people_alt_rounded,
                        title: 'Meet Our Team',
                        child: Column(
                          children: [
                            // _buildTeamMember(
                            //   label: 'Lead Developer',
                            //   name: 'Jasmin Chauhan',
                            //   description: 'App Developer',
                            //   isDarkMode: isDarkMode,
                            // ),
                            // const SizedBox(height: 16),
                            Container(
                              height: 140,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: [
                                  TeamMemberCard(
                                    name: 'Jasmin Chauhan',
                                    role: 'App Developer',
                                    imagePath: 'assets/team1.jpg',
                                    floatingController: _floatingController,
                                  ),
                                  TeamMemberCard(
                                    name: 'Prof. Mehul Bhundiya',
                                    role: 'Project Mentor',
                                    imagePath: 'assets/team2.jpg',
                                    floatingController: _floatingController,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(height: 24),

                      // Contact Section
                      _buildSection(
                        isDarkMode: isDarkMode,
                        icon: Icons.contact_support_rounded,
                        title: 'Contact Us',
                        child: Column(
                          children: [
                            InkWell(
                              onTap: _launchEmail,
                              borderRadius: BorderRadius.circular(16),
                              child: _buildContactItem(
                                icon: Icons.email_rounded,
                                label: 'Email',
                                text: 'aswdc@darshan.ac.in',
                                isDarkMode: isDarkMode,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(vertical: 16),
                              child: Divider(
                                color: Colors.grey,
                                thickness: 0.5,
                              ),
                            ),
                            InkWell(
                              onTap: _launchPhone,
                              borderRadius: BorderRadius.circular(16),
                              child: _buildContactItem(
                                icon: Icons.phone_rounded,
                                label: 'Phone',
                                text: '+91 9727747317',
                                isDarkMode: isDarkMode,
                              ),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(height: 24),

                      // Action Buttons Section
                      _buildSection(
                        isDarkMode: isDarkMode,
                        padding: const EdgeInsets.all(16),
                        child: Row(
                          children: [
                            Expanded(
                              child: _buildActionButton(
                                icon: Icons.share_rounded,
                                label: 'Share App',
                                onTap: _shareApp,
                                isDarkMode: isDarkMode,
                              ),
                            ),
                            const SizedBox(width: 12),
                            Expanded(
                              child: _buildActionButton(
                                icon: Icons.star_rounded,
                                label: 'Rate Us',
                                onTap: _rateApp,
                                isDarkMode: isDarkMode,
                              ),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(height: 24),

                      // Footer
                      Container(
                        width: size.width,
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: isDarkMode ? Colors.grey.shade800 : Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 15,
                              offset: const Offset(0, 5),
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const SizedBox(width: 8),
                                Text(
                                  '© ${DateTime.now().year} MongoVerse',
                                  style: TextStyle(
                                    color: isDarkMode ? Colors.white70 : Colors.black87,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 8),
                            Text(
                              'All Rights Reserved',
                              style: TextStyle(
                                color: isDarkMode ? Colors.white60 : Colors.black54,
                                fontSize: 12,
                              ),
                            ),
                            const SizedBox(height: 12),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Made with ',
                                  style: TextStyle(
                                    color: isDarkMode ? Colors.white60 : Colors.black54,
                                    fontSize: 12,
                                  ),
                                ),
                                Icon(
                                  Icons.favorite,
                                  color: Colors.red.shade400,
                                  size: 16,
                                ),
                                Text(
                                  ' for developers',
                                  style: TextStyle(
                                    color: isDarkMode ? Colors.white60 : Colors.black54,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSection({
    required bool isDarkMode,
    IconData? icon,
    String? title,
    required Widget child,
    EdgeInsets padding = const EdgeInsets.all(20),
  }) {
    return Container(
      width: double.infinity,
      padding: padding,
      margin: const EdgeInsets.symmetric(horizontal: 4),
      decoration: BoxDecoration(
        color: isDarkMode ? Colors.grey.shade800 : Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(isDarkMode ? 0.2 : 0.1),
            blurRadius: 15,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (icon != null && title != null) ...[
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: isDarkMode ? Colors.blue.shade900 : Colors.blue.shade100,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Icon(
                    icon,
                    color: Colors.blue.shade600,
                    size: 26,
                  ),
                ),
                const SizedBox(width: 12),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: isDarkMode ? Colors.white : Colors.grey.shade800,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
          ],
          child,
        ],
      ),
    );
  }

  Widget _buildContactItem({
    required IconData icon,
    required String label,
    required String text,
    required bool isDarkMode,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: isDarkMode ? Colors.blue.shade900 : Colors.blue.shade50,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(
              icon,
              color: Colors.blue.shade600,
              size: 26,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: TextStyle(
                    fontSize: 14,
                    color: isDarkMode ? Colors.white70 : Colors.black54,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  text,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: isDarkMode ? Colors.white : Colors.black87,
                  ),
                ),
              ],
            ),
          ),
          Icon(
            Icons.arrow_forward_ios_rounded,
            size: 18,
            color: isDarkMode ? Colors.white38 : Colors.black38,
          ),
        ],
      ),
    );
  }

  Widget _buildActionButton({
    required IconData icon,
    required String label,
    required VoidCallback onTap,
    required bool isDarkMode,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 16),
        decoration: BoxDecoration(
          color: isDarkMode ? Colors.blue.shade900 : Colors.blue.shade50,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: isDarkMode ? Colors.blue.shade800 : Colors.blue.shade200,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(isDarkMode ? 0.2 : 0.1),
              blurRadius: 8,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: Colors.blue.shade600,
              size: 20,
            ),
            const SizedBox(width: 8),
            Flexible(
              child: Text(
                label,
                style: TextStyle(
                  color: isDarkMode ? Colors.white : Colors.black87,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTeamMember({
    required String label,
    required String name,
    required String description,
    required bool isDarkMode,
  }) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: TextStyle(
                  fontSize: 14,
                  color: isDarkMode ? Colors.white70 : Colors.black54,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                name,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: isDarkMode ? Colors.white : Colors.black87,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                description,
                style: TextStyle(
                  fontSize: 13,
                  color: isDarkMode ? Colors.white60 : Colors.black54,
                  height: 1.3,
                ),
              ),
            ],
          ),
        ),
        Icon(
          Icons.arrow_forward_ios_rounded,
          size: 18,
          color: isDarkMode ? Colors.white38 : Colors.black38,
        ),
      ],
    );
  }
}

class TeamMemberCard extends StatelessWidget {
  final String name;
  final String role;
  final String imagePath;
  final AnimationController? floatingController;

  const TeamMemberCard({
    super.key,
    required this.name,
    required this.role,
    required this.imagePath,
    this.floatingController,
  });

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return Container(
      width: 140,
      margin: const EdgeInsets.only(right: 16),
      child: Column(
        children: [
          AnimatedBuilder(
            animation: floatingController ?? const AlwaysStoppedAnimation(0),
            builder: (context, child) {
              return Transform.translate(
                offset: Offset(
                  0,
                  floatingController != null
                      ? math.sin(floatingController!.value * 2 * math.pi) * 3
                      : 0,
                ),
                child: CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage(imagePath),
                  onBackgroundImageError: (_, __) {},
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: isDarkMode ? Colors.grey.shade700 : Colors.grey.shade300,
                    ),
                    child: const Icon(
                      Icons.person,
                      size: 40,
                      color: Colors.white,
                    ),
                  ),
                ),
              );
            },
          ),
          const SizedBox(height: 12),
          Text(
            name,
            style: Theme.of(context).textTheme.titleSmall?.copyWith(
              fontWeight: FontWeight.bold,
              color: isDarkMode ? Colors.white : Colors.black87,
            ),
            textAlign: TextAlign.center,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            role,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
              color: isDarkMode ? Colors.white60 : Colors.grey.shade600,
            ),
            textAlign: TextAlign.center,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}