// import 'dart:math' as math;
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:get/get.dart';
// import 'package:mongoverse/utils/import_export.dart';
// import 'package:mongoverse/view/modules/intermediate_module_screens/intermediate_module_view.dart';
// import 'package:url_launcher/url_launcher.dart';
// import 'modules/advanced_module_screens/advanced_module_view.dart';
// import 'modules/basic_module_screens/basic_module_view.dart';
// import '../services/api_services.dart';
//
// class DashboardScreen extends StatefulWidget {
//   DashboardScreen({super.key});
//
//   @override
//   State<DashboardScreen> createState() => _DashboardScreenState();
// }
//
// class _DashboardScreenState extends State<DashboardScreen>
//     with TickerProviderStateMixin {
//   late AnimationController _floatingController;
//   late AnimationController _staggerController;
//   late List<Animation<double>> _slideAnimations;
//   late List<Animation<double>> _fadeAnimations;
//
//   final List<Map<String, dynamic>> modules = [
//     {
//       "name": "Basic",
//       "description": "Master MongoDB fundamentals, CRUD operations, and basic queries",
//       "icon": Icons.school_outlined,
//       "progress": 0.0,
//       "lessons": 12,
//       "duration": "6-8 hours",
//       "difficulty": "Easy",
//       "primaryColor": const Color(0xFF4CAF50),
//       "secondaryColor": const Color(0xFF81C784),
//       "backgroundColor": const Color(0xFFE8F5E8),
//     },
//     {
//       "name": "Intermediate",
//       "description": "Advanced queries, aggregation pipelines, and indexing strategies",
//       "icon": Icons.trending_up_outlined,
//       "progress": 0.0,
//       "lessons": 6,
//       "duration": "4-5 hours",
//       "difficulty": "Medium",
//       "primaryColor": const Color(0xFFFF9800),
//       "secondaryColor": const Color(0xFFFFB74D),
//       "backgroundColor": const Color(0xFFFFF3E0),
//     },
//     {
//       "name": "Advanced",
//       "description": "Performance optimization, sharding, replication, and scaling",
//       "icon": Icons.rocket_launch_outlined,
//       "progress": 0.0,
//       "lessons": 12,
//       "duration": "8-10 hours",
//       "difficulty": "Hard",
//       "primaryColor": const Color(0xFFE91E63),
//       "secondaryColor": const Color(0xFFF06292),
//       "backgroundColor": const Color(0xFFFCE4EC),
//     },
//   ];
//
//
//
//   void _updateAnimations() {
//     _slideAnimations = List.generate(
//       modules.length,
//           (index) => Tween<double>(
//         begin: 50.0,
//         end: 0.0,
//       ).animate(
//         CurvedAnimation(
//           parent: _staggerController,
//           curve: Interval(
//             index * 0.2,
//             0.6 + (index * 0.2),
//             curve: Curves.easeOutCubic,
//           ),
//         ),
//       ),
//     );
//
//     _fadeAnimations = List.generate(
//       modules.length,
//           (index) => Tween<double>(
//         begin: 0.0,
//         end: 1.0,
//       ).animate(
//         CurvedAnimation(
//           parent: _staggerController,
//           curve: Interval(
//             index * 0.2,
//             0.6 + (index * 0.2),
//             curve: Curves.easeOut,
//           ),
//         ),
//       ),
//     );
//   }
//
//   IconData _getIconForModule(String? name) {
//     switch (name?.toLowerCase()) {
//       case 'basic':
//         return Icons.school_outlined;
//       case 'intermediate':
//         return Icons.trending_up_outlined;
//       case 'advanced':
//         return Icons.rocket_launch_outlined;
//       default:
//         return Icons.help_outline;
//     }
//   }
//
//   Color _getPrimaryColor(String? name) {
//     switch (name?.toLowerCase()) {
//       case 'basic':
//         return const Color(0xFF4CAF50);
//       case 'intermediate':
//         return const Color(0xFFFF9800);
//       case 'advanced':
//         return const Color(0xFFE91E63);
//       default:
//         return Colors.grey;
//     }
//   }
//
//   Color _getSecondaryColor(String? name) {
//     switch (name?.toLowerCase()) {
//       case 'basic':
//         return const Color(0xFF81C784);
//       case 'intermediate':
//         return const Color(0xFFFFB74D);
//       case 'advanced':
//         return const Color(0xFFF06292);
//       default:
//         return Colors.grey.shade300;
//     }
//   }
//
//   Color _getBackgroundColor(String? name) {
//     switch (name?.toLowerCase()) {
//       case 'basic':
//         return const Color(0xFFE8F5E8);
//       case 'intermediate':
//         return const Color(0xFFFFF3E0);
//       case 'advanced':
//         return const Color(0xFFFCE4EC);
//       default:
//         return Colors.grey.shade100;
//     }
//   }
//
//   @override
//   void initState() {
//     super.initState();
//     _floatingController = AnimationController(
//       duration: const Duration(seconds: 3),
//       vsync: this,
//     )..repeat(reverse: true);
//
//     _staggerController = AnimationController(
//       duration: const Duration(milliseconds: 1200),
//       vsync: this,
//     );
//
//     _slideAnimations = List.generate(
//       modules.length,
//           (index) => Tween<double>(
//         begin: 50.0,
//         end: 0.0,
//       ).animate(
//         CurvedAnimation(
//           parent: _staggerController,
//           curve: Interval(
//             index * 0.2,
//             0.6 + (index * 0.2),
//             curve: Curves.easeOutCubic,
//           ),
//         ),
//       ),
//     );
//
//     _fadeAnimations = List.generate(
//       modules.length,
//           (index) => Tween<double>(
//         begin: 0.0,
//         end: 1.0,
//       ).animate(
//         CurvedAnimation(
//           parent: _staggerController,
//           curve: Interval(
//             index * 0.2,
//             0.6 + (index * 0.2),
//             curve: Curves.easeOut,
//           ),
//         ),
//       ),
//     );
//
//     _staggerController.forward();
//   }
//
//
//
//   @override
//   void dispose() {
//     _floatingController.dispose();
//     _staggerController.dispose();
//     super.dispose();
//   }
//
//   void navigateToModule(int index) {
//     HapticFeedback.lightImpact();
//
//     switch (index) {
//       case 0:
//         Get.to(() => BasicModuleView(),
//             transition: Transition.fadeIn,
//             duration: const Duration(milliseconds: 400));
//         break;
//       case 1:
//         Get.to(() => IntermediateModuleView(),
//             transition: Transition.fadeIn,
//             duration: const Duration(milliseconds: 400));
//         break;
//       case 2:
//         Get.to(() => AdvancedModuleView(),
//             transition: Transition.fadeIn,
//             duration: const Duration(milliseconds: 400));
//         break;
//       default:
//         Get.snackbar(
//           "🚫 Error",
//           "Unknown module selected",
//           snackPosition: SnackPosition.TOP,
//           backgroundColor: Colors.red.shade100,
//           colorText: Colors.red.shade800,
//           borderRadius: 12,
//           margin: const EdgeInsets.all(16),
//           icon: Icon(Icons.error_outline, color: Colors.red.shade800),
//         );
//     }
//   }
//
//
//   Future<void> launchExternalUrl(String url) async {
//     final Uri uri = Uri.parse(url);
//     if (await canLaunchUrl(uri)) {
//       await launchUrl(
//         uri,
//         mode: LaunchMode.externalApplication,
//       );
//     } else {
//       print('Could not launch $url');
//     }
//   }
//
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
//         child: SafeArea(
//           child: CustomScrollView(
//             physics: const BouncingScrollPhysics(),
//             slivers: [
//               SliverAppBar(
//                 expandedHeight: 180,
//                 floating: false,
//                 pinned: true,
//                 elevation: 0,
//                 backgroundColor: Colors.transparent,
//                 flexibleSpace: FlexibleSpaceBar(
//                   background: _buildHeader(),
//                 ),
//               ),
//               SliverToBoxAdapter(
//                 child: Padding(
//                   padding: const EdgeInsets.all(20),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       _buildStatsCards(),
//                       const SizedBox(height: 30),
//                       _buildSectionHeader(),
//                       const SizedBox(height: 20),
//                       _buildModulesList(),
//                       const SizedBox(height: 30),
//                       _buildQuickActions(),
//                       const SizedBox(height: 20),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   Widget _buildHeader() {
//     return Container(
//       padding: const EdgeInsets.fromLTRB(20, 40, 20, 20),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         mainAxisAlignment: MainAxisAlignment.end,
//         children: [
//           Row(
//             children: [
//               Container(
//                 padding: const EdgeInsets.all(12),
//                 decoration: BoxDecoration(
//                   gradient: LinearGradient(
//                     colors: [Colors.blue.shade400, Colors.purple.shade400],
//                   ),
//                   borderRadius: BorderRadius.circular(16),
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.blue.withOpacity(0.3),
//                       blurRadius: 12,
//                       offset: const Offset(0, 4),
//                     ),
//                   ],
//                 ),
//                 child: const Icon(
//                   Icons.storage,
//                   color: Colors.white,
//                   size: 30,
//                 ),
//
//
//               ),
//               const SizedBox(width: 16),
//               Expanded(
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     ShaderMask(
//                       shaderCallback: (bounds) => LinearGradient(
//                         colors: [Colors.blue.shade600, Colors.purple.shade600],
//                       ).createShader(bounds),
//                       child: const Text(
//                         "MongoVerse",
//                         style: TextStyle(
//                           fontSize: 32,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.white,
//                         ),
//                       ),
//                     ),
//                     Text(
//                       "FROM NO-SQL TO KNOW-IT-ALL",
//                       style: TextStyle(
//                         fontSize: 16,
//                         color: Colors.grey.shade600,
//                         fontWeight: FontWeight.w500,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget _buildStatsCards() {
//     return Row(
//       children: [
//         Expanded(
//           child: _buildStatCard(
//             "Modules",
//             "3",
//             Icons.library_books_outlined,
//             Colors.blue,
//           ),
//         ),
//         const SizedBox(width: 12),
//         Expanded(
//           child: _buildStatCard(
//             "Lessons",
//             "30",
//             Icons.play_lesson_outlined,
//             Colors.green,
//           ),
//         ),
//         const SizedBox(width: 12),
//         Expanded(
//           child: _buildStatCard(
//             "Est. Time",
//             "20h",
//             Icons.access_time_outlined,
//             Colors.orange,
//           ),
//         ),
//       ],
//     );
//   }
//
//   Widget _buildStatCard(String title, String value, IconData icon, Color color) {
//     return Container(
//       padding: const EdgeInsets.all(16),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(16),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black.withOpacity(0.05),
//             blurRadius: 10,
//             offset: const Offset(0, 2),
//           ),
//         ],
//       ),
//       child: Column(
//         children: [
//           Container(
//             padding: const EdgeInsets.all(8),
//             decoration: BoxDecoration(
//               color: color.withOpacity(0.1),
//               borderRadius: BorderRadius.circular(12),
//             ),
//             child: Icon(icon, color: color, size: 20),
//           ),
//           const SizedBox(height: 8),
//           Text(
//             value,
//             style: TextStyle(
//               fontSize: 20,
//               fontWeight: FontWeight.bold,
//               color: Colors.grey.shade800,
//             ),
//           ),
//           Text(
//             title,
//             style: TextStyle(
//               fontSize: 12,
//               color: Colors.grey.shade600,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget _buildSectionHeader() {
//     return Row(
//       children: [
//         Container(
//           width: 4,
//           height: 24,
//           decoration: BoxDecoration(
//             gradient: LinearGradient(
//               colors: [Colors.blue.shade400, Colors.purple.shade400],
//             ),
//             borderRadius: BorderRadius.circular(2),
//           ),
//         ),
//         const SizedBox(width: 12),
//         Text(
//           "Choose Your Path",
//           style: TextStyle(
//             fontSize: 24,
//             fontWeight: FontWeight.bold,
//             color: Colors.grey.shade800,
//           ),
//         ),
//       ],
//     );
//   }
//
//   Widget _buildModulesList() {
//     return AnimatedBuilder(
//       animation: _staggerController,
//       builder: (context, child) {
//         return Column(
//           children: modules.asMap().entries.map((entry) {
//             final index = entry.key;
//             final module = entry.value;
//
//             return Transform.translate(
//               offset: Offset(0, _slideAnimations[index].value),
//               child: Opacity(
//                 opacity: _fadeAnimations[index].value,
//                 child: _buildModuleCard(module, index),
//               ),
//             );
//           }).toList(),
//         );
//       },
//     );
//   }
//
//   Widget _buildModuleCard(Map<String, dynamic> module, int index) {
//     return Container(
//       margin: const EdgeInsets.only(bottom: 20),
//       child: Material(
//         color: Colors.transparent,
//         child: InkWell(
//           onTap: () => navigateToModule(index),
//           borderRadius: BorderRadius.circular(24),
//           child: Container(
//             padding: const EdgeInsets.all(24),
//             decoration: BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.circular(24),
//               border: Border.all(
//                 color: module['backgroundColor'],
//                 width: 2,
//               ),
//               boxShadow: [
//                 BoxShadow(
//                   color: module['primaryColor'].withOpacity(0.1),
//                   blurRadius: 20,
//                   offset: const Offset(0, 8),
//                 ),
//               ],
//             ),
//             child: Column(
//               children: [
//                 Row(
//                   children: [
//                     AnimatedBuilder(
//                       animation: _floatingController,
//                       builder: (context, child) {
//                         return Transform.translate(
//                           offset: Offset(
//                             0,
//                             math.sin(_floatingController.value * 2 * math.pi) * 2,
//                           ),
//                           child: Container(
//                             padding: const EdgeInsets.all(16),
//                             decoration: BoxDecoration(
//                               gradient: LinearGradient(
//                                 colors: [
//                                   module['primaryColor'],
//                                   module['secondaryColor'],
//                                 ],
//                               ),
//                               borderRadius: BorderRadius.circular(20),
//                               boxShadow: [
//                                 BoxShadow(
//                                   color: module['primaryColor'].withOpacity(0.3),
//                                   blurRadius: 12,
//                                   offset: const Offset(0, 4),
//                                 ),
//                               ],
//                             ),
//                             child: Icon(
//                               module['icon'],
//                               color: Colors.white,
//                               size: 28,
//                             ),
//                           ),
//                         );
//                       },
//                     ),
//                     const SizedBox(width: 20),
//                     Expanded(
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Row(
//                             children: [
//                               Text(
//                                 module['name'],
//                                 style: const TextStyle(
//                                   fontSize: 22,
//                                   fontWeight: FontWeight.bold,
//                                   color: Colors.black87,
//                                 ),
//                               ),
//                               const SizedBox(width: 8),
//                               Container(
//                                 padding: const EdgeInsets.symmetric(
//                                   horizontal: 8,
//                                   vertical: 4,
//                                 ),
//                                 decoration: BoxDecoration(
//                                   color: module['backgroundColor'],
//                                   borderRadius: BorderRadius.circular(12),
//                                 ),
//                                 child: Text(
//                                   module['difficulty'],
//                                   style: TextStyle(
//                                     fontSize: 9,
//                                     fontWeight: FontWeight.w600,
//                                     color: module['primaryColor'],
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                           const SizedBox(height: 6),
//                           Text(
//                             module['description'],
//                             style: TextStyle(
//                               fontSize: 14,
//                               color: Colors.grey.shade600,
//                               height: 1.4,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     Icon(
//                       Icons.arrow_forward_ios_rounded,
//                       color: module['primaryColor'],
//                       size: 18,
//                     ),
//                   ],
//                 ),
//                 const SizedBox(height: 20),
//                 Row(
//                   children: [
//                     _buildInfoChip(
//                       Icons.playlist_play_outlined,
//                       "${module['lessons']} lessons",
//                       module['primaryColor'],
//                     ),
//                     const SizedBox(width: 12),
//                     _buildInfoChip(
//                       Icons.access_time_outlined,
//                       module['duration'],
//                       module['primaryColor'],
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//   Widget _buildInfoChip(IconData icon, String text, Color color) {
//     return Container(
//       padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
//       decoration: BoxDecoration(
//         color: color.withOpacity(0.1),
//         borderRadius: BorderRadius.circular(20),
//       ),
//       child: Row(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           Icon(icon, size: 14, color: color),
//           const SizedBox(width: 6),
//           Text(
//             text,
//             style: TextStyle(
//               fontSize: 12,
//               fontWeight: FontWeight.w500,
//               color: color,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget _buildQuickActions() {
//     return Container(
//       padding: const EdgeInsets.all(20),
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           colors: [Colors.blue.shade50, Colors.purple.shade50],
//         ),
//         borderRadius: BorderRadius.circular(20),
//         border: Border.all(color: Colors.blue.shade100),
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Row(
//             children: [
//               Icon(Icons.tips_and_updates_outlined,
//                   color: Colors.blue.shade600, size: 24),
//               const SizedBox(width: 12),
//               Text(
//                 "Pro Tips",
//                 style: TextStyle(
//                   fontSize: 18,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.blue.shade800,
//                 ),
//               ),
//             ],
//           ),
//           const SizedBox(height: 12),
//           Text(
//             "• Start with Basic module for solid foundation\n• Practice each concept before moving forward\n• Use the built-in MongoDB shell for hands-on experience",
//             style: TextStyle(
//               fontSize: 14,
//               color: Colors.blue.shade700,
//               height: 1.6,
//             ),
//           ),
//           const SizedBox(height: 16),
//           Row(
//             children: [
//               Expanded(
//                 child: ElevatedButton.icon(
//                   onPressed: () {
//                     launchExternalUrl('https://www.mongodb.com/docs/');
//                   },
//                   icon: const Icon(Icons.book_outlined, size: 18),
//                   label: const Text("Documentation"),
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.white,
//                     foregroundColor: Colors.blue.shade600,
//                     elevation: 0,
//                     padding: const EdgeInsets.symmetric(vertical: 12),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(12),
//                       side: BorderSide(color: Colors.blue.shade200),
//                     ),
//                   ),
//                 ),
//               ),
//               const SizedBox(width: 12),
//               // Expanded(
//               //   child: ElevatedButton.icon(
//               //     onPressed: () {
//               //       // Add practice mode action
//               //     },
//               //     icon: const Icon(Icons.code_outlined, size: 18),
//               //     label: const Text("Practice Mode"),
//               //     style: ElevatedButton.styleFrom(
//               //       backgroundColor: Colors.blue.shade600,
//               //       foregroundColor: Colors.white,
//               //       elevation: 0,
//               //       padding: const EdgeInsets.symmetric(vertical: 12),
//               //       shape: RoundedRectangleBorder(
//               //         borderRadius: BorderRadius.circular(12),
//               //       ),
//               //     ),
//               //   ),
//               // ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
//



//WITH DRAWER CODE STATIC
//
// import 'dart:math' as math;
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:get/get.dart';
// import 'package:mongoverse/utils/import_export.dart';
// import 'package:mongoverse/view/modules/intermediate_module_screens/intermediate_module_view.dart';
// import 'package:url_launcher/url_launcher.dart';
// import 'modules/advanced_module_screens/advanced_module_view.dart';
// import 'modules/basic_module_screens/basic_module_view.dart';
// import '../services/api_services.dart';
//
// class DashboardScreen extends StatefulWidget {
//   DashboardScreen({super.key});
//
//   @override
//   State<DashboardScreen> createState() => _DashboardScreenState();
// }
//
// class _DashboardScreenState extends State<DashboardScreen>
//     with TickerProviderStateMixin {
//   late AnimationController _floatingController;
//   late AnimationController _staggerController;
//   late AnimationController _drawerAnimationController;
//   late Animation<double> _scaleAnimation;
//   late Animation<Offset> _slideAnimation;
//   late Animation<double> _fadeAnimation;
//   late List<Animation<double>> _slideAnimations;
//   late List<Animation<double>> _fadeAnimations;
//   late List<Animation<double>> _drawerItemAnimations;
//   final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
//
//   final List<Map<String, dynamic>> modules = [
//     {
//       "name": "Basic",
//       "description": "Master MongoDB fundamentals, CRUD operations, and basic queries",
//       "icon": Icons.school_outlined,
//       "progress": 0.0,
//       "lessons": 12,
//       "duration": "6-8 hours",
//       "difficulty": "Easy",
//       "primaryColor": const Color(0xFF4CAF50),
//       "secondaryColor": const Color(0xFF81C784),
//       "backgroundColor": const Color(0xFFE8F5E8),
//     },
//     {
//       "name": "Intermediate",
//       "description": "Advanced queries, aggregation pipelines, and indexing strategies",
//       "icon": Icons.trending_up_outlined,
//       "progress": 0.0,
//       "lessons": 6,
//       "duration": "4-5 hours",
//       "difficulty": "Medium",
//       "primaryColor": const Color(0xFFFF9800),
//       "secondaryColor": const Color(0xFFFFB74D),
//       "backgroundColor": const Color(0xFFFFF3E0),
//     },
//     {
//       "name": "Advanced",
//       "description": "Performance optimization, sharding, replication, and scaling",
//       "icon": Icons.rocket_launch_outlined,
//       "progress": 0.0,
//       "lessons": 12,
//       "duration": "8-10 hours",
//       "difficulty": "Hard",
//       "primaryColor": const Color(0xFFE91E63),
//       "secondaryColor": const Color(0xFFF06292),
//       "backgroundColor": const Color(0xFFFCE4EC),
//     },
//   ];
//
//   final List<Map<String, dynamic>> drawerItems = [
//     {
//       "title": "Dashboard",
//       "icon": Icons.dashboard_rounded,
//       "color": Colors.blue,
//     },
//     {
//       "title": "Progress",
//       "icon": Icons.trending_up_rounded,
//       "color": Colors.green,
//     },
//     {
//       "title": "Certificates",
//       "icon": Icons.workspace_premium_rounded,
//       "color": Colors.amber,
//     },
//     {
//       "title": "Settings",
//       "icon": Icons.settings_rounded,
//       "color": Colors.grey,
//     },
//     {
//       "title": "About Us",
//       "icon": Icons.info_rounded,
//       "color": Colors.purple,
//     },
//     {
//       "title": "Feedback",
//       "icon": Icons.feedback_rounded,
//       "color": Colors.orange,
//     },
//   ];
//
//   @override
//   void initState() {
//     super.initState();
//     _floatingController = AnimationController(
//       duration: const Duration(seconds: 3),
//       vsync: this,
//     )..repeat(reverse: true);
//
//     _staggerController = AnimationController(
//       duration: const Duration(milliseconds: 1200),
//       vsync: this,
//     );
//
//     _drawerAnimationController = AnimationController(
//       vsync: this,
//       duration: const Duration(milliseconds: 400),
//     );
//
//     _scaleAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
//       CurvedAnimation(
//         parent: _drawerAnimationController,
//         curve: Curves.elasticOut,
//       ),
//     );
//
//     _slideAnimation = Tween<Offset>(
//       begin: const Offset(-1.0, 0.0),
//       end: Offset.zero,
//     ).animate(
//       CurvedAnimation(
//         parent: _drawerAnimationController,
//         curve: Curves.easeOutBack,
//       ),
//     );
//
//     _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
//       CurvedAnimation(
//         parent: _drawerAnimationController,
//         curve: const Interval(0.2, 1.0, curve: Curves.easeIn),
//       ),
//     );
//
//     _slideAnimations = List.generate(
//       modules.length,
//           (index) => Tween<double>(
//         begin: 50.0,
//         end: 0.0,
//       ).animate(
//         CurvedAnimation(
//           parent: _staggerController,
//           curve: Interval(
//             index * 0.2,
//             0.6 + (index * 0.2),
//             curve: Curves.easeOutCubic,
//           ),
//         ),
//       ),
//     );
//
//     _fadeAnimations = List.generate(
//       modules.length,
//           (index) => Tween<double>(
//         begin: 0.0,
//         end: 1.0,
//       ).animate(
//         CurvedAnimation(
//           parent: _staggerController,
//           curve: Interval(
//             index * 0.2,
//             0.6 + (index * 0.2),
//             curve: Curves.easeOut,
//           ),
//         ),
//       ),
//     );
//
//     _drawerItemAnimations = List.generate(
//       drawerItems.length,
//           (index) => Tween<double>(begin: 0.0, end: 1.0).animate(
//         CurvedAnimation(
//           parent: _drawerAnimationController,
//           curve: Interval(
//             0.1 + (index * 0.1),
//             0.5 + (index * 0.1),
//             curve: Curves.easeOutBack,
//           ),
//         ),
//       ),
//     );
//
//     _staggerController.forward();
//   }
//
//   @override
//   void dispose() {
//     _floatingController.dispose();
//     _staggerController.dispose();
//     _drawerAnimationController.dispose();
//     super.dispose();
//   }
//
//   void _toggleDrawer() {
//     if (_scaffoldKey.currentState!.isDrawerOpen) {
//       _drawerAnimationController.reverse().then((_) {
//         _scaffoldKey.currentState!.closeDrawer();
//       });
//     } else {
//       _scaffoldKey.currentState!.openDrawer();
//       _drawerAnimationController.forward();
//     }
//   }
//
//   void navigateToModule(int index) {
//     HapticFeedback.lightImpact();
//
//     switch (index) {
//       case 0:
//         Get.to(() => BasicModuleView(),
//             transition: Transition.fadeIn,
//             duration: const Duration(milliseconds: 400));
//         break;
//       case 1:
//         Get.to(() => IntermediateModuleView(),
//             transition: Transition.fadeIn,
//             duration: const Duration(milliseconds: 400));
//         break;
//       case 2:
//         Get.to(() => AdvancedModuleView(),
//             transition: Transition.fadeIn,
//             duration: const Duration(milliseconds: 400));
//         break;
//       default:
//         Get.snackbar(
//           "🚫 Error",
//           "Unknown module selected",
//           snackPosition: SnackPosition.TOP,
//           backgroundColor: Colors.red.shade100,
//           colorText: Colors.red.shade800,
//           borderRadius: 12,
//           margin: const EdgeInsets.all(16),
//           icon: Icon(Icons.error_outline, color: Colors.red.shade800),
//         );
//     }
//   }
//
//   Future<void> launchExternalUrl(String url) async {
//     final Uri uri = Uri.parse(url);
//
//     if (!await launchUrl(
//       uri,
//       mode: LaunchMode.externalApplication,
//     )) {
//       print("Could not launch $url");
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       key: _scaffoldKey,
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
//         child: SafeArea(
//           child: CustomScrollView(
//             physics: const BouncingScrollPhysics(),
//             slivers: [
//               SliverAppBar(
//                 expandedHeight: 180,
//                 floating: false,
//                 pinned: true,
//                 elevation: 0,
//                 backgroundColor: Colors.transparent,
//                 automaticallyImplyLeading: false, // Remove default back button
//                 flexibleSpace: FlexibleSpaceBar(
//                   background: _buildHeader(),
//                 ),
//               ),
//               SliverToBoxAdapter(
//                 child: Padding(
//                   padding: const EdgeInsets.all(20),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       _buildStatsCards(),
//                       const SizedBox(height: 30),
//                       _buildSectionHeader(),
//                       const SizedBox(height: 20),
//                       _buildModulesList(),
//                       const SizedBox(height: 30),
//                       _buildQuickActions(),
//                       const SizedBox(height: 20),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//       drawer: _buildAnimatedDrawer(),
//     );
//   }
//
//   Widget _buildAnimatedDrawer() {
//     return SlideTransition(
//       position: _slideAnimation,
//       child: ScaleTransition(
//         scale: _scaleAnimation,
//         alignment: Alignment.centerLeft,
//         child: Container(
//           width: MediaQuery.of(context).size.width * 0.85,
//           decoration: const BoxDecoration(
//             gradient: LinearGradient(
//               begin: Alignment.topLeft,
//               end: Alignment.bottomRight,
//               colors: [
//                 Color(0xFF667eea),
//                 Color(0xFF764ba2),
//                 Color(0xFF6B73FF),
//               ],
//             ),
//           ),
//           child: SafeArea(
//             child: FadeTransition(
//               opacity: _fadeAnimation,
//               child: Column(
//                 children: [
//                   _buildDrawerHeader(),
//                   Expanded(
//                     child: _buildDrawerItems(),
//                   ),
//                   _buildDrawerFooter(),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//   Widget _buildDrawerHeader() {
//     return Container(
//       padding: const EdgeInsets.all(32),
//       child: Column(
//         children: [
//           Container(
//             padding: const EdgeInsets.all(20),
//             decoration: BoxDecoration(
//               shape: BoxShape.circle,
//               color: Colors.white.withOpacity(0.2),
//               boxShadow: [
//                 BoxShadow(
//                   color: Colors.black.withOpacity(0.1),
//                   blurRadius: 20,
//                   offset: const Offset(0, 10),
//                 ),
//               ],
//             ),
//             child: const Icon(
//               Icons.storage,
//               color: Colors.white,
//               size: 48,
//             ),
//           ),
//           const SizedBox(height: 20),
//           const Text(
//             'MongoVerse',
//             style: TextStyle(
//               color: Colors.white,
//               fontSize: 28,
//               fontWeight: FontWeight.bold,
//               letterSpacing: 1.2,
//             ),
//           ),
//           const SizedBox(height: 8),
//           Text(
//             'Master MongoDB',
//             style: TextStyle(
//               color: Colors.white.withOpacity(0.8),
//               fontSize: 16,
//               fontWeight: FontWeight.w300,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget _buildDrawerItems() {
//     return AnimatedBuilder(
//       animation: _drawerAnimationController,
//       builder: (context, child) {
//         return ListView.builder(
//           padding: const EdgeInsets.symmetric(horizontal: 16),
//           itemCount: drawerItems.length,
//           itemBuilder: (context, index) {
//             return Transform.scale(
//               scale: _drawerItemAnimations[index].value,
//               child: Opacity(
//                 opacity: _drawerItemAnimations[index].value,
//                 child: Container(
//                   margin: const EdgeInsets.only(bottom: 8),
//                   child: Material(
//                     color: Colors.transparent,
//                     child: InkWell(
//                       onTap: () => _handleDrawerItemTap(index),
//                       borderRadius: BorderRadius.circular(16),
//                       child: Container(
//                         padding: const EdgeInsets.symmetric(
//                           horizontal: 20,
//                           vertical: 16,
//                         ),
//                         decoration: BoxDecoration(
//                           color: Colors.white.withOpacity(0.1),
//                           borderRadius: BorderRadius.circular(16),
//                           border: Border.all(
//                             color: Colors.white.withOpacity(0.2),
//                           ),
//                         ),
//                         child: Row(
//                           children: [
//                             Container(
//                               padding: const EdgeInsets.all(8),
//                               decoration: BoxDecoration(
//                                 color: Colors.white.withOpacity(0.2),
//                                 borderRadius: BorderRadius.circular(12),
//                               ),
//                               child: Icon(
//                                 drawerItems[index]['icon'],
//                                 color: Colors.white,
//                                 size: 20,
//                               ),
//                             ),
//                             const SizedBox(width: 16),
//                             Text(
//                               drawerItems[index]['title'],
//                               style: const TextStyle(
//                                 color: Colors.white,
//                                 fontSize: 16,
//                                 fontWeight: FontWeight.w500,
//                               ),
//                             ),
//                             const Spacer(),
//                             const Icon(
//                               Icons.arrow_forward_ios_rounded,
//                               color: Colors.white,
//                               size: 16,
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             );
//           },
//         );
//       },
//     );
//   }
//
//   Widget _buildDrawerFooter() {
//     return Container(
//       padding: const EdgeInsets.all(20),
//       child: Column(
//         children: [
//           Container(
//             padding: const EdgeInsets.symmetric(
//               horizontal: 20,
//               vertical: 12,
//             ),
//             decoration: BoxDecoration(
//               color: Colors.white.withOpacity(0.15),
//               borderRadius: BorderRadius.circular(25),
//               border: Border.all(
//                 color: Colors.white.withOpacity(0.3),
//               ),
//             ),
//             child: Row(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 Icon(
//                   Icons.star_rounded,
//                   color: Colors.yellow.shade300,
//                   size: 18,
//                 ),
//                 const SizedBox(width: 8),
//                 Text(
//                   'Rate Us',
//                   style: TextStyle(
//                     color: Colors.white.withOpacity(0.9),
//                     fontSize: 14,
//                     fontWeight: FontWeight.w500,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           const SizedBox(height: 16),
//           Text(
//             'Version 1.0.0',
//             style: TextStyle(
//               color: Colors.white.withOpacity(0.6),
//               fontSize: 12,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   void _handleDrawerItemTap(int index) {
//     HapticFeedback.lightImpact();
//     _toggleDrawer();
//
//     switch (index) {
//       case 0: // Dashboard
//       // Already on dashboard
//         break;
//       case 1: // Progress
//         Get.snackbar(
//           "Progress",
//           "Progress tracking feature coming soon!",
//           snackPosition: SnackPosition.TOP,
//           backgroundColor: Colors.green.shade100,
//           colorText: Colors.green.shade800,
//           borderRadius: 12,
//           margin: const EdgeInsets.all(16),
//           icon: Icon(Icons.trending_up, color: Colors.green.shade800),
//         );
//         break;
//       case 2: // Certificates
//         Get.snackbar(
//           "Certificates",
//           "Certificate system coming soon!",
//           snackPosition: SnackPosition.TOP,
//           backgroundColor: Colors.amber.shade100,
//           colorText: Colors.amber.shade800,
//           borderRadius: 12,
//           margin: const EdgeInsets.all(16),
//           icon: Icon(Icons.workspace_premium, color: Colors.amber.shade800),
//         );
//         break;
//       case 3: // Settings
//         Get.snackbar(
//           "Settings",
//           "Settings page coming soon!",
//           snackPosition: SnackPosition.TOP,
//           backgroundColor: Colors.grey.shade100,
//           colorText: Colors.grey.shade800,
//           borderRadius: 12,
//           margin: const EdgeInsets.all(16),
//           icon: Icon(Icons.settings, color: Colors.grey.shade800),
//         );
//         break;
//       case 4: // About Us
//         showDialog(
//           context: context,
//           builder: (context) => AlertDialog(
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(20),
//             ),
//             title: const Text('About MongoVerse'),
//             content: const Text(
//               'MongoVerse is your comprehensive platform for mastering MongoDB, designed to take you from beginner to expert with interactive lessons and hands-on practice.',
//             ),
//             actions: [
//               TextButton(
//                 onPressed: () => Navigator.pop(context),
//                 child: const Text('Close'),
//               ),
//             ],
//           ),
//         );
//         break;
//       case 5: // Feedback
//         showDialog(
//           context: context,
//           builder: (context) => AlertDialog(
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(20),
//             ),
//             title: const Text('Share Your Feedback'),
//             content: const Text(
//               'We value your feedback! Help us improve MongoVerse by sharing your thoughts and suggestions.',
//             ),
//             actions: [
//               TextButton(
//                 onPressed: () => Navigator.pop(context),
//                 child: const Text('Close'),
//               ),
//             ],
//           ),
//         );
//         break;
//     }
//   }
//
//   Widget _buildHeader() {
//     return Container(
//       padding: const EdgeInsets.fromLTRB(20, 40, 20, 20),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         mainAxisAlignment: MainAxisAlignment.end,
//         children: [
//           Row(
//             children: [
//               GestureDetector(
//                 onTap: _toggleDrawer,
//                 child: Container(
//                   padding: const EdgeInsets.all(12),
//                   decoration: BoxDecoration(
//                     gradient: LinearGradient(
//                       colors: [Colors.blue.shade400, Colors.purple.shade400],
//                     ),
//                     borderRadius: BorderRadius.circular(16),
//                     boxShadow: [
//                       BoxShadow(
//                         color: Colors.blue.withOpacity(0.3),
//                         blurRadius: 12,
//                         offset: const Offset(0, 4),
//                       ),
//                     ],
//                   ),
//                   child: const Icon(
//                     Icons.menu_rounded,
//                     color: Colors.white,
//                     size: 30,
//                   ),
//                 ),
//               ),
//               const SizedBox(width: 16),
//               Expanded(
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     ShaderMask(
//                       shaderCallback: (bounds) => LinearGradient(
//                         colors: [Colors.blue.shade600, Colors.purple.shade600],
//                       ).createShader(bounds),
//                       child: const Text(
//                         "MongoVerse",
//                         style: TextStyle(
//                           fontSize: 32,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.white,
//                         ),
//                       ),
//                     ),
//                     Text(
//                       "FROM NO-SQL TO KNOW-IT-ALL",
//                       style: TextStyle(
//                         fontSize: 16,
//                         color: Colors.grey.shade600,
//                         fontWeight: FontWeight.w500,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget _buildStatsCards() {
//     return Row(
//       children: [
//         Expanded(
//           child: _buildStatCard(
//             "Modules",
//             "3",
//             Icons.library_books_outlined,
//             Colors.blue,
//           ),
//         ),
//         const SizedBox(width: 12),
//         Expanded(
//           child: _buildStatCard(
//             "Lessons",
//             "30",
//             Icons.play_lesson_outlined,
//             Colors.green,
//           ),
//         ),
//         const SizedBox(width: 12),
//         Expanded(
//           child: _buildStatCard(
//             "Est. Time",
//             "20h",
//             Icons.access_time_outlined,
//             Colors.orange,
//           ),
//         ),
//       ],
//     );
//   }
//
//   Widget _buildStatCard(String title, String value, IconData icon, Color color) {
//     return Container(
//       padding: const EdgeInsets.all(16),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(16),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black.withOpacity(0.05),
//             blurRadius: 10,
//             offset: const Offset(0, 2),
//           ),
//         ],
//       ),
//       child: Column(
//         children: [
//           Container(
//             padding: const EdgeInsets.all(8),
//             decoration: BoxDecoration(
//               color: color.withOpacity(0.1),
//               borderRadius: BorderRadius.circular(12),
//             ),
//             child: Icon(icon, color: color, size: 20),
//           ),
//           const SizedBox(height: 8),
//           Text(
//             value,
//             style: TextStyle(
//               fontSize: 20,
//               fontWeight: FontWeight.bold,
//               color: Colors.grey.shade800,
//             ),
//           ),
//           Text(
//             title,
//             style: TextStyle(
//               fontSize: 12,
//               color: Colors.grey.shade600,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget _buildSectionHeader() {
//     return Row(
//       children: [
//         Container(
//           width: 4,
//           height: 24,
//           decoration: BoxDecoration(
//             gradient: LinearGradient(
//               colors: [Colors.blue.shade400, Colors.purple.shade400],
//             ),
//             borderRadius: BorderRadius.circular(2),
//           ),
//         ),
//         const SizedBox(width: 12),
//         Text(
//           "Choose Your Path",
//           style: TextStyle(
//             fontSize: 24,
//             fontWeight: FontWeight.bold,
//             color: Colors.grey.shade800,
//           ),
//         ),
//       ],
//     );
//   }
//
//   Widget _buildModulesList() {
//     return AnimatedBuilder(
//       animation: _staggerController,
//       builder: (context, child) {
//         return Column(
//           children: modules.asMap().entries.map((entry) {
//             final index = entry.key;
//             final module = entry.value;
//
//             return Transform.translate(
//               offset: Offset(0, _slideAnimations[index].value),
//               child: Opacity(
//                 opacity: _fadeAnimations[index].value,
//                 child: _buildModuleCard(module, index),
//               ),
//             );
//           }).toList(),
//         );
//       },
//     );
//   }
//
//   Widget _buildModuleCard(Map<String, dynamic> module, int index) {
//     return Container(
//       margin: const EdgeInsets.only(bottom: 20),
//       child: Material(
//         color: Colors.transparent,
//         child: InkWell(
//           onTap: () => navigateToModule(index),
//           borderRadius: BorderRadius.circular(24),
//           child: Container(
//             padding: const EdgeInsets.all(24),
//             decoration: BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.circular(24),
//               border: Border.all(
//                 color: module['backgroundColor'],
//                 width: 2,
//               ),
//               boxShadow: [
//                 BoxShadow(
//                   color: module['primaryColor'].withOpacity(0.1),
//                   blurRadius: 20,
//                   offset: const Offset(0, 8),
//                 ),
//               ],
//             ),
//             child: Column(
//               children: [
//                 Row(
//                   children: [
//                     AnimatedBuilder(
//                       animation: _floatingController,
//                       builder: (context, child) {
//                         return Transform.translate(
//                           offset: Offset(
//                             0,
//                             math.sin(_floatingController.value * 2 * math.pi) * 2,
//                           ),
//                           child: Container(
//                             padding: const EdgeInsets.all(16),
//                             decoration: BoxDecoration(
//                               gradient: LinearGradient(
//                                 colors: [
//                                   module['primaryColor'],
//                                   module['secondaryColor'],
//                                 ],
//                               ),
//                               borderRadius: BorderRadius.circular(20),
//                               boxShadow: [
//                                 BoxShadow(
//                                   color: module['primaryColor'].withOpacity(0.3),
//                                   blurRadius: 12,
//                                   offset: const Offset(0, 4),
//                                 ),
//                               ],
//                             ),
//                             child: Icon(
//                               module['icon'],
//                               color: Colors.white,
//                               size: 28,
//                             ),
//                           ),
//                         );
//                       },
//                     ),
//                     const SizedBox(width: 20),
//                     Expanded(
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Row(
//                             children: [
//                               Text(
//                                 module['name'],
//                                 style: const TextStyle(
//                                   fontSize: 22,
//                                   fontWeight: FontWeight.bold,
//                                   color: Colors.black87,
//                                 ),
//                               ),
//                               const SizedBox(width: 8),
//                               Container(
//                                 padding: const EdgeInsets.symmetric(
//                                   horizontal: 8,
//                                   vertical: 4,
//                                 ),
//                                 decoration: BoxDecoration(
//                                   color: module['backgroundColor'],
//                                   borderRadius: BorderRadius.circular(12),
//                                 ),
//                                 child: Text(
//                                   module['difficulty'],
//                                   style: TextStyle(
//                                     fontSize: 9,
//                                     fontWeight: FontWeight.w600,
//                                     color: module['primaryColor'],
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                           const SizedBox(height: 6),
//                           Text(
//                             module['description'],
//                             style: TextStyle(
//                               fontSize: 14,
//                               color: Colors.grey.shade600,
//                               height: 1.4,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     Icon(
//                       Icons.arrow_forward_ios_rounded,
//                       color: module['primaryColor'],
//                       size: 18,
//                     ),
//                   ],
//                 ),
//                 const SizedBox(height: 20),
//                 Row(
//                   children: [
//                     _buildInfoChip(
//                       Icons.playlist_play_outlined,
//                       "${module['lessons']} lessons",
//                       module['primaryColor'],
//                     ),
//                     const SizedBox(width: 12),
//                     _buildInfoChip(
//                       Icons.access_time_outlined,
//                       module['duration'],
//                       module['primaryColor'],
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//   Widget _buildInfoChip(IconData icon, String text, Color color) {
//     return Container(
//       padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
//       decoration: BoxDecoration(
//         color: color.withOpacity(0.1),
//         borderRadius: BorderRadius.circular(20),
//       ),
//       child: Row(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           Icon(icon, size: 14, color: color),
//           const SizedBox(width: 6),
//           Text(
//             text,
//             style: TextStyle(
//               fontSize: 12,
//               fontWeight: FontWeight.w500,
//               color: color,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget _buildQuickActions() {
//     return Container(
//       padding: const EdgeInsets.all(20),
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           colors: [Colors.blue.shade50, Colors.purple.shade50],
//         ),
//         borderRadius: BorderRadius.circular(20),
//         border: Border.all(color: Colors.blue.shade100),
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Row(
//             children: [
//               Icon(Icons.tips_and_updates_outlined,
//                   color: Colors.blue.shade600, size: 24),
//               const SizedBox(width: 12),
//               Text(
//                 "Pro Tips",
//                 style: TextStyle(
//                   fontSize: 18,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.blue.shade800,
//                 ),
//               ),
//             ],
//           ),
//           const SizedBox(height: 12),
//           Text(
//             "• Start with Basic module for solid foundation\n• Practice each concept before moving forward\n• Use the built-in MongoDB shell for hands-on experience",
//             style: TextStyle(
//               fontSize: 14,
//               color: Colors.blue.shade700,
//               height: 1.6,
//             ),
//           ),
//           const SizedBox(height: 16),
//           Row(
//             children: [
//               Expanded(
//                 child: ElevatedButton.icon(
//                   onPressed: () {
//                     launchExternalUrl('https://www.mongodb.com/docs/');
//                   },
//                   icon: const Icon(Icons.book_outlined, size: 18),
//                   label: const Text("Documentation"),
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.white,
//                     foregroundColor: Colors.blue.shade600,
//                     elevation: 0,
//                     padding: const EdgeInsets.symmetric(vertical: 12),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(12),
//                       side: BorderSide(color: Colors.blue.shade200),
//                     ),
//                   ),
//                 ),
//               ),
//               const SizedBox(width: 12),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }

// WITHOUT DRAWER API
// import 'dart:math' as math;
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:get/get.dart';
// import 'package:mongoverse/utils/import_export.dart';
// import 'package:mongoverse/view/modules/intermediate_module_screens/intermediate_module_view.dart';
// import 'package:url_launcher/url_launcher.dart';
// import 'modules/advanced_module_screens/advanced_module_view.dart';
// import 'modules/basic_module_screens/basic_module_view.dart';
// import '../services/api_services.dart';
//
// class DashboardScreen extends StatefulWidget {
//   DashboardScreen({super.key});
//
//   @override
//   State<DashboardScreen> createState() => _DashboardScreenState();
// }
//
// class _DashboardScreenState extends State<DashboardScreen>
//     with TickerProviderStateMixin {
//   late AnimationController _floatingController;
//   late AnimationController _staggerController;
//   late List<Animation<double>> _slideAnimations;
//   late List<Animation<double>> _fadeAnimations;
//   final ApiService _apiService = ApiService();
//   List<Map<String, dynamic>> modules = [];
//   bool isLoading = true;
//   String? errorMessage;
//
//   @override
//   void initState() {
//     super.initState();
//     _floatingController = AnimationController(
//       duration: const Duration(seconds: 3),
//       vsync: this,
//     )..repeat(reverse: true);
//
//     _staggerController = AnimationController(
//       duration: const Duration(milliseconds: 1200),
//       vsync: this,
//     );
//
//     _fetchModules();
//   }
//
//   Future<void> _fetchModules() async {
//     try {
//       final apiModules = await _apiService.getModules();
//       setState(() {
//         modules = apiModules.map((module) => ({
//           "id": module['module_Id'],
//           "name": module['module_Name'],
//           "description": module['module_Description'],
//           "icon": _getIconForModule(module['module_Name']),
//           "progress": 0.0,
//           "lessons": 12,
//           "duration": _getDurationForModule(module['module_Name']),
//           "difficulty": _getDifficultyForModule(module['module_Name']),
//           "primaryColor": _getPrimaryColor(module['module_Name']),
//           "secondaryColor": _getSecondaryColor(module['module_Name']),
//           "backgroundColor": _getBackgroundColor(module['module_Name']),
//         })).toList();
//
//         if (modules.isEmpty) {
//           errorMessage = "No modules available";
//         } else {
//           _updateAnimations();
//           _staggerController.forward();
//         }
//         isLoading = false;
//       });
//     } catch (e) {
//       setState(() {
//         isLoading = false;
//         errorMessage = e.toString();
//       });
//       Get.snackbar(
//         "Error",
//         "Failed to load modules: $e",
//         snackPosition: SnackPosition.TOP,
//         backgroundColor: Colors.red.shade100,
//         colorText: Colors.red.shade800,
//         borderRadius: 12,
//         margin: const EdgeInsets.all(16),
//         icon: Icon(Icons.error_outline, color: Colors.red.shade800),
//       );
//     }
//   }
//
//   void _updateAnimations() {
//     _slideAnimations = List.generate(
//       modules.length,
//           (index) => Tween<double>(
//         begin: 50.0,
//         end: 0.0,
//       ).animate(
//         CurvedAnimation(
//           parent: _staggerController,
//           curve: Interval(
//             index * 0.2,
//             0.6 + (index * 0.2),
//             curve: Curves.easeOutCubic,
//           ),
//         ),
//       ),
//     );
//
//     _fadeAnimations = List.generate(
//       modules.length,
//           (index) => Tween<double>(
//         begin: 0.0,
//         end: 1.0,
//       ).animate(
//         CurvedAnimation(
//           parent: _staggerController,
//           curve: Interval(
//             index * 0.2,
//             0.6 + (index * 0.2),
//             curve: Curves.easeOut,
//           ),
//         ),
//       ),
//     );
//   }
//
//   IconData _getIconForModule(String? name) {
//     switch (name?.toLowerCase()) {
//       case 'basic':
//         return Icons.school_outlined;
//       case 'intermediate':
//         return Icons.trending_up_outlined;
//       case 'advanced':
//         return Icons.rocket_launch_outlined;
//       default:
//         return Icons.help_outline;
//     }
//   }
//
//   Color _getPrimaryColor(String? name) {
//     switch (name?.toLowerCase()) {
//       case 'basic':
//         return const Color(0xFF4CAF50);
//       case 'intermediate':
//         return const Color(0xFFFF9800);
//       case 'advanced':
//         return const Color(0xFFE91E63);
//       default:
//         return Colors.grey;
//     }
//   }
//
//   Color _getSecondaryColor(String? name) {
//     switch (name?.toLowerCase()) {
//       case 'basic':
//         return const Color(0xFF81C784);
//       case 'intermediate':
//         return const Color(0xFFFFB74D);
//       case 'advanced':
//         return const Color(0xFFF06292);
//       default:
//         return Colors.grey.shade300;
//     }
//   }
//
//   Color _getBackgroundColor(String? name) {
//     switch (name?.toLowerCase()) {
//       case 'basic':
//         return const Color(0xFFE8F5E8);
//       case 'intermediate':
//         return const Color(0xFFFFF3E0);
//       case 'advanced':
//         return const Color(0xFFFCE4EC);
//       default:
//         return Colors.grey.shade100;
//     }
//   }
//
//   String _getDurationForModule(String? name) {
//     switch (name?.toLowerCase()) {
//       case 'basic':
//         return "2-3 hours";
//       case 'intermediate':
//         return "4-5 hours";
//       case 'advanced':
//         return "6-8 hours";
//       default:
//         return "Unknown";
//     }
//   }
//
//   String _getDifficultyForModule(String? name) {
//     switch (name?.toLowerCase()) {
//       case 'basic':
//         return "Easy";
//       case 'intermediate':
//         return "Medium";
//       case 'advanced':
//         return "Hard";
//       default:
//         return "Unknown";
//     }
//   }
//
//   @override
//   void dispose() {
//     _floatingController.dispose();
//     _staggerController.dispose();
//     super.dispose();
//   }
//
//   void navigateToModule(int index) {
//     HapticFeedback.lightImpact();
//
//     switch (modules[index]['name'].toLowerCase()) {
//       case 'basic':
//         Get.to(() => BasicModuleView(),
//             transition: Transition.fadeIn,
//             duration: const Duration(milliseconds: 400));
//         break;
//       case 'intermediate':
//         Get.to(() => IntermediateModuleView(),
//             transition: Transition.fadeIn,
//             duration: const Duration(milliseconds: 400));
//         break;
//       case 'advanced':
//         Get.to(() => AdvancedModuleView(),
//             transition: Transition.fadeIn,
//             duration: const Duration(milliseconds: 400));
//         break;
//       default:
//         Get.snackbar(
//           "🚫 Error",
//           "Unknown module selected",
//           snackPosition: SnackPosition.TOP,
//           backgroundColor: Colors.red.shade100,
//           colorText: Colors.red.shade800,
//           borderRadius: 12,
//           margin: const EdgeInsets.all(16),
//           icon: Icon(Icons.error_outline, color: Colors.red.shade800),
//         );
//     }
//   }
//
//   String getModuleDescription(String? name) {
//     if (name == 'Basic') {
//       return "Master MongoDB fundamentals, CRUD operations, and basic queries";
//     } else if (name == 'Intermediate') {
//       return "Advanced queries, aggregation pipelines, and indexing strategies";
//     } else if (name == 'Advanced') {
//       return "Performance optimization, sharding, replication, and scaling";
//     } else {
//       return "No description available";
//     }
//   }
//
//   Future<void> launchExternalUrl(String url) async {
//     final Uri uri = Uri.parse(url);
//     if (await canLaunchUrl(uri)) {
//       await launchUrl(uri);
//     } else {
//       print('Could not launch $url');
//     }
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
//         child: SafeArea(
//           child: isLoading
//               ? const Center(child: CircularProgressIndicator())
//               : errorMessage != null
//               ? Center(child: Text(errorMessage!))
//               : CustomScrollView(
//             physics: const BouncingScrollPhysics(),
//             slivers: [
//               SliverAppBar(
//                 expandedHeight: 180,
//                 floating: false,
//                 pinned: true,
//                 elevation: 0,
//                 backgroundColor: Colors.transparent,
//                 flexibleSpace: FlexibleSpaceBar(
//                   background: _buildHeader(),
//                 ),
//               ),
//               SliverToBoxAdapter(
//                 child: Padding(
//                   padding: const EdgeInsets.all(20),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       _buildStatsCards(),
//                       const SizedBox(height: 30),
//                       _buildSectionHeader(),
//                       const SizedBox(height: 20),
//                       _buildModulesList(),
//                       const SizedBox(height: 30),
//                       _buildQuickActions(),
//                       const SizedBox(height: 20),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   Widget _buildHeader() {
//     return Container(
//       padding: const EdgeInsets.fromLTRB(20, 40, 20, 20),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         mainAxisAlignment: MainAxisAlignment.end,
//         children: [
//           Row(
//             children: [
//               Container(
//                 padding: const EdgeInsets.all(12),
//                 decoration: BoxDecoration(
//                   gradient: LinearGradient(
//                     colors: [Colors.blue.shade400, Colors.purple.shade400],
//                   ),
//                   borderRadius: BorderRadius.circular(16),
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.blue.withOpacity(0.3),
//                       blurRadius: 12,
//                       offset: const Offset(0, 4),
//                     ),
//                   ],
//                 ),
//                 child: const Icon(
//                   Icons.storage,
//                   color: Colors.white,
//                   size: 24,
//                 ),
//               ),
//               const SizedBox(width: 16),
//               Expanded(
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     ShaderMask(
//                       shaderCallback: (bounds) => LinearGradient(
//                         colors: [Colors.blue.shade600, Colors.purple.shade600],
//                       ).createShader(bounds),
//                       child: const Text(
//                         "MongoVerse",
//                         style: TextStyle(
//                           fontSize: 32,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.white,
//                         ),
//                       ),
//                     ),
//                     Text(
//                       "FROM NO-SQL TO KNOW-IT-ALL",
//                       style: TextStyle(
//                         fontSize: 16,
//                         color: Colors.grey.shade600,
//                         fontWeight: FontWeight.w500,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget _buildStatsCards() {
//     return Row(
//       children: [
//         Expanded(
//           child: _buildStatCard(
//             "Modules",
//             "${modules.length}",
//             Icons.library_books_outlined,
//             Colors.blue,
//           ),
//         ),
//         const SizedBox(width: 12),
//         Expanded(
//           child: _buildStatCard(
//             "Lessons",
//             "${modules.fold(0, (sum, module) => sum + (module['lessons'] as int))}",
//             Icons.play_lesson_outlined,
//             Colors.green,
//           ),
//         ),
//         const SizedBox(width: 12),
//         Expanded(
//           child: _buildStatCard(
//             "Est. Time",
//             "15h",
//             Icons.access_time_outlined,
//             Colors.orange,
//           ),
//         ),
//       ],
//     );
//   }
//
//   Widget _buildStatCard(String title, String value, IconData icon, Color color) {
//     return Container(
//       padding: const EdgeInsets.all(16),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(16),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black.withOpacity(0.05),
//             blurRadius: 10,
//             offset: const Offset(0, 2),
//           ),
//         ],
//       ),
//       child: Column(
//         children: [
//           Container(
//             padding: const EdgeInsets.all(8),
//             decoration: BoxDecoration(
//               color: color.withOpacity(0.1),
//               borderRadius: BorderRadius.circular(12),
//             ),
//             child: Icon(icon, color: color, size: 20),
//           ),
//           const SizedBox(height: 8),
//           Text(
//             value,
//             style: TextStyle(
//               fontSize: 20,
//               fontWeight: FontWeight.bold,
//               color: Colors.grey.shade800,
//             ),
//           ),
//           Text(
//             title,
//             style: TextStyle(
//               fontSize: 12,
//               color: Colors.grey.shade600,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget _buildSectionHeader() {
//     return Row(
//       children: [
//         Container(
//           width: 4,
//           height: 24,
//           decoration: BoxDecoration(
//             gradient: LinearGradient(
//               colors: [Colors.blue.shade400, Colors.purple.shade400],
//             ),
//             borderRadius: BorderRadius.circular(2),
//           ),
//         ),
//         const SizedBox(width: 12),
//         Text(
//           "Choose Your Path",
//           style: TextStyle(
//             fontSize: 24,
//             fontWeight: FontWeight.bold,
//             color: Colors.grey.shade800,
//           ),
//         ),
//       ],
//     );
//   }
//
//   Widget _buildModulesList() {
//     return AnimatedBuilder(
//       animation: _staggerController,
//       builder: (context, child) {
//         return Column(
//           children: modules.asMap().entries.map((entry) {
//             final index = entry.key;
//             final module = entry.value;
//
//             return Transform.translate(
//               offset: Offset(0, _slideAnimations[index].value),
//               child: Opacity(
//                 opacity: _fadeAnimations[index].value,
//                 child: _buildModuleCard(module, index),
//               ),
//             );
//           }).toList(),
//         );
//       },
//     );
//   }
//
//   Widget _buildModuleCard(Map<String, dynamic> module, int index) {
//     return Container(
//       margin: const EdgeInsets.only(bottom: 20),
//       child: Material(
//         color: Colors.transparent,
//         child: InkWell(
//           onTap: () => navigateToModule(index),
//           borderRadius: BorderRadius.circular(24),
//           child: Container(
//             padding: const EdgeInsets.all(24),
//             decoration: BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.circular(24),
//               border: Border.all(
//                 color: module['backgroundColor'],
//                 width: 2,
//               ),
//               boxShadow: [
//                 BoxShadow(
//                   color: module['primaryColor'].withOpacity(0.1),
//                   blurRadius: 20,
//                   offset: const Offset(0, 8),
//                 ),
//               ],
//             ),
//             child: Column(
//               children: [
//                 Row(
//                   children: [
//                     AnimatedBuilder(
//                       animation: _floatingController,
//                       builder: (context, child) {
//                         return Transform.translate(
//                           offset: Offset(
//                             0,
//                             math.sin(_floatingController.value * 2 * math.pi) * 2,
//                           ),
//                           child: Container(
//                             padding: const EdgeInsets.all(16),
//                             decoration: BoxDecoration(
//                               gradient: LinearGradient(
//                                 colors: [
//                                   module['primaryColor'],
//                                   module['secondaryColor'],
//                                 ],
//                               ),
//                               borderRadius: BorderRadius.circular(20),
//                               boxShadow: [
//                                 BoxShadow(
//                                   color: module['primaryColor'].withOpacity(0.3),
//                                   blurRadius: 12,
//                                   offset: const Offset(0, 4),
//                                 ),
//                               ],
//                             ),
//                             child: Icon(
//                               module['icon'],
//                               color: Colors.white,
//                               size: 28,
//                             ),
//                           ),
//                         );
//                       },
//                     ),
//                     const SizedBox(width: 20),
//                     Expanded(
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Row(
//                             children: [
//                               Text(
//                                 module['name'],
//                                 style: const TextStyle(
//                                   fontSize: 22,
//                                   fontWeight: FontWeight.bold,
//                                   color: Colors.black87,
//                                 ),
//                               ),
//                               const SizedBox(width: 8),
//                               Container(
//                                 padding: const EdgeInsets.symmetric(
//                                   horizontal: 8,
//                                   vertical: 4,
//                                 ),
//                                 decoration: BoxDecoration(
//                                   color: module['backgroundColor'],
//                                   borderRadius: BorderRadius.circular(12),
//                                 ),
//                                 child: Text(
//                                   module['difficulty'],
//                                   style: TextStyle(
//                                     fontSize: 9,
//                                     fontWeight: FontWeight.w600,
//                                     color: module['primaryColor'],
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                           const SizedBox(height: 6),
//                           Text(
//                            getModuleDescription(module['name'] ?? 'unknown'),
//                             style: TextStyle(
//                               fontSize: 14,
//                               color: Colors.grey.shade600,
//                               height: 1.4,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     Icon(
//                       Icons.arrow_forward_ios_rounded,
//                       color: module['primaryColor'],
//                       size: 18,
//                     ),
//                   ],
//                 ),
//                 const SizedBox(height: 20),
//                 Row(
//                   children: [
//                     _buildInfoChip(
//                       Icons.playlist_play_outlined,
//                       "${module['lessons']} lessons",
//                       module['primaryColor'],
//                     ),
//                     const SizedBox(width: 12),
//                     _buildInfoChip(
//                       Icons.access_time_outlined,
//                       module['duration'],
//                       module['primaryColor'],
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//   Widget _buildInfoChip(IconData icon, String text, Color color) {
//     return Container(
//       padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
//       decoration: BoxDecoration(
//         color: color.withOpacity(0.1),
//         borderRadius: BorderRadius.circular(20),
//       ),
//       child: Row(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           Icon(icon, size: 14, color: color),
//           const SizedBox(width: 6),
//           Text(
//             text,
//             style: TextStyle(
//               fontSize: 12,
//               fontWeight: FontWeight.w500,
//               color: color,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget _buildQuickActions() {
//     return Container(
//       padding: const EdgeInsets.all(20),
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           colors: [Colors.blue.shade50, Colors.purple.shade50],
//         ),
//         borderRadius: BorderRadius.circular(20),
//         border: Border.all(color: Colors.blue.shade100),
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Row(
//             children: [
//               Icon(Icons.tips_and_updates_outlined,
//                   color: Colors.blue.shade600, size: 24),
//               const SizedBox(width: 12),
//               Text(
//                 "Pro Tips",
//                 style: TextStyle(
//                   fontSize: 18,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.blue.shade800,
//                 ),
//               ),
//             ],
//           ),
//           const SizedBox(height: 12),
//           Text(
//             "• Start with Basic module for solid foundation\n• Practice each concept before moving forward\n• Use the built-in MongoDB shell for hands-on experience",
//             style: TextStyle(
//               fontSize: 14,
//               color: Colors.blue.shade700,
//               height: 1.6,
//             ),
//           ),
//           const SizedBox(height: 16),
//           Row(
//             children: [
//               Expanded(
//                 child: ElevatedButton.icon(
//                   onPressed: () {
//                     launchExternalUrl('https://www.mongodb.com/docs/');
//                   },
//                   icon: const Icon(Icons.book_outlined, size: 18),
//                   label: const Text("Documentation"),
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.white,
//                     foregroundColor: Colors.blue.shade600,
//                     elevation: 0,
//                     padding: const EdgeInsets.symmetric(vertical: 12),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(12),
//                       side: BorderSide(color: Colors.blue.shade200),
//                     ),
//                   ),
//                 ),
//               ),
//               const SizedBox(width: 12),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }


import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:mongoverse/utils/import_export.dart';
import 'package:mongoverse/view/about_us_page.dart';
import 'package:mongoverse/view/feedback_screen.dart';
import 'package:mongoverse/view/modules/intermediate_module_screens/intermediate_module_view.dart';
import 'package:url_launcher/url_launcher.dart';
import 'modules/advanced_module_screens/advanced_module_view.dart';
import 'modules/basic_module_screens/basic_module_view.dart';
import '../services/api_services.dart';

class DashboardScreen extends StatefulWidget {
  DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen>
    with TickerProviderStateMixin {
  late AnimationController _floatingController;
  late AnimationController _staggerController;
  late AnimationController _drawerAnimationController;
  late Animation<double> _scaleAnimation;
  late Animation<Offset> _slideAnimation;
  late Animation<double> _fadeAnimation;
  late List<Animation<double>> _slideAnimations;
  late List<Animation<double>> _fadeAnimations;
  late List<Animation<double>> _drawerItemAnimations;
  final ApiService _apiService = ApiService();
  List<Map<String, dynamic>> modules = [];
  bool isLoading = true;
  String? errorMessage;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  final List<Map<String, dynamic>> drawerItems = [
    {
      "title": "Dashboard",
      "icon": Icons.dashboard_rounded,
      "color": Colors.blue,
    },
    {
      "title": "About Us",
      "icon": Icons.info_rounded,
      "color": Colors.purple,
    },
    {
      "title": "Feedback",
      "icon": Icons.feedback_rounded,
      "color": Colors.orange,
    },
  ];

  @override
  void initState() {
    super.initState();
    _floatingController = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    )..repeat(reverse: true);

    _staggerController = AnimationController(
      duration: const Duration(milliseconds: 1200),
      vsync: this,
    );

    _drawerAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );

    _scaleAnimation = Tween<double>(begin: 0.8, end: 1.0).animate(
      CurvedAnimation(
        parent: _drawerAnimationController,
        curve: Curves.bounceOut,
      ),
    );

    _slideAnimation = Tween<Offset>(
      begin: const Offset(-1.0, 0.0),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(
        parent: _drawerAnimationController,
        curve: Curves.easeOutBack,
      ),
    );

    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _drawerAnimationController,
        curve: const Interval(0.3, 1.0, curve: Curves.easeInOut),
      ),
    );

    _drawerItemAnimations = List.generate(
      drawerItems.length,
          (index) => Tween<double>(begin: 0.0, end: 1.0).animate(
        CurvedAnimation(
          parent: _drawerAnimationController,
          curve: Interval(
            0.1 + (index * 0.15),
            0.6 + (index * 0.15),
            curve: Curves.bounceOut,
          ),
        ),
      ),
    );

    _fetchModules();
  }

  Future<void> _fetchModules() async {
    try {
      final apiModules = await _apiService.getModules();
      setState(() {
        modules = apiModules.map((module) => ({
          "id": module['module_Id'],
          "name": module['module_Name'],
          "description": module['module_Description'],
          "icon": _getIconForModule(module['module_Name']),
          "progress": 0.0,
          "lessons": 12,
          "duration": _getDurationForModule(module['module_Name']),
          "difficulty": _getDifficultyForModule(module['module_Name']),
          "primaryColor": _getPrimaryColor(module['module_Name']),
          "secondaryColor": _getSecondaryColor(module['module_Name']),
          "backgroundColor": _getBackgroundColor(module['module_Name']),
        })).toList();

        if (modules.isEmpty) {
          errorMessage = "No modules available";
        } else {
          _updateAnimations();
          _staggerController.forward();
        }
        isLoading = false;
      });
    } catch (e) {
      setState(() {
        isLoading = false;
        errorMessage = e.toString();
      });
      Get.snackbar(
        "Error",
        "Failed to load modules: $e",
        snackPosition: SnackPosition.TOP,
        backgroundColor: Colors.red.shade100,
        colorText: Colors.red.shade800,
        borderRadius: 12,
        margin: const EdgeInsets.all(16),
        icon: Icon(Icons.error_outline, color: Colors.red.shade800),
      );
    }
  }

  void _updateAnimations() {
    _slideAnimations = List.generate(
      modules.length,
          (index) => Tween<double>(
        begin: 50.0,
        end: 0.0,
      ).animate(
        CurvedAnimation(
          parent: _staggerController,
          curve: Interval(
            index * 0.2,
            0.6 + (index * 0.2),
            curve: Curves.easeOutCubic,
          ),
        ),
      ),
    );

    _fadeAnimations = List.generate(
      modules.length,
          (index) => Tween<double>(
        begin: 0.0,
        end: 1.0,
      ).animate(
        CurvedAnimation(
          parent: _staggerController,
          curve: Interval(
            index * 0.2,
            0.6 + (index * 0.2),
            curve: Curves.easeOut,
          ),
        ),
      ),
    );
  }

  IconData _getIconForModule(String? name) {
    switch (name?.toLowerCase()) {
      case 'basic':
        return Icons.school_outlined;
      case 'intermediate':
        return Icons.trending_up_outlined;
      case 'advanced':
        return Icons.rocket_launch_outlined;
      default:
        return Icons.help_outline;
    }
  }

  Color _getPrimaryColor(String? name) {
    switch (name?.toLowerCase()) {
      case 'basic':
        return const Color(0xFF4CAF50);
      case 'intermediate':
        return const Color(0xFFFF9800);
      case 'advanced':
        return const Color(0xFFE91E63);
      default:
        return Colors.grey;
    }
  }

  Color _getSecondaryColor(String? name) {
    switch (name?.toLowerCase()) {
      case 'basic':
        return const Color(0xFF81C784);
      case 'intermediate':
        return const Color(0xFFFFB74D);
      case 'advanced':
        return const Color(0xFFF06292);
      default:
        return Colors.grey.shade300;
    }
  }

  Color _getBackgroundColor(String? name) {
    switch (name?.toLowerCase()) {
      case 'basic':
        return const Color(0xFFE8F5E8);
      case 'intermediate':
        return const Color(0xFFFFF3E0);
      case 'advanced':
        return const Color(0xFFFCE4EC);
      default:
        return Colors.grey.shade100;
    }
  }

  String _getDurationForModule(String? name) {
    switch (name?.toLowerCase()) {
      case 'basic':
        return "2-3 hours";
      case 'intermediate':
        return "4-5 hours";
      case 'advanced':
        return "6-8 hours";
      default:
        return "Unknown";
    }
  }

  String _getDifficultyForModule(String? name) {
    switch (name?.toLowerCase()) {
      case 'basic':
        return "Easy";
      case 'intermediate':
        return "Medium";
      case 'advanced':
        return "Hard";
      default:
        return "Unknown";
    }
  }

  @override
  void dispose() {
    _floatingController.dispose();
    _staggerController.dispose();
    _drawerAnimationController.dispose();
    super.dispose();
  }

  void _toggleDrawer() {
    if (_scaffoldKey.currentState!.isDrawerOpen) {
      _drawerAnimationController.reverse().then((_) {
        _scaffoldKey.currentState!.closeDrawer();
      });
    } else {
      _scaffoldKey.currentState!.openDrawer();
      _drawerAnimationController.forward();
    }
  }

  void navigateToModule(int index) {
    HapticFeedback.lightImpact();

    switch (modules[index]['name'].toLowerCase()) {
      case 'basic':
        Get.to(() => BasicModuleView(),
            transition: Transition.fadeIn,
            duration: const Duration(milliseconds: 400));
        break;
      case 'intermediate':
        Get.to(() => IntermediateModuleView(),
            transition: Transition.fadeIn,
            duration: const Duration(milliseconds: 400));
        break;
      case 'advanced':
        Get.to(() => AdvancedModuleView(),
            transition: Transition.fadeIn,
            duration: const Duration(milliseconds: 400));
        break;
      default:
        Get.snackbar(
          "🚫 Error",
          "Unknown module selected",
          snackPosition: SnackPosition.TOP,
          backgroundColor: Colors.red.shade100,
          colorText: Colors.red.shade800,
          borderRadius: 12,
          margin: const EdgeInsets.all(16),
          icon: Icon(Icons.error_outline, color: Colors.red.shade800),
        );
    }
  }

  void _handleDrawerItemTap(int index) {
    HapticFeedback.lightImpact();
    _toggleDrawer();

    switch (index) {
      case 0: // Dashboard
      // Already on dashboard
        break;
      case 1: // About Us
        Get.to(AboutUsScreen());
        break;
      case 2: // Feedback
        Get.to(FeedbackScreen());
        break;
    }
  }

  String getModuleDescription(String? name) {
    if (name == 'Basic') {
      return "Master MongoDB fundamentals, CRUD operations, and basic queries";
    } else if (name == 'Intermediate') {
      return "Advanced queries, aggregation pipelines, and indexing strategies";
    } else if (name == 'Advanced') {
      return "Performance optimization, sharding, replication, and scaling";
    } else {
      return "No description available";
    }
  }

  Future<void> launchExternalUrl(String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      print('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
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
        child: SafeArea(
          child: isLoading
              ? const Center(child: CircularProgressIndicator())
              : errorMessage != null
              ? Center(child: Text(errorMessage!))
              : CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
              SliverAppBar(
                expandedHeight: 180,
                floating: false,
                pinned: true,
                elevation: 0,
                backgroundColor: Colors.transparent,
                automaticallyImplyLeading: false,
                flexibleSpace: FlexibleSpaceBar(
                  background: _buildHeader(),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildStatsCards(),
                      const SizedBox(height: 30),
                      _buildSectionHeader(),
                      const SizedBox(height: 20),
                      _buildModulesList(),
                      const SizedBox(height: 30),
                      _buildQuickActions(),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      drawer: _buildAnimatedDrawer(),
    );
  }

  Widget _buildAnimatedDrawer() {
    return SlideTransition(
      position: _slideAnimation,
      child: ScaleTransition(
        scale: _scaleAnimation,
        alignment: Alignment.centerLeft,
        child: Container(
          width: MediaQuery.of(context).size.width * 0.75,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.blue.shade50.withOpacity(0.8),
                Colors.purple.shade50.withOpacity(0.8),
                Colors.blue.shade100.withOpacity(0.8),
              ],
            ),
            border: Border(
              right: BorderSide(
                color: Colors.blue.shade200.withOpacity(0.3),
                width: 1,
              ),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.15),
                blurRadius: 12,
                offset: const Offset(2, 0),
              ),
            ],
          ),
          child: SafeArea(
            child: FadeTransition(
              opacity: _fadeAnimation,
              child: Column(
                children: [
                  _buildDrawerHeader(),
                  Expanded(
                    child: _buildDrawerItems(),
                  ),
                  _buildDrawerFooter(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildDrawerHeader() {
    return Container(
      padding: const EdgeInsets.fromLTRB(24, 40, 24, 24),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Colors.blue.shade500, Colors.purple.shade500],
        ),
        border: Border(
          bottom: BorderSide(
            color: Colors.white.withOpacity(0.2),
            width: 1,
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AnimatedBuilder(
            animation: _floatingController,
            builder: (context, child) {
              return Transform.translate(
                offset: Offset(
                  0,
                  math.sin(_floatingController.value * 2 * math.pi) * 3,
                ),
                child: Container(
                  padding: const EdgeInsets.all(14),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.2),
                    shape: BoxShape.rectangle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        blurRadius: 10,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Image.asset("assets/mongoverse_logo.jpg",
                    width: 50,
                    height: 50,
                    fit: BoxFit.contain,
                  )
                ),
              );
            },
          ),
          const SizedBox(height: 16),
          ShaderMask(
            shaderCallback: (bounds) => LinearGradient(
              colors: [Colors.white, Colors.white.withOpacity(0.7)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ).createShader(bounds),
            child: const Text(
              'MongoVerse',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Learn MongoDB',
            style: TextStyle(
              fontSize: 16,
              color: Colors.white.withOpacity(0.8),
              fontWeight: FontWeight.w400,
              letterSpacing: 0.5,
            ),
          ),
          const SizedBox(height: 16),
          Row(
            // Empty Row as per original code
          ),
        ],
      ),
    );
  }

  Widget _buildDrawerItems() {
    return AnimatedBuilder(
      animation: _drawerAnimationController,
      builder: (context, child) {
        return ListView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          itemCount: drawerItems.length,
          itemBuilder: (context, index) {
            return Transform.translate(
              offset: Offset(0, _drawerItemAnimations[index].value * 30),
              child: Opacity(
                opacity: _drawerItemAnimations[index].value,
                child: MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () => _handleDrawerItemTap(index),
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 200),
                      margin: const EdgeInsets.symmetric(vertical: 8),
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.white.withOpacity(0.9),
                            Colors.white.withOpacity(0.8),
                          ],
                        ),
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(
                          color: LinearGradient(
                            colors: [
                              drawerItems[index]['color'].withOpacity(0.5),
                              drawerItems[index]['color'].withOpacity(0.3),
                            ],
                          ).colors[0],
                          width: 1.5,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: drawerItems[index]['color'].withOpacity(0.1),
                            blurRadius: 8,
                            offset: const Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          AnimatedBuilder(
                            animation: _floatingController,
                            builder: (context, child) {
                              return Transform.scale(
                                scale: 1.0 + (_floatingController.value * 0.05),
                                child: Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [
                                        drawerItems[index]['color'].withOpacity(0.3),
                                        drawerItems[index]['color'].withOpacity(0.5),
                                      ],
                                    ),
                                    shape: BoxShape.circle,
                                  ),
                                  child: Icon(
                                    drawerItems[index]['icon'],
                                    color: drawerItems[index]['color'],
                                    size: 26,
                                  ),
                                ),
                              );
                            },
                          ),
                          const SizedBox(width: 16),
                          Expanded(
                            child: Text(
                              drawerItems[index]['title'],
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.grey.shade900,
                                letterSpacing: 0.5,
                              ),
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: drawerItems[index]['color'].withOpacity(0.7),
                            size: 16,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }

  Widget _buildDrawerFooter() {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: Colors.blue.shade100.withOpacity(0.3),
            width: 1,
          ),
        ),
      ),
      child: Column(
        children: [
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: () {
                launchExternalUrl('https://www.mongodb.com/docs/');
              },
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.blue.shade400,
                      Colors.purple.shade400,
                    ],
                  ),
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.blue.shade300.withOpacity(0.3),
                      blurRadius: 10,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.book_outlined,
                      color: Colors.white,
                      size: 20,
                    ),
                    const SizedBox(width: 10),
                    Text(
                      'MongoDB Docs',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () => launchExternalUrl('https://twitter.com/mongodb'),
                icon: const FaIcon(
                  FontAwesomeIcons.xTwitter,
                  color: Colors.blue,
                  size: 20,
                ),
                tooltip: 'Twitter',
              ),
              IconButton(
                onPressed: () => launchExternalUrl('https://github.com/mongodb'),
                icon:const FaIcon(
                  FontAwesomeIcons.github,
                  color: Colors.blue,
                  size: 20,
                ),
                tooltip: 'GitHub',
              ),
              IconButton(
                onPressed: () => launchExternalUrl('https://linkedin.com/company/mongodbinc'),
                icon: FaIcon(
                  FontAwesomeIcons.linkedin,
                  color: Colors.blue.shade600,
                  size: 20,
                ),
                tooltip: 'LinkedIn',
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            'Version 1.0.0',
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey.shade600,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 40, 20, 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            children: [
              GestureDetector(
                onTap: _toggleDrawer,
                child: Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.blue.shade400, Colors.purple.shade400],
                    ),
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.blue.withOpacity(0.3),
                        blurRadius: 12,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: const Icon(
                    Icons.menu_rounded,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ShaderMask(
                      shaderCallback: (bounds) => LinearGradient(
                        colors: [Colors.blue.shade600, Colors.purple.shade600],
                      ).createShader(bounds),
                      child: const Text(
                        "MongoVerse",
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Text(
                      "FROM NO-SQL TO KNOW-IT-ALL",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey.shade600,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildStatsCards() {
    return Row(
      children: [
        Expanded(
          child: _buildStatCard(
            "Modules",
            "${modules.length}",
            Icons.library_books_outlined,
            Colors.blue,
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: _buildStatCard(
            "Lessons",
            "30",
            Icons.play_lesson_outlined,
            Colors.green,
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: _buildStatCard(
            "Est. Time",
            "15h",
            Icons.access_time_outlined,
            Colors.orange,
          ),
        ),
      ],
    );
  }

  Widget _buildStatCard(String title, String value, IconData icon, Color color) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: color.withOpacity(0.1),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(icon, color: color, size: 20),
          ),
          const SizedBox(height: 8),
          Text(
            value,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.grey.shade800,
            ),
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey.shade600,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSectionHeader() {
    return Row(
      children: [
        Container(
          width: 4,
          height: 24,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blue.shade400, Colors.purple.shade400],
            ),
            borderRadius: BorderRadius.circular(2),
          ),
        ),
        const SizedBox(width: 12),
        Text(
          "Choose Your Path",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.grey.shade800,
          ),
        ),
      ],
    );
  }

  Widget _buildModulesList() {
    return AnimatedBuilder(
      animation: _staggerController,
      builder: (context, child) {
        return Column(
          children: modules.asMap().entries.map((entry) {
            final index = entry.key;
            final module = entry.value;

            return Transform.translate(
              offset: Offset(0, _slideAnimations[index].value),
              child: Opacity(
                opacity: _fadeAnimations[index].value,
                child: _buildModuleCard(module, index),
              ),
            );
          }).toList(),
        );
      },
    );
  }

  Widget _buildModuleCard(Map<String, dynamic> module, int index) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () => navigateToModule(index),
          borderRadius: BorderRadius.circular(24),
          child: Container(
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(24),
              border: Border.all(
                color: module['backgroundColor'],
                width: 2,
              ),
              boxShadow: [
                BoxShadow(
                  color: module['primaryColor'].withOpacity(0.1),
                  blurRadius: 20,
                  offset: const Offset(0, 8),
                ),
              ],
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    AnimatedBuilder(
                      animation: _floatingController,
                      builder: (context, child) {
                        return Transform.translate(
                          offset: Offset(
                            0,
                            math.sin(_floatingController.value * 2 * math.pi) * 2,
                          ),
                          child: Container(
                            padding: const EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  module['primaryColor'],
                                  module['secondaryColor'],
                                ],
                              ),
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: module['primaryColor'].withOpacity(0.3),
                                  blurRadius: 12,
                                  offset: const Offset(0, 4),
                                ),
                              ],
                            ),
                            child: Icon(
                              module['icon'],
                              color: Colors.white,
                              size: 28,
                            ),
                          ),
                        );
                      },
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                module['name'],
                                style: const TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black87,
                                ),
                              ),
                              const SizedBox(width: 8),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 8,
                                  vertical: 4,
                                ),
                                decoration: BoxDecoration(
                                  color: module['backgroundColor'],
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Text(
                                  module['difficulty'],
                                  style: TextStyle(
                                    fontSize: 9,
                                    fontWeight: FontWeight.w600,
                                    color: module['primaryColor'],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 6),
                          Text(
                            getModuleDescription(module['name'] ?? 'unknown'),
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey.shade600,
                              height: 1.4,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: module['primaryColor'],
                      size: 18,
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    _buildInfoChip(
                      Icons.playlist_play_outlined,
                      "${module['lessons']} lessons",
                      module['primaryColor'],
                    ),
                    const SizedBox(width: 12),
                    _buildInfoChip(
                      Icons.access_time_outlined,
                      module['duration'],
                      module['primaryColor'],
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

  Widget _buildInfoChip(IconData icon, String text, Color color) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 14, color: color),
          const SizedBox(width: 6),
          Text(
            text,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: color,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildQuickActions() {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.blue.shade50, Colors.purple.shade50],
        ),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.blue.shade100),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.tips_and_updates_outlined,
                  color: Colors.blue.shade600, size: 24),
              const SizedBox(width: 12),
              Text(
                "Pro Tips",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue.shade800,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Text(
            "• Start with Basic module for solid foundation\n• Practice each concept before moving forward\n• Use the built-in MongoDB shell for hands-on experience",
            style: TextStyle(
              fontSize: 14,
              color: Colors.blue.shade700,
              height: 1.6,
            ),
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              Expanded(
                child: ElevatedButton.icon(
                  onPressed: () {
                    launchExternalUrl('https://www.mongodb.com/docs/');
                  },
                  icon: const Icon(Icons.book_outlined, size: 18),
                  label: const Text("Documentation"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.blue.shade600,
                    elevation: 0,
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                      side: BorderSide(color: Colors.blue.shade200),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 12),
            ],
          ),
        ],
      ),
    );
  }
}