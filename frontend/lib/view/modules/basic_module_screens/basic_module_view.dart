import 'package:mongoverse/view/modules/basic_module_screens/bson_format.dart';
import 'package:mongoverse/view/modules/basic_module_screens/features_of_mongodb.dart';
import 'package:mongoverse/view/modules/basic_module_screens/intro_to_mongo.dart';
import 'package:mongoverse/view/modules/basic_module_screens/mogodb_crud.dart';
import 'package:mongoverse/view/modules/basic_module_screens/mongdb_installation.dart';
import 'package:mongoverse/view/modules/basic_module_screens/mongodb_architecture.dart';
import 'package:mongoverse/view/modules/basic_module_screens/mongodb_compass.dart';
import 'package:mongoverse/view/modules/basic_module_screens/mongodb_data_types.dart';
import 'package:mongoverse/view/modules/basic_module_screens/mongodb_shell.dart';
import 'package:mongoverse/view/modules/basic_module_screens/nosql_usecases.dart';
import 'package:mongoverse/view/modules/basic_module_screens/sql_vs_nosql.dart';
//
// import '../../../utils/import_export.dart';
// import 'documents_and_collection.dart';
//
// class BasicModuleView extends StatefulWidget {
//   BasicModuleView({super.key});
//
//   @override
//   State<BasicModuleView> createState() => _BasicModuleViewState();
// }
//
// class _BasicModuleViewState extends State<BasicModuleView>
//     with TickerProviderStateMixin {
//   late AnimationController _animationController;
//   late Animation<double> _fadeAnimation;
//
//   final List<ModuleTopic> topicList = [
//     ModuleTopic(
//       title: "Introduction to NoSQL",
//       subtitle: "Learn the fundamentals of NoSQL databases",
//       icon: Icons.info_outline,
//       color: Colors.blue,
//       isCompleted: false,
//     ),
//     ModuleTopic(
//       title: "SQL vs NoSQL",
//       subtitle: "Compare relational and non-relational databases",
//       icon: Icons.compare_arrows,
//       color: Colors.green,
//       isCompleted: false,
//     ),
//     ModuleTopic(
//       title: "NoSQL Use Cases",
//       subtitle: "Discover when to use NoSQL databases",
//       icon: Icons.lightbulb_outline,
//       color: Colors.orange,
//       isCompleted: false,
//     ),
//     ModuleTopic(
//       title: "MongoDB Architecture",
//       subtitle: "Understand MongoDB's internal structure",
//       icon: Icons.architecture,
//       color: Colors.purple,
//       isCompleted: false,
//     ),
//     ModuleTopic(
//       title: "Documents & Collections",
//       subtitle: "Learn about MongoDB's data organization",
//       icon: Icons.folder_outlined,
//       color: Colors.teal,
//       isCompleted: false,
//     ),
//     ModuleTopic(
//       title: "BSON Format",
//       subtitle: "Understanding Binary JSON in MongoDB",
//       icon: Icons.code,
//       color: Colors.indigo,
//       isCompleted: false,
//     ),
//     ModuleTopic(
//       title: "Features of MongoDB",
//       subtitle: "Explore MongoDB's key capabilities",
//       icon: Icons.star_outline,
//       color: Colors.red,
//       isCompleted: false,
//     ),
//     ModuleTopic(
//       title: "Installation & Setup",
//       subtitle: "Get MongoDB running on your system",
//       icon: Icons.download,
//       color: Colors.brown,
//       isCompleted: false,
//     ),
//     ModuleTopic(
//       title: "MongoDB Compass",
//       subtitle: "Use the graphical MongoDB interface",
//       icon: Icons.dashboard,
//       color: Colors.pink,
//       isCompleted: false,
//     ),
//     ModuleTopic(
//       title: "Mongo Shell",
//       subtitle: "Connect and interact via command line",
//       icon: Icons.terminal,
//       color: Colors.amber,
//       isCompleted: false,
//     ),
//     ModuleTopic(
//       title: "CRUD Operations",
//       subtitle: "Create, Read, Update, and Delete data",
//       icon: Icons.edit,
//       color: Colors.deepOrange,
//       isCompleted: false,
//     ),
//     ModuleTopic(
//       title: "MongoDB Data Types",
//       subtitle: "Explore supported data types in MongoDB",
//       icon: Icons.data_object,
//       color: Colors.lime,
//       isCompleted: false,
//     ),
//   ];
//
//   @override
//   void initState() {
//     super.initState();
//     _animationController = AnimationController(
//       duration: const Duration(milliseconds: 1000),
//       vsync: this,
//     );
//     _fadeAnimation = Tween<double>(
//       begin: 0.0,
//       end: 1.0,
//     ).animate(CurvedAnimation(
//       parent: _animationController,
//       curve: Curves.easeInOut,
//     ));
//     _animationController.forward();
//   }
//
//   @override
//   void dispose() {
//     _animationController.dispose();
//     super.dispose();
//   }
//
//   void navigateToScreen(int index) {
//     // Mark as completed for demo purposes
//     setState(() {
//       topicList[index].isCompleted = true;
//     });
//
//     switch (index) {
//       case 0:
//         Get.to(() => IntroToMongo(),
//             transition: Transition.rightToLeft,
//             duration: const Duration(milliseconds: 300));
//         break;
//       case 1:
//         Get.to(() => SqlVsNoSql(),
//             transition: Transition.rightToLeft,
//             duration: const Duration(milliseconds: 300));
//         break;
//       case 2:
//         Get.to(() => NoSqlUseCases(),
//             transition: Transition.rightToLeft,
//             duration: const Duration(milliseconds: 300));
//         break;
//       case 3:
//         Get.to(() => MongoDbArchitecture(),
//             transition: Transition.rightToLeft,
//             duration: const Duration(milliseconds: 300));
//         break;
//       case 4:
//         Get.to(() => DocumentsAndCollection(),
//               transition: Transition.rightToLeft,
//               duration: const Duration(milliseconds: 300));
//         break;
//       case 5:
//         Get.to(() => BsonFormat(),
//               transition: Transition.rightToLeft,
//               duration: const Duration(milliseconds: 300));
//         break;
//       case 6:
//         Get.to(() => FeaturesOfMongoDB(),
//             transition: Transition.rightToLeft,
//             duration: const Duration(milliseconds: 300));
//         break;
//       case 7:
//         Get.to(() => MongoDBInstallation(),
//             transition: Transition.rightToLeft,
//             duration: const Duration(milliseconds: 300));
//         break;
//       case 8:
//         Get.to(() => MongoDBCompass(),
//             transition: Transition.rightToLeft,
//             duration: const Duration(milliseconds: 300));
//         break;
//       case 9:
//         Get.to(() => MongoDBShell(),
//             transition: Transition.rightToLeft,
//             duration: const Duration(milliseconds: 300));
//         break;
//       case 10:
//         Get.to(() => MongoDBCRUD(),
//             transition: Transition.rightToLeft,
//             duration: const Duration(milliseconds: 300));
//         break;
//       case 11:
//         Get.to(() => MongoDBDataTypes(),
//             transition: Transition.rightToLeft,
//             duration: const Duration(milliseconds: 300));
//         break;
//       case 12:
//         Get.snackbar(
//           "Coming Soon",
//           "This module will be available soon!",
//           snackPosition: SnackPosition.BOTTOM,
//           backgroundColor: Colors.orange.shade100,
//           colorText: Colors.orange.shade800,
//           icon: const Icon(Icons.hourglass_empty),
//           duration: const Duration(seconds: 2),
//         );
//         break;
//       default:
//         Get.snackbar(
//           "Error",
//           "Unknown screen selected",
//           snackPosition: SnackPosition.BOTTOM,
//           backgroundColor: Colors.red.shade100,
//           colorText: Colors.red.shade800,
//           icon: const Icon(Icons.error_outline),
//         );
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey.shade50,
//       appBar: AppBar(
//         title: const Text(
//           "MongoDB Basics",
//           style: TextStyle(
//             fontWeight: FontWeight.bold,
//             fontSize: 24,
//           ),
//         ),
//         backgroundColor: Colors.green.shade700,
//         foregroundColor: Colors.white,
//         elevation: 0,
//         centerTitle: true,
//         leading: IconButton(
//           icon: const Icon(Icons.arrow_back_ios),
//           onPressed: () => Get.back(),
//         ),
//         actions: [
//           IconButton(
//             icon: const Icon(Icons.info_outline),
//             onPressed: () {
//               Get.dialog(
//                 AlertDialog(
//                   title: const Text("About This Module"),
//                   content: const Text(
//                     "Learn the fundamentals of MongoDB and NoSQL databases through interactive lessons and hands-on examples.",
//                   ),
//                   actions: [
//                     TextButton(
//                       onPressed: () => Get.back(),
//                       child: const Text("Got it!"),
//                     ),
//                   ],
//                 ),
//               );
//             },
//           ),
//         ],
//       ),
//       body: FadeTransition(
//         opacity: _fadeAnimation,
//         child: Column(
//           children: [
//             // Progress Header
//             Container(
//               width: double.infinity,
//               padding: const EdgeInsets.all(20),
//               decoration: BoxDecoration(
//                 color: Colors.green.shade700,
//                 borderRadius: const BorderRadius.only(
//                   bottomLeft: Radius.circular(30),
//                   bottomRight: Radius.circular(30),
//                 ),
//               ),
//               child: Column(
//                 children: [
//                   Text(
//                     "Your Progress",
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 18,
//                       fontWeight: FontWeight.w600,
//                     ),
//                   ),
//                   const SizedBox(height: 10),
//                   LinearProgressIndicator(
//                     value: topicList.where((topic) => topic.isCompleted).length / topicList.length,
//                     backgroundColor: Colors.white.withOpacity(0.3),
//                     valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
//                     minHeight: 8,
//                   ),
//                   const SizedBox(height: 8),
//                   Text(
//                     "${topicList.where((topic) => topic.isCompleted).length} of ${topicList.length} completed",
//                     style: TextStyle(
//                       color: Colors.white.withOpacity(0.9),
//                       fontSize: 14,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//
//             // Topics List
//             Expanded(
//               child: ListView.builder(
//                 padding: const EdgeInsets.all(16),
//                 itemCount: topicList.length,
//                 itemBuilder: (context, index) {
//                   return AnimatedContainer(
//                     duration: Duration(milliseconds: 300 + (index * 100)),
//                     curve: Curves.easeOutBack,
//                     child: TopicCard(
//                       topic: topicList[index],
//                       index: index,
//                       onTap: () => navigateToScreen(index),
//                     ),
//                   );
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class ModuleTopic {
//   final String title;
//   final String subtitle;
//   final IconData icon;
//   final Color color;
//   bool isCompleted;
//
//   ModuleTopic({
//     required this.title,
//     required this.subtitle,
//     required this.icon,
//     required this.color,
//     this.isCompleted = false,
//   });
// }
//
// class TopicCard extends StatefulWidget {
//   final ModuleTopic topic;
//   final int index;
//   final VoidCallback onTap;
//
//   const TopicCard({
//     Key? key,
//     required this.topic,
//     required this.index,
//     required this.onTap,
//   }) : super(key: key);
//
//   @override
//   State<TopicCard> createState() => _TopicCardState();
// }
//
// class _TopicCardState extends State<TopicCard>
//     with SingleTickerProviderStateMixin {
//   bool _isPressed = false;
//   late AnimationController _controller;
//   late Animation<double> _scaleAnimation;
//
//   @override
//   void initState() {
//     super.initState();
//     _controller = AnimationController(
//       duration: const Duration(milliseconds: 150),
//       vsync: this,
//     );
//     _scaleAnimation = Tween<double>(
//       begin: 1.0,
//       end: 0.95,
//     ).animate(CurvedAnimation(
//       parent: _controller,
//       curve: Curves.easeInOut,
//     ));
//   }
//
//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return AnimatedBuilder(
//       animation: _scaleAnimation,
//       builder: (context, child) {
//         return Transform.scale(
//           scale: _scaleAnimation.value,
//           child: GestureDetector(
//             onTapDown: (_) {
//               setState(() => _isPressed = true);
//               _controller.forward();
//             },
//             onTapUp: (_) {
//               setState(() => _isPressed = false);
//               _controller.reverse();
//               widget.onTap();
//             },
//             onTapCancel: () {
//               setState(() => _isPressed = false);
//               _controller.reverse();
//             },
//             child: Container(
//               margin: const EdgeInsets.only(bottom: 16),
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(16),
//                 boxShadow: [
//                   BoxShadow(
//                     color: widget.topic.color.withOpacity(0.1),
//                     blurRadius: 10,
//                     offset: const Offset(0, 4),
//                   ),
//                 ],
//                 border: Border.all(
//                   color: widget.topic.isCompleted
//                       ? Colors.green
//                       : Colors.transparent,
//                   width: 2,
//                 ),
//               ),
//               child: Padding(
//                 padding: const EdgeInsets.all(20),
//                 child: Row(
//                   children: [
//                     // Icon Container
//                     Container(
//                       width: 60,
//                       height: 60,
//                       decoration: BoxDecoration(
//                         color: widget.topic.color.withOpacity(0.1),
//                         borderRadius: BorderRadius.circular(16),
//                       ),
//                       child: Icon(
//                         widget.topic.icon,
//                         color: widget.topic.color,
//                         size: 30,
//                       ),
//                     ),
//                     const SizedBox(width: 16),
//
//                     // Content
//                     Expanded(
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Row(
//                             children: [
//                               Expanded(
//                                 child: Text(
//                                   widget.topic.title,
//                                   style: const TextStyle(
//                                     fontSize: 18,
//                                     fontWeight: FontWeight.bold,
//                                     color: Colors.black87,
//                                   ),
//                                 ),
//                               ),
//                               if (widget.topic.isCompleted)
//                                 Container(
//                                   padding: const EdgeInsets.all(4),
//                                   decoration: BoxDecoration(
//                                     color: Colors.green,
//                                     borderRadius: BorderRadius.circular(12),
//                                   ),
//                                   child: const Icon(
//                                     Icons.check,
//                                     color: Colors.white,
//                                     size: 16,
//                                   ),
//                                 ),
//                             ],
//                           ),
//                           const SizedBox(height: 8),
//                           Text(
//                             widget.topic.subtitle,
//                             style: TextStyle(
//                               fontSize: 14,
//                               color: Colors.grey.shade600,
//                               height: 1.3,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//
//                     // Arrow
//                     Container(
//                       padding: const EdgeInsets.all(8),
//                       decoration: BoxDecoration(
//                         color: widget.topic.color.withOpacity(0.1),
//                         borderRadius: BorderRadius.circular(8),
//                       ),
//                       child: Icon(
//                         Icons.arrow_forward_ios,
//                         color: widget.topic.color,
//                         size: 16,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         );
//       },
//     );
//   }
// }


import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:mongoverse/services/api_services.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'documents_and_collection.dart';


//
// class BasicModuleView extends StatefulWidget {
//   BasicModuleView({super.key});
//
//   @override
//   State<BasicModuleView> createState() => _BasicModuleViewState();
// }
//
// class _BasicModuleViewState extends State<BasicModuleView>
//     with TickerProviderStateMixin {
//   late AnimationController _animationController;
//   late Animation<double> _fadeAnimation;
//
//   final ApiService apiService = ApiService();
//   List<ModuleTopic> topicList = [];
//   int selectedModuleId = 1; // Default to module ID 1
//
//   @override
//   void initState() {
//     super.initState();
//     _animationController = AnimationController(
//       duration: const Duration(milliseconds: 1000),
//       vsync: this,
//     );
//     _fadeAnimation = Tween<double>(
//       begin: 0.0,
//       end: 1.0,
//     ).animate(CurvedAnimation(
//       parent: _animationController,
//       curve: Curves.easeInOut,
//     ));
//     _animationController.forward();
//     _fetchTopicsById(selectedModuleId);
//   }
//
//   // Future<void> _fetchTopicsById(int id) async {
//   //   try {
//   //     final response = await apiService.getTopicsById(id);
//   //     if (response is Map<String, dynamic> && response.containsKey('Data')) {
//   //       setState(() {
//   //         topicList = (response['Data'] as List)
//   //             .map((topic) => ModuleTopic(
//   //           title: topic['topic_Title'] ?? 'Untitled',
//   //           subtitle:  topic['topic_Description'] ?? 'Untitled',
//   //           icon: _getIconForTopic(topic['topic_Title']),
//   //           color: _getColorForTopic(topic['topic_Title']),
//   //           isCompleted: false,
//   //         ))
//   //             .toList();
//   //       });
//   //     } else {
//   //       throw Exception("Invalid response format: 'Data' key not found");
//   //     }
//   //   } catch (e) {
//   //     print("Error fetching topics: $e");
//   //     Get.snackbar(
//   //       "Error",
//   //       "Failed to load topics",
//   //       snackPosition: SnackPosition.BOTTOM,
//   //       backgroundColor: Colors.red.shade100,
//   //       colorText: Colors.red.shade800,
//   //       icon: const Icon(Icons.error_outline),
//   //     );
//   //   }
//   // }
//   Future<void> _fetchTopicsById(int id) async {
//     try {
//       final response = await apiService.getTopicsById(id);
//       if (response is Map<String, dynamic> && response.containsKey('Data')) {
//         final prefs = await SharedPreferences.getInstance();
//         final savedCompleted = prefs.getStringList("completedTopics_1") ?? [];
//
//         setState(() {
//           topicList = (response['Data'] as List).asMap().entries.map((entry) {
//             int index = entry.key;
//             var topic = entry.value;
//             return ModuleTopic(
//               title: topic['topic_Title'] ?? 'Untitled',
//               subtitle: topic['topic_Description'] ?? 'Untitled',
//               icon: _getIconForTopic(topic['topic_Title']),
//               color: _getColorForTopic(topic['topic_Title']),
//               isCompleted: savedCompleted.contains(index.toString()),
//             );
//           }).toList();
//         });
//       } else {
//         throw Exception("Invalid response format: 'Data' key not found");
//       }
//     } catch (e) {
//       print("Error fetching topics: $e");
//       Get.snackbar("Error", "Failed to load topics");
//     }
//   }
//
//   IconData _getIconForTopic(String? title) {
//     switch (title) {
//       case "Introduction to NoSQL":
//         return Icons.info_outline;
//       case "SQL vs NoSQL":
//         return Icons.compare_arrows;
//       case "NoSQL Use Cases":
//         return Icons.lightbulb_outline;
//       case "MongoDB Architecture":
//         return Icons.architecture;
//       case "Documents & Collections":
//         return Icons.folder_outlined;
//       case "BSON Format":
//         return Icons.code;
//       case "Features of MongoDB":
//         return Icons.star_outline;
//       case "Installation & Setup":
//         return Icons.download;
//       case "MongoDB Compass":
//         return Icons.dashboard;
//       case "Mongo Shell":
//         return Icons.terminal;
//       case "CRUD Operations":
//         return Icons.edit;
//       case "MongoDB Data Types":
//         return Icons.data_object;
//       default:
//         return Icons.help_outline;
//     }
//   }
//
//   Color _getColorForTopic(String? title) {
//     switch (title) {
//       case "Introduction to NoSQL":
//         return Colors.blue;
//       case "SQL vs NoSQL":
//         return Colors.green;
//       case "NoSQL Use Cases":
//         return Colors.orange;
//       case "MongoDB Architecture":
//         return Colors.purple;
//       case "Documents & Collections":
//         return Colors.teal;
//       case "BSON Format":
//         return Colors.indigo;
//       case "Features of MongoDB":
//         return Colors.red;
//       case "Installation & Setup":
//         return Colors.brown;
//       case "MongoDB Compass":
//         return Colors.pink;
//       case "Mongo Shell":
//         return Colors.amber;
//       case "CRUD Operations":
//         return Colors.deepOrange;
//       case "MongoDB Data Types":
//         return Colors.lime;
//       default:
//         return Colors.amberAccent;
//     }
//   }
//
//   @override
//   void dispose() {
//     _animationController.dispose();
//     super.dispose();
//   }
//
//   void navigateToScreen(int index) async{
//     setState(() {
//       topicList[index].isCompleted = true;
//     });
//
//     final prefs = await SharedPreferences.getInstance();
//     List<String> completedIndexes = topicList
//         .asMap()
//         .entries
//         .where((entry) => entry.value.isCompleted)
//         .map((entry) => entry.key.toString())
//         .toList();
//     await prefs.setStringList("completedTopics_1", completedIndexes);
//
//     switch (index) {
//       case 0:
//         Get.to(() => IntroToMongo(moduleId: 1,),
//             transition: Transition.rightToLeft,
//             duration: const Duration(milliseconds: 300));
//         break;
//       case 1:
//         Get.to(() => SqlVsNoSql(moduleId: 1,),
//             transition: Transition.rightToLeft,
//             duration: const Duration(milliseconds: 300));
//         break;
//       case 2:
//         Get.to(() => NoSqlUseCases(moduleId: 1,),
//             transition: Transition.rightToLeft,
//             duration: const Duration(milliseconds: 300));
//         break;
//       case 3:
//         Get.to(() => MongoDbArchitecture(moduleId: 1,),
//             transition: Transition.rightToLeft,
//             duration: const Duration(milliseconds: 300));
//         break;
//       case 4:
//         Get.to(() => DocumentsAndCollection(moduleId: 1,),
//             transition: Transition.rightToLeft,
//             duration: const Duration(milliseconds: 300));
//         break;
//       case 5:
//         Get.to(() => BsonFormat(moduleId: 1,),
//             transition: Transition.rightToLeft,
//             duration: const Duration(milliseconds: 300));
//         break;
//       case 6:
//         Get.to(() => FeaturesOfMongoDB(moduleId: 1,),
//             transition: Transition.rightToLeft,
//             duration: const Duration(milliseconds: 300));
//         break;
//       case 7:
//         Get.to(() => MongoDBInstallation(moduleId: 1,),
//             transition: Transition.rightToLeft,
//             duration: const Duration(milliseconds: 300));
//         break;
//       case 8:
//         Get.to(() => MongoDBCompass(moduleId: 1,),
//             transition: Transition.rightToLeft,
//             duration: const Duration(milliseconds: 300));
//         break;
//       case 9:
//         Get.to(() => MongoDBShell(moduleId: 1,),
//             transition: Transition.rightToLeft,
//             duration: const Duration(milliseconds: 300));
//         break;
//       case 10:
//         Get.to(() => MongoDBCRUD(moduleId: 1,),
//             transition: Transition.rightToLeft,
//             duration: const Duration(milliseconds: 300));
//         break;
//       case 11:
//         Get.to(() => MongoDBDataTypes(moduleId: 1,),
//             transition: Transition.rightToLeft,
//             duration: const Duration(milliseconds: 300));
//         break;
//       default:
//         Get.snackbar(
//           "Coming Soon",
//           "This module will be available soon!",
//           snackPosition: SnackPosition.BOTTOM,
//           backgroundColor: Colors.orange.shade100,
//           colorText: Colors.orange.shade800,
//           icon: const Icon(Icons.hourglass_empty),
//           duration: const Duration(seconds: 2),
//         );
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey.shade50,
//       appBar: AppBar(
//         title: const Text(
//           "MongoDB Basics",
//           style: TextStyle(
//             fontWeight: FontWeight.bold,
//             fontSize: 24,
//           ),
//         ),
//         backgroundColor: Colors.green.shade700,
//         foregroundColor: Colors.white,
//         elevation: 0,
//         centerTitle: true,
//         leading: IconButton(
//           icon: const Icon(Icons.arrow_back_ios),
//           onPressed: () => Get.back(),
//         ),
//         actions: [
//           IconButton(
//             icon: const Icon(Icons.info_outline),
//             onPressed: () {
//               Get.dialog(
//                 AlertDialog(
//                   title: const Text("About This Module"),
//                   content: const Text(
//                     "Learn the fundamentals of MongoDB and NoSQL databases through interactive lessons and hands-on examples.",
//                   ),
//                   actions: [
//                     TextButton(
//                       onPressed: () => Get.back(),
//                       child: const Text("Got it!"),
//                     ),
//                   ],
//                 ),
//               );
//             },
//           ),
//         ],
//       ),
//       body: FadeTransition(
//         opacity: _fadeAnimation,
//         child: Column(
//           children: [
//             // Progress Header
//             Container(
//               width: double.infinity,
//               padding: const EdgeInsets.all(20),
//               decoration: BoxDecoration(
//                 color: Colors.green.shade700,
//                 borderRadius: const BorderRadius.only(
//                   bottomLeft: Radius.circular(30),
//                   bottomRight: Radius.circular(30),
//                 ),
//               ),
//               child: Column(
//                 children: [
//                   Text(
//                     "Your Progress",
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 18,
//                       fontWeight: FontWeight.w600,
//                     ),
//                   ),
//                   const SizedBox(height: 10),
//                   LinearProgressIndicator(
//                     value: topicList.isEmpty
//                         ? 0.0
//                         : topicList.where((topic) => topic.isCompleted).length /
//                         topicList.length,
//                     backgroundColor: Colors.white.withOpacity(0.3),
//                     valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
//                     minHeight: 8,
//                   ),
//                   const SizedBox(height: 8),
//                   Text(
//                     "${topicList.where((topic) => topic.isCompleted).length} of ${topicList.length} completed",
//                     style: TextStyle(
//                       color: Colors.white.withOpacity(0.9),
//                       fontSize: 14,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//
//             // Topics List
//             Expanded(
//               child: ListView.builder(
//                 padding: const EdgeInsets.all(16),
//                 itemCount: topicList.length,
//                 itemBuilder: (context, index) {
//                   return AnimatedContainer(
//                     duration: Duration(milliseconds: 300 + (index * 100)),
//                     curve: Curves.easeOutBack,
//                     child: TopicCard(
//                       topic: topicList[index],
//                       index: index,
//                       onTap: () => navigateToScreen(index),
//                     ),
//                   );
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class ModuleTopic {
//   final String title;
//   final String subtitle;
//   final IconData icon;
//   final Color color;
//   bool isCompleted;
//
//   ModuleTopic({
//     required this.title,
//     required this.subtitle,
//     required this.icon,
//     required this.color,
//     this.isCompleted = false,
//   });
// }
//
// class TopicCard extends StatefulWidget {
//   final ModuleTopic topic;
//   final int index;
//   final VoidCallback onTap;
//
//   const TopicCard({
//     Key? key,
//     required this.topic,
//     required this.index,
//     required this.onTap,
//   }) : super(key: key);
//
//   @override
//   State<TopicCard> createState() => _TopicCardState();
// }
//
// class _TopicCardState extends State<TopicCard>
//     with SingleTickerProviderStateMixin {
//   bool _isPressed = false;
//   late AnimationController _controller;
//   late Animation<double> _scaleAnimation;
//
//   @override
//   void initState() {
//     super.initState();
//     _controller = AnimationController(
//       duration: const Duration(milliseconds: 150),
//       vsync: this,
//     );
//     _scaleAnimation = Tween<double>(
//       begin: 1.0,
//       end: 0.95,
//     ).animate(CurvedAnimation(
//       parent: _controller,
//       curve: Curves.easeInOut,
//     ));
//   }
//
//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return AnimatedBuilder(
//       animation: _scaleAnimation,
//       builder: (context, child) {
//         return Transform.scale(
//           scale: _scaleAnimation.value,
//           child: GestureDetector(
//             onTapDown: (_) {
//               setState(() => _isPressed = true);
//               _controller.forward();
//             },
//             onTapUp: (_) {
//               setState(() => _isPressed = false);
//               _controller.reverse();
//               widget.onTap();
//             },
//             onTapCancel: () {
//               setState(() => _isPressed = false);
//               _controller.reverse();
//             },
//             child: Container(
//               margin: const EdgeInsets.only(bottom: 16),
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(16),
//                 boxShadow: [
//                   BoxShadow(
//                     color: widget.topic.color.withOpacity(0.1),
//                     blurRadius: 10,
//                     offset: const Offset(0, 4),
//                   ),
//                 ],
//                 border: Border.all(
//                   color: widget.topic.isCompleted
//                       ? Colors.green
//                       : Colors.transparent,
//                   width: 2,
//                 ),
//               ),
//               child: Padding(
//                 padding: const EdgeInsets.all(20),
//                 child: Row(
//                   children: [
//                     // Icon Container
//                     Container(
//                       width: 60,
//                       height: 60,
//                       decoration: BoxDecoration(
//                         color: widget.topic.color.withOpacity(0.1),
//                         borderRadius: BorderRadius.circular(16),
//                       ),
//                       child: Icon(
//                         widget.topic.icon,
//                         color: widget.topic.color,
//                         size: 30,
//                       ),
//                     ),
//                     const SizedBox(width: 16),
//
//                     // Content
//                     Expanded(
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Row(
//                             children: [
//                               Expanded(
//                                 child: Text(
//                                   widget.topic.title,
//                                   style: const TextStyle(
//                                     fontSize: 18,
//                                     fontWeight: FontWeight.bold,
//                                     color: Colors.black87,
//                                   ),
//                                 ),
//                               ),
//                               if (widget.topic.isCompleted)
//                                 Container(
//                                   padding: const EdgeInsets.all(4),
//                                   decoration: BoxDecoration(
//                                     color: Colors.green,
//                                     borderRadius: BorderRadius.circular(12),
//                                   ),
//                                   child: const Icon(
//                                     Icons.check,
//                                     color: Colors.white,
//                                     size: 16,
//                                   ),
//                                 ),
//                             ],
//                           ),
//                           const SizedBox(height: 8),
//                           Text(
//                             widget.topic.subtitle,
//                             style: TextStyle(
//                               fontSize: 14,
//                               color: Colors.grey.shade600,
//                               height: 1.3,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//
//                     // Arrow
//                     Container(
//                       padding: const EdgeInsets.all(8),
//                       decoration: BoxDecoration(
//                         color: widget.topic.color.withOpacity(0.1),
//                         borderRadius: BorderRadius.circular(8),
//                       ),
//                       child: Icon(
//                         Icons.arrow_forward_ios,
//                         color: widget.topic.color,
//                         size: 16,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         );
//       },
//     );
//   }
// }




class BasicModuleView extends StatefulWidget {
  BasicModuleView({super.key});

  @override
  State<BasicModuleView> createState() => _BasicModuleViewState();
}

class _BasicModuleViewState extends State<BasicModuleView>
    with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _fadeAnimation;

  final ApiService apiService = ApiService();
  List<ModuleTopic> topicList = [];
  int selectedModuleId = 1; // Default to module ID 1

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 1000),
      vsync: this,
    );
    _fadeAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    ));
    _animationController.forward();
    _fetchTopicsById(selectedModuleId);
  }

  Future<void> _fetchTopicsById(int id) async {
    try {
      final response = await apiService.getTopicsById(id);
      if (response is Map<String, dynamic> && response.containsKey('Data')) {
        final prefs = await SharedPreferences.getInstance();
        final savedCompleted = prefs.getStringList("completedTopics_1") ?? [];

        setState(() {
          topicList = (response['Data'] as List).asMap().entries.map((entry) {
            int index = entry.key;
            var topic = entry.value;
            return ModuleTopic(
              title: topic['topic_Title'] ?? 'Untitled',
              subtitle: topic['topic_Description'] ?? 'Untitled',
              icon: _getIconForTopic(topic['topic_Title']),
              color: _getColorForTopic(topic['topic_Title']),
              isCompleted: savedCompleted.contains(index.toString()),
            );
          }).toList();
        });
      } else {
        throw Exception("Invalid response format: 'Data' key not found");
      }
    } catch (e) {
      print("Error fetching topics: $e");
      Get.snackbar("Error", "Failed to load topics");
    }
  }

  IconData _getIconForTopic(String? title) {
    switch (title) {
      case "Introduction to NoSQL":
        return Icons.info_outline;
      case "SQL vs NoSQL":
        return Icons.compare_arrows;
      case "NoSQL Use Cases":
        return Icons.lightbulb_outline;
      case "MongoDB Architecture":
        return Icons.architecture;
      case "Documents & Collections":
        return Icons.folder_outlined;
      case "BSON Format":
        return Icons.code;
      case "Features of MongoDB":
        return Icons.star_outline;
      case "Installation & Setup":
        return Icons.download;
      case "MongoDB Compass":
        return Icons.dashboard;
      case "Mongo Shell":
        return Icons.terminal;
      case "CRUD Operations":
        return Icons.edit;
      case "MongoDB Data Types":
        return Icons.data_object;
      default:
        return Icons.help_outline;
    }
  }

  Color _getColorForTopic(String? title) {
    switch (title) {
      case "Introduction to NoSQL":
        return Colors.blue;
      case "SQL vs NoSQL":
        return Colors.green;
      case "NoSQL Use Cases":
        return Colors.orange;
      case "MongoDB Architecture":
        return Colors.purple;
      case "Documents & Collections":
        return Colors.teal;
      case "BSON Format":
        return Colors.indigo;
      case "Features of MongoDB":
        return Colors.red;
      case "Installation & Setup":
        return Colors.brown;
      case "MongoDB Compass":
        return Colors.pink;
      case "Mongo Shell":
        return Colors.amber;
      case "CRUD Operations":
        return Colors.deepOrange;
      case "MongoDB Data Types":
        return Colors.lime;
      default:
        return Colors.amberAccent;
    }
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void navigateToScreen(int index) async {
    setState(() {
      topicList[index].isCompleted = true;
    });

    final prefs = await SharedPreferences.getInstance();
    List<String> completedIndexes = topicList
        .asMap()
        .entries
        .where((entry) => entry.value.isCompleted)
        .map((entry) => entry.key.toString())
        .toList();
    await prefs.setStringList("completedTopics_1", completedIndexes);

    switch (index) {
      case 0:
        Get.to(() => IntroToMongo(moduleId: 1),
            transition: Transition.rightToLeft,
            duration: const Duration(milliseconds: 300));
        break;
      case 1:
        Get.to(() => SqlVsNoSql(moduleId: 1),
            transition: Transition.rightToLeft,
            duration: const Duration(milliseconds: 300));
        break;
      case 2:
        Get.to(() => NoSqlUseCases(moduleId: 1),
            transition: Transition.rightToLeft,
            duration: const Duration(milliseconds: 300));
        break;
      case 3:
        Get.to(() => MongoDbArchitecture(moduleId: 1),
            transition: Transition.rightToLeft,
            duration: const Duration(milliseconds: 300));
        break;
      case 4:
        Get.to(() => DocumentsAndCollection(moduleId: 1),
            transition: Transition.rightToLeft,
            duration: const Duration(milliseconds: 300));
        break;
      case 5:
        Get.to(() => BsonFormat(moduleId: 1),
            transition: Transition.rightToLeft,
            duration: const Duration(milliseconds: 300));
        break;
      case 6:
        Get.to(() => FeaturesOfMongoDB(moduleId: 1),
            transition: Transition.rightToLeft,
            duration: const Duration(milliseconds: 300));
        break;
      case 7:
        Get.to(() => MongoDBInstallation(moduleId: 1),
            transition: Transition.rightToLeft,
            duration: const Duration(milliseconds: 300));
        break;
      case 8:
        Get.to(() => MongoDBCompass(moduleId: 1),
            transition: Transition.rightToLeft,
            duration: const Duration(milliseconds: 300));
        break;
      case 9:
        Get.to(() => MongoDBShell(moduleId: 1),
            transition: Transition.rightToLeft,
            duration: const Duration(milliseconds: 300));
        break;
      case 10:
        Get.to(() => MongoDBCRUD(moduleId: 1),
            transition: Transition.rightToLeft,
            duration: const Duration(milliseconds: 300));
        break;
      case 11:
        Get.to(() => MongoDBDataTypes(moduleId: 1),
            transition: Transition.rightToLeft,
            duration: const Duration(milliseconds: 300));
        break;
      default:
        Get.snackbar(
          "Coming Soon",
          "This module will be available soon!",
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.orange.shade100,
          colorText: Colors.orange.shade800,
          icon: const Icon(Icons.hourglass_empty),
          duration: const Duration(seconds: 2),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      appBar: AppBar(
        title: const Text(
          "MongoDB Basics",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        backgroundColor: Colors.green.shade700,
        foregroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () => Get.back(),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.info_outline),
            onPressed: () {
              Get.dialog(
                AlertDialog(
                  title: const Text("About This Module"),
                  content: const Text(
                    "Learn the fundamentals of MongoDB and NoSQL databases through interactive lessons and hands-on examples.",
                  ),
                  actions: [
                    TextButton(
                      onPressed: () => Get.back(),
                      child: const Text("Got it!"),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
      body: topicList.isEmpty
          ? Center(
        child: CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(Colors.green.shade700),
        ),
      )
          : FadeTransition(
        opacity: _fadeAnimation,
        child: Column(
          children: [
            // Progress Header
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.green.shade700,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: Column(
                children: [
                  Text(
                    "Your Progress",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 10),
                  LinearProgressIndicator(
                    value: topicList.isEmpty
                        ? 0.0
                        : topicList
                        .where((topic) => topic.isCompleted)
                        .length /
                        topicList.length,
                    backgroundColor: Colors.white.withOpacity(0.3),
                    valueColor:
                    AlwaysStoppedAnimation<Color>(Colors.white),
                    minHeight: 8,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "${topicList.where((topic) => topic.isCompleted).length} of ${topicList.length} completed",
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.9),
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),

            // Topics List
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.all(16),
                itemCount: topicList.length,
                itemBuilder: (context, index) {
                  return AnimatedContainer(
                    duration: Duration(milliseconds: 300 + (index * 100)),
                    curve: Curves.easeOutBack,
                    child: TopicCard(
                      topic: topicList[index],
                      index: index,
                      onTap: () => navigateToScreen(index),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ModuleTopic {
  final String title;
  final String subtitle;
  final IconData icon;
  final Color color;
  bool isCompleted;

  ModuleTopic({
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.color,
    this.isCompleted = false,
  });
}

class TopicCard extends StatefulWidget {
  final ModuleTopic topic;
  final int index;
  final VoidCallback onTap;

  const TopicCard({
    Key? key,
    required this.topic,
    required this.index,
    required this.onTap,
  }) : super(key: key);

  @override
  State<TopicCard> createState() => _TopicCardState();
}

class _TopicCardState extends State<TopicCard>
    with SingleTickerProviderStateMixin {
  bool _isPressed = false;
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 150),
      vsync: this,
    );
    _scaleAnimation = Tween<double>(
      begin: 1.0,
      end: 0.95,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _scaleAnimation,
      builder: (context, child) {
        return Transform.scale(
          scale: _scaleAnimation.value,
          child: GestureDetector(
            onTapDown: (_) {
              setState(() => _isPressed = true);
              _controller.forward();
            },
            onTapUp: (_) {
              setState(() => _isPressed = false);
              _controller.reverse();
              widget.onTap();
            },
            onTapCancel: () {
              setState(() => _isPressed = false);
              _controller.reverse();
            },
            child: Container(
              margin: const EdgeInsets.only(bottom: 16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: widget.topic.color.withOpacity(0.1),
                    blurRadius: 10,
                    offset: const Offset(0, 4),
                  ),
                ],
                border: Border.all(
                  color: widget.topic.isCompleted
                      ? Colors.green
                      : Colors.transparent,
                  width: 2,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  children: [
                    // Icon Container
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        color: widget.topic.color.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Icon(
                        widget.topic.icon,
                        color: widget.topic.color,
                        size: 30,
                      ),
                    ),
                    const SizedBox(width: 16),

                    // Content
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  widget.topic.title,
                                  style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black87,
                                  ),
                                ),
                              ),
                              if (widget.topic.isCompleted)
                                Container(
                                  padding: const EdgeInsets.all(4),
                                  decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: const Icon(
                                    Icons.check,
                                    color: Colors.white,
                                    size: 16,
                                  ),
                                ),
                            ],
                          ),
                          const SizedBox(height: 8),
                          Text(
                            widget.topic.subtitle,
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey.shade600,
                              height: 1.3,
                            ),
                          ),
                        ],
                      ),
                    ),

                    // Arrow
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: widget.topic.color.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color: widget.topic.color,
                        size: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}