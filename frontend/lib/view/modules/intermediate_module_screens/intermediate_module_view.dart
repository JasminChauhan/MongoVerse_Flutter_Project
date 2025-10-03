//
// import 'package:mongoverse/view/modules/intermediate_module_screens/creating_custom_indexes.dart';
// import 'package:mongoverse/view/modules/intermediate_module_screens/indexing.dart';
// import 'package:mongoverse/view/modules/intermediate_module_screens/query_operators.dart';
// import 'package:mongoverse/view/modules/intermediate_module_screens/schema_validation.dart';
// import 'aggreagation_framework.dart';
// import 'index_benefits.dart';
//
// import '../../../utils/import_export.dart';
//
// class IntermediateModuleView extends StatefulWidget {
//   IntermediateModuleView({super.key});
//
//   @override
//   State<IntermediateModuleView> createState() => _IntermediateModuleViewState();
// }
//
// class _IntermediateModuleViewState extends State<IntermediateModuleView>
//     with TickerProviderStateMixin {
//   late AnimationController _animationController;
//   late Animation<double> _fadeAnimation;
//
//   final List<ModuleTopic> topicList = [
//     ModuleTopic(
//       title: "Query Operators",
//       subtitle: "Master MongoDB's powerful query operations",
//       icon: Icons.search,
//       color: Colors.indigo.shade600,
//       isCompleted: false,
//     ),
//     ModuleTopic(
//       title: "Indexing",
//       subtitle: "Learn database indexing fundamentals",
//       icon: Icons.list_alt,
//       color: Colors.indigo.shade700,
//       isCompleted: false,
//     ),
//     ModuleTopic(
//       title: "Creating Custom Indexes",
//       subtitle: "Build optimized indexes for your queries",
//       icon: Icons.build,
//       color: Colors.indigo.shade800,
//       isCompleted: false,
//     ),
//     ModuleTopic(
//       title: "Index Performance Benefits",
//       subtitle: "Understand how indexes boost query performance",
//       icon: Icons.speed,
//       color: Colors.indigo.shade900,
//       isCompleted: false,
//     ),
//     ModuleTopic(
//       title: "Aggregation Framework",
//       subtitle: "Harness MongoDB's aggregation pipeline",
//       icon: Icons.filter_alt,
//       color: Colors.indigo.shade600,
//       isCompleted: false,
//     ),
//     ModuleTopic(
//       title: "Schema Validation",
//       subtitle: "Enforce structure and rules on documents",
//       icon: Icons.rule,
//       color: Colors.indigo.shade700,
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
//         Get.to(() => QueryOperators(),
//             transition: Transition.rightToLeft,
//             duration: const Duration(milliseconds: 300));
//         break;
//       case 1:
//         Get.to(() => Indexing(),
//             transition: Transition.rightToLeft,
//             duration: const Duration(milliseconds: 300));
//         break;
//       case 2:
//         Get.to(() => CreatingCustomIndexes(),
//             transition: Transition.rightToLeft,
//             duration: const Duration(milliseconds: 300));
//         break;
//       case 3:
//         Get.to(() => IndexBenefits(),
//             transition: Transition.rightToLeft,
//             duration: const Duration(milliseconds: 300));
//         break;
//       case 4:
//         Get.to(() => AggregationFramework(),
//             transition: Transition.rightToLeft,
//             duration: const Duration(milliseconds: 300));
//         break;
//       case 5:
//         Get.to(() => SchemaValidation(),
//             transition: Transition.rightToLeft,
//             duration: const Duration(milliseconds: 300));
//         break;
//
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
//       backgroundColor: Colors.indigo.shade50,
//       appBar: AppBar(
//         title: const Text(
//           "MongoDB Intermediate",
//           style: TextStyle(
//             fontWeight: FontWeight.bold,
//             fontSize: 24,
//           ),
//         ),
//         backgroundColor: Colors.indigo.shade700,
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
//                     "Take your MongoDB skills to the next level with advanced querying, indexing strategies, and performance optimization techniques.",
//                   ),
//                   actions: [
//                     TextButton(
//                       onPressed: () => Get.back(),
//                       child: Text(
//                         "Got it!",
//                         style: TextStyle(color: Colors.indigo.shade700),
//                       ),
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
//                 gradient: LinearGradient(
//                   colors: [
//                     Colors.indigo.shade700,
//                     Colors.indigo.shade600,
//                   ],
//                   begin: Alignment.topLeft,
//                   end: Alignment.bottomRight,
//                 ),
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
//                     color: widget.topic.color.withOpacity(0.15),
//                     blurRadius: 12,
//                     offset: const Offset(0, 6),
//                   ),
//                 ],
//                 border: Border.all(
//                   color: widget.topic.isCompleted
//                       ? Colors.indigo.shade600
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
//                         gradient: LinearGradient(
//                           colors: [
//                             widget.topic.color.withOpacity(0.1),
//                             widget.topic.color.withOpacity(0.05),
//                           ],
//                           begin: Alignment.topLeft,
//                           end: Alignment.bottomRight,
//                         ),
//                         borderRadius: BorderRadius.circular(16),
//                         border: Border.all(
//                           color: widget.topic.color.withOpacity(0.2),
//                           width: 1,
//                         ),
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
//                                   style: TextStyle(
//                                     fontSize: 18,
//                                     fontWeight: FontWeight.bold,
//                                     color: Colors.indigo.shade800,
//                                   ),
//                                 ),
//                               ),
//                               if (widget.topic.isCompleted)
//                                 Container(
//                                   padding: const EdgeInsets.all(4),
//                                   decoration: BoxDecoration(
//                                     gradient: LinearGradient(
//                                       colors: [
//                                         Colors.indigo.shade600,
//                                         Colors.indigo.shade700,
//                                       ],
//                                     ),
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
//                               color: Colors.indigo.shade400,
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
//                         gradient: LinearGradient(
//                           colors: [
//                             widget.topic.color.withOpacity(0.1),
//                             widget.topic.color.withOpacity(0.05),
//                           ],
//                         ),
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


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mongoverse/view/modules/intermediate_module_screens/creating_custom_indexes.dart';
import 'package:mongoverse/view/modules/intermediate_module_screens/indexing.dart';
import 'package:mongoverse/view/modules/intermediate_module_screens/query_operators.dart';
import 'package:mongoverse/view/modules/intermediate_module_screens/schema_validation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../services/api_services.dart';
import 'aggreagation_framework.dart';
import 'index_benefits.dart';
import '../../../utils/import_export.dart';

  // class IntermediateModuleView extends StatefulWidget {
  //   IntermediateModuleView({super.key});
  //
  //   @override
  //   State<IntermediateModuleView> createState() => _IntermediateModuleViewState();
  // }
  //
  // class _IntermediateModuleViewState extends State<IntermediateModuleView>
  //     with TickerProviderStateMixin {
  //   late AnimationController _animationController;
  //   late Animation<double> _fadeAnimation;
  //
  //   final ApiService apiService = ApiService();
  //   List<ModuleTopic> topicList = [];
  //   int selectedModuleId = 2; // Assuming module ID 2 for Intermediate
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
  //   //           subtitle: topic['topic_Description'] ?? 'No description',
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
  //
  //   Future<void> _fetchTopicsById(int id) async {
  //     try {
  //       final response = await apiService.getTopicsById(id);
  //       if (response is Map<String, dynamic> && response.containsKey('Data')) {
  //         final prefs = await SharedPreferences.getInstance();
  //         final savedCompleted = prefs.getStringList("completedTopics_2") ?? [];
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
  //   IconData _getIconForTopic(String? title) {
  //     switch (title) {
  //       case "Query Operators":
  //         return Icons.search;
  //       case "Indexing":
  //         return Icons.list_alt;
  //       case "Creating Custom Indexes":
  //         return Icons.build;
  //       case "Index Performance Benefits":
  //         return Icons.speed;
  //       case "Aggregation Framework":
  //         return Icons.filter_alt;
  //       case "Schema Validation":
  //         return Icons.rule;
  //       default:
  //         return Icons.help_outline;
  //     }
  //   }
  //
  //   Color _getColorForTopic(String? title) {
  //     switch (title) {
  //       case "Query Operators":
  //         return Colors.indigo.shade600;
  //       case "Indexing":
  //         return Colors.indigo.shade700;
  //       case "Creating Custom Indexes":
  //         return Colors.indigo.shade800;
  //       case "Index Performance Benefits":
  //         return Colors.indigo.shade900;
  //       case "Aggregation Framework":
  //         return Colors.indigo.shade600;
  //       case "Schema Validation":
  //         return Colors.indigo.shade700;
  //       default:
  //         return Colors.grey;
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
  //     final prefs = await SharedPreferences.getInstance();
  //     List<String> completedIndexes = topicList
  //         .asMap()
  //         .entries
  //         .where((entry) => entry.value.isCompleted)
  //         .map((entry) => entry.key.toString())
  //         .toList();
  //     await prefs.setStringList("completedTopics_2", completedIndexes);
  //
  //
  //     switch (topicList[index].title) {
  //       case "Query Operators":
  //         Get.to(() => QueryOperators(moduleId: 2,),
  //             transition: Transition.rightToLeft,
  //             duration: const Duration(milliseconds: 300));
  //         break;
  //       case "Indexing":
  //         Get.to(() => Indexing(moduleId: 2,),
  //             transition: Transition.rightToLeft,
  //             duration: const Duration(milliseconds: 300));
  //         break;
  //       case "Creating Custom Indexes":
  //         Get.to(() => CreatingCustomIndexes(moduleId: 2,),
  //             transition: Transition.rightToLeft,
  //             duration: const Duration(milliseconds: 300));
  //         break;
  //       case "Index Performance Benefits":
  //         Get.to(() => IndexBenefits(moduleId: 2,),
  //             transition: Transition.rightToLeft,
  //             duration: const Duration(milliseconds: 300));
  //         break;
  //       case "Aggregation Framework":
  //         Get.to(() => AggregationFramework(moduleId: 2,),
  //             transition: Transition.rightToLeft,
  //             duration: const Duration(milliseconds: 300));
  //         break;
  //       case "Schema Validation":
  //         Get.to(() => SchemaValidation(moduleId: 2,),
  //             transition: Transition.rightToLeft,
  //             duration: const Duration(milliseconds: 300));
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
  //       backgroundColor: Colors.indigo.shade50,
  //       appBar: AppBar(
  //         title: const Text(
  //           "MongoDB Intermediate",
  //           style: TextStyle(
  //             fontWeight: FontWeight.bold,
  //             fontSize: 24,
  //           ),
  //         ),
  //         backgroundColor: Colors.indigo.shade700,
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
  //                     "Take your MongoDB skills to the next level with advanced querying, indexing strategies, and performance optimization techniques.",
  //                   ),
  //                   actions: [
  //                     TextButton(
  //                       onPressed: () => Get.back(),
  //                       child: Text(
  //                         "Got it!",
  //                         style: TextStyle(color: Colors.indigo.shade700),
  //                       ),
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
  //                 gradient: LinearGradient(
  //                   colors: [
  //                     Colors.indigo.shade700,
  //                     Colors.indigo.shade600,
  //                   ],
  //                   begin: Alignment.topLeft,
  //                   end: Alignment.bottomRight,
  //                 ),
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
  //                     color: widget.topic.color.withOpacity(0.15),
  //                     blurRadius: 12,
  //                     offset: const Offset(0, 6),
  //                   ),
  //                 ],
  //                 border: Border.all(
  //                   color: widget.topic.isCompleted
  //                       ? Colors.indigo.shade600
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
  //                         gradient: LinearGradient(
  //                           colors: [
  //                             widget.topic.color.withOpacity(0.1),
  //                             widget.topic.color.withOpacity(0.05),
  //                           ],
  //                           begin: Alignment.topLeft,
  //                           end: Alignment.bottomRight,
  //                         ),
  //                         borderRadius: BorderRadius.circular(16),
  //                         border: Border.all(
  //                           color: widget.topic.color.withOpacity(0.2),
  //                           width: 1,
  //                         ),
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
  //                                   style: TextStyle(
  //                                     fontSize: 18,
  //                                     fontWeight: FontWeight.bold,
  //                                     color: Colors.indigo.shade800,
  //                                   ),
  //                                 ),
  //                               ),
  //                               if (widget.topic.isCompleted)
  //                                 Container(
  //                                   padding: const EdgeInsets.all(4),
  //                                   decoration: BoxDecoration(
  //                                     gradient: LinearGradient(
  //                                       colors: [
  //                                         Colors.indigo.shade600,
  //                                         Colors.indigo.shade700,
  //                                       ],
  //                                     ),
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
  //                               color: Colors.indigo.shade400,
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
  //                         gradient: LinearGradient(
  //                           colors: [
  //                             widget.topic.color.withOpacity(0.1),
  //                             widget.topic.color.withOpacity(0.05),
  //                           ],
  //                         ),
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

class IntermediateModuleView extends StatefulWidget {
  IntermediateModuleView({super.key});

  @override
  State<IntermediateModuleView> createState() => _IntermediateModuleViewState();
}

class _IntermediateModuleViewState extends State<IntermediateModuleView>
    with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _fadeAnimation;

  final ApiService apiService = ApiService();
  List<ModuleTopic> topicList = [];
  int selectedModuleId = 2; // Assuming module ID 2 for Intermediate

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
        final savedCompleted = prefs.getStringList("completedTopics_2") ?? [];

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
      case "Query Operators":
        return Icons.search;
      case "Indexing":
        return Icons.list_alt;
      case "Creating Custom Indexes":
        return Icons.build;
      case "Index Performance Benefits":
        return Icons.speed;
      case "Aggregation Framework":
        return Icons.filter_alt;
      case "Schema Validation":
        return Icons.rule;
      default:
        return Icons.help_outline;
    }
  }

  Color _getColorForTopic(String? title) {
    switch (title) {
      case "Query Operators":
        return Colors.indigo.shade600;
      case "Indexing":
        return Colors.indigo.shade700;
      case "Creating Custom Indexes":
        return Colors.indigo.shade800;
      case "Index Performance Benefits":
        return Colors.indigo.shade900;
      case "Aggregation Framework":
        return Colors.indigo.shade600;
      case "Schema Validation":
        return Colors.indigo.shade700;
      default:
        return Colors.grey;
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
    await prefs.setStringList("completedTopics_2", completedIndexes);

    switch (topicList[index].title) {
      case "Query Operators":
        Get.to(() => QueryOperators(moduleId: 2),
            transition: Transition.rightToLeft,
            duration: const Duration(milliseconds: 300));
        break;
      case "Indexing":
        Get.to(() => Indexing(moduleId: 2),
            transition: Transition.rightToLeft,
            duration: const Duration(milliseconds: 300));
        break;
      case "Creating Custom Indexes":
        Get.to(() => CreatingCustomIndexes(moduleId: 2),
            transition: Transition.rightToLeft,
            duration: const Duration(milliseconds: 300));
        break;
      case "Index Performance Benefits":
        Get.to(() => IndexBenefits(moduleId: 2),
            transition: Transition.rightToLeft,
            duration: const Duration(milliseconds: 300));
        break;
      case "Aggregation Framework":
        Get.to(() => AggregationFramework(moduleId: 2),
            transition: Transition.rightToLeft,
            duration: const Duration(milliseconds: 300));
        break;
      case "Schema Validation":
        Get.to(() => SchemaValidation(moduleId: 2),
            transition: Transition.rightToLeft,
            duration: const Duration(milliseconds: 300));
        break;
      default:
        Get.snackbar(
          "Error",
          "Unknown screen selected",
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.red.shade100,
          colorText: Colors.red.shade800,
          icon: const Icon(Icons.error_outline),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo.shade50,
      appBar: AppBar(
        title: const Text(
          "MongoDB Intermediate",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        backgroundColor: Colors.indigo.shade700,
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
                    "Take your MongoDB skills to the next level with advanced querying, indexing strategies, and performance optimization techniques.",
                  ),
                  actions: [
                    TextButton(
                      onPressed: () => Get.back(),
                      child: Text(
                        "Got it!",
                        style: TextStyle(color: Colors.indigo.shade700),
                      ),
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
          valueColor: AlwaysStoppedAnimation<Color>(Colors.indigo.shade700),
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
                gradient: LinearGradient(
                  colors: [
                    Colors.indigo.shade700,
                    Colors.indigo.shade600,
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
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
                    color: widget.topic.color.withOpacity(0.15),
                    blurRadius: 12,
                    offset: const Offset(0, 6),
                  ),
                ],
                border: Border.all(
                  color: widget.topic.isCompleted
                      ? Colors.indigo.shade600
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
                        gradient: LinearGradient(
                          colors: [
                            widget.topic.color.withOpacity(0.1),
                            widget.topic.color.withOpacity(0.05),
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(
                          color: widget.topic.color.withOpacity(0.2),
                          width: 1,
                        ),
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
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.indigo.shade800,
                                  ),
                                ),
                              ),
                              if (widget.topic.isCompleted)
                                Container(
                                  padding: const EdgeInsets.all(4),
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [
                                        Colors.indigo.shade600,
                                        Colors.indigo.shade700,
                                      ],
                                    ),
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
                              color: Colors.indigo.shade400,
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
                        gradient: LinearGradient(
                          colors: [
                            widget.topic.color.withOpacity(0.1),
                            widget.topic.color.withOpacity(0.05),
                          ],
                        ),
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