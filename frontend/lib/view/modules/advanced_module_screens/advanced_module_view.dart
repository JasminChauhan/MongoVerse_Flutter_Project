// import 'package:mongoverse/view/modules/advanced_module_screens/acid_page.dart';
// import 'package:mongoverse/view/modules/advanced_module_screens/auth_page.dart';
// import 'package:mongoverse/view/modules/advanced_module_screens/elections_failover_page.dart';
// import 'package:mongoverse/view/modules/advanced_module_screens/horizontal_scaling_page.dart';
// import 'package:mongoverse/view/modules/advanced_module_screens/index_management_page.dart';
// import 'package:mongoverse/view/modules/advanced_module_screens/performance_tuning_page.dart';
// import 'package:mongoverse/view/modules/advanced_module_screens/query_optimiztion_page.dart';
// import 'package:mongoverse/view/modules/advanced_module_screens/replica_sets.dart';
// import 'package:mongoverse/view/modules/advanced_module_screens/replication.dart';
// import 'package:mongoverse/view/modules/advanced_module_screens/sharding_page.dart';
//
// import '../../../utils/import_export.dart';
// import 'backup_security_page.dart';
// import 'transaction_page.dart';
//
// class AdvancedModuleView extends StatefulWidget {
//   AdvancedModuleView({super.key});
//
//   @override
//   State<AdvancedModuleView> createState() => _AdvancedModuleViewState();
// }
//
// class _AdvancedModuleViewState extends State<AdvancedModuleView>
//     with TickerProviderStateMixin {
//   late AnimationController _animationController;
//   late Animation<double> _fadeAnimation;
//
//   final List<ModuleTopic> topicList = [
//     ModuleTopic(
//       title: "What Is Replication?",
//       subtitle: "Understand MongoDB data replication concepts",
//       icon: Icons.copy_all,
//       color: Colors.pink.shade400,
//       isCompleted: false,
//     ),
//     ModuleTopic(
//       title: "Replica Sets",
//       subtitle: "Configure and manage MongoDB replica sets",
//       icon: Icons.storage,
//       color: Colors.pink.shade600,
//       isCompleted: false,
//     ),
//     ModuleTopic(
//       title: "Elections & Failover",
//       subtitle: "Learn automatic failover and primary elections",
//       icon: Icons.how_to_vote,
//       color: Colors.red.shade400,
//       isCompleted: false,
//     ),
//     ModuleTopic(
//       title: "Sharding",
//       subtitle: "Scale MongoDB horizontally with sharding",
//       icon: Icons.scatter_plot,
//       color: Colors.red.shade600,
//       isCompleted: false,
//     ),
//     ModuleTopic(
//       title: "Horizontal Scaling",
//       subtitle: "Distribute data across multiple servers",
//       icon: Icons.horizontal_distribute,
//       color: Colors.deepOrange.shade400,
//       isCompleted: false,
//     ),
//     ModuleTopic(
//       title: "Transactions",
//       subtitle: "Ensure multi-document data consistency",
//       icon: Icons.swap_horiz,
//       color: Colors.deepOrange.shade600,
//       isCompleted: false,
//     ),
//     ModuleTopic(
//       title: "ACID In MongoDB",
//       subtitle: "Explore Atomicity, Consistency, Isolation, Durability",
//       icon: Icons.checklist,
//       color: Colors.deepOrange.shade700,
//       isCompleted: false,
//     ),
//     ModuleTopic(
//       title: "Performance Tuning",
//       subtitle: "Optimize MongoDB for speed and efficiency",
//       icon: Icons.tune,
//       color: Colors.deepOrange.shade800,
//       isCompleted: false,
//     ),
//     ModuleTopic(
//       title: "Query Optimization",
//       subtitle: "Improve query execution and response times",
//       icon: Icons.query_stats,
//       color: Colors.deepOrange.shade900,
//       isCompleted: false,
//     ),
//     ModuleTopic(
//       title: "Index Management",
//       subtitle: "Create and maintain indexes effectively",
//       icon: Icons.manage_search,
//       color: Colors.brown.shade400,
//       isCompleted: false,
//     ),
//     ModuleTopic(
//       title: "Backup & Security",
//       subtitle: "Protect data with backups and security features",
//       icon: Icons.security,
//       color: Colors.brown.shade600,
//       isCompleted: false,
//     ),
//     ModuleTopic(
//       title: "Authentication & Authorization",
//       subtitle: "Secure access using user roles and permissions",
//       icon: Icons.lock,
//       color: Colors.brown.shade800,
//       isCompleted: false,
//     ),
//   ];
//
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
//         Get.to(() => Replication(),
//             transition: Transition.rightToLeft,
//             duration: const Duration(milliseconds: 300));
//         break;
//       case 1:
//         Get.to(() => ReplicaSets(),
//             transition: Transition.rightToLeft,
//             duration: const Duration(milliseconds: 300));
//         break;
//       case 2:
//         Get.to(() => ElectionsFailoverPage(),
//             transition: Transition.rightToLeft,
//             duration: const Duration(milliseconds: 300));
//         break;
//       case 3:
//         Get.to(() => ShardingPage(),
//             transition: Transition.rightToLeft,
//             duration: const Duration(milliseconds: 300));
//         break;
//       case 4:
//         Get.to(() => HorizontalScalingPage(),
//             transition: Transition.rightToLeft,
//             duration: const Duration(milliseconds: 300));
//         break;
//       case 5:
//         Get.to(() => TransactionsPage(),
//             transition: Transition.rightToLeft,
//             duration: const Duration(milliseconds: 300));
//         break;
//       case 6:
//         Get.to(() => AcidPage(),
//             transition: Transition.rightToLeft,
//             duration: const Duration(milliseconds: 300));
//         break;
//       case 7:
//         Get.to(() => PerformanceTuningPage(),
//             transition: Transition.rightToLeft,
//             duration: const Duration(milliseconds: 300));
//         break;
//       case 8:
//         Get.to(() => QueryOptimizationPage(),
//             transition: Transition.rightToLeft,
//             duration: const Duration(milliseconds: 300));
//         break;
//       case 9:
//         Get.to(() => IndexManagementPage(),
//             transition: Transition.rightToLeft,
//             duration: const Duration(milliseconds: 300));
//         break;
//       case 10:
//         Get.to(() => BackupSecurityPage(),
//             transition: Transition.rightToLeft,
//             duration: const Duration(milliseconds: 300));
//         break;
//       case 11:
//         Get.to(() => AuthPage(),
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
//       backgroundColor: Colors.pink.shade50,
//       appBar: AppBar(
//         title: const Text(
//           "MongoDB Advanced",
//           style: TextStyle(
//             fontWeight: FontWeight.bold,
//             fontSize: 24,
//           ),
//         ),
//         backgroundColor: Colors.red.shade600,
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
//                     "Master advanced MongoDB concepts including replication, high availability, and horizontal scaling for enterprise-grade applications.",
//                   ),
//                   actions: [
//                     TextButton(
//                       onPressed: () => Get.back(),
//                       child: Text(
//                         "Got it!",
//                         style: TextStyle(color: Colors.red.shade600),
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
//                     Colors.red.shade600,
//                     Colors.pink.shade500,
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
//                     color: widget.topic.color.withOpacity(0.2),
//                     blurRadius: 15,
//                     offset: const Offset(0, 8),
//                   ),
//                 ],
//                 border: Border.all(
//                   color: widget.topic.isCompleted
//                       ? Colors.red.shade400
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
//                             widget.topic.color.withOpacity(0.15),
//                             widget.topic.color.withOpacity(0.08),
//                           ],
//                           begin: Alignment.topLeft,
//                           end: Alignment.bottomRight,
//                         ),
//                         borderRadius: BorderRadius.circular(16),
//                         border: Border.all(
//                           color: widget.topic.color.withOpacity(0.3),
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
//                                     color: Colors.red.shade700,
//                                   ),
//                                 ),
//                               ),
//                               if (widget.topic.isCompleted)
//                                 Container(
//                                   padding: const EdgeInsets.all(4),
//                                   decoration: BoxDecoration(
//                                     gradient: LinearGradient(
//                                       colors: [
//                                         Colors.red.shade400,
//                                         Colors.pink.shade500,
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
//                               color: Colors.pink.shade400,
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
//                             widget.topic.color.withOpacity(0.15),
//                             widget.topic.color.withOpacity(0.08),
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
import 'package:mongoverse/view/modules/advanced_module_screens/acid_page.dart';
import 'package:mongoverse/view/modules/advanced_module_screens/auth_page.dart';
import 'package:mongoverse/view/modules/advanced_module_screens/elections_failover_page.dart';
import 'package:mongoverse/view/modules/advanced_module_screens/horizontal_scaling_page.dart';
import 'package:mongoverse/view/modules/advanced_module_screens/index_management_page.dart';
import 'package:mongoverse/view/modules/advanced_module_screens/performance_tuning_page.dart';
import 'package:mongoverse/view/modules/advanced_module_screens/query_optimiztion_page.dart';
import 'package:mongoverse/view/modules/advanced_module_screens/replica_sets.dart';
import 'package:mongoverse/view/modules/advanced_module_screens/replication.dart';
import 'package:mongoverse/view/modules/advanced_module_screens/sharding_page.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../services/api_services.dart';
import 'backup_security_page.dart';
import 'transaction_page.dart';
import '../../../utils/import_export.dart';

// class AdvancedModuleView extends StatefulWidget {
//   AdvancedModuleView({super.key});
//
//   @override
//   State<AdvancedModuleView> createState() => _AdvancedModuleViewState();
// }
//
// class _AdvancedModuleViewState extends State<AdvancedModuleView>
//     with TickerProviderStateMixin {
//   late AnimationController _animationController;
//   late Animation<double> _fadeAnimation;
//
//   final ApiService apiService = ApiService();
//   List<ModuleTopic> topicList = [];
//   int selectedModuleId = 3; // Assuming module ID 3 for Advanced
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
//   Future<void> _fetchTopicsById(int id) async {
//     try {
//       final response = await apiService.getTopicsById(id);
//       if (response is Map<String, dynamic> && response.containsKey('Data')) {
//         final prefs = await SharedPreferences.getInstance();
//         final savedCompleted = prefs.getStringList("completedTopics_3") ?? [];
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
//       case "What Is Replication?":
//         return Icons.copy_all;
//       case "Replica Sets":
//         return Icons.storage;
//       case "Elections & Failover":
//         return Icons.how_to_vote;
//       case "Sharding":
//         return Icons.scatter_plot;
//       case "Horizontal Scaling":
//         return Icons.horizontal_distribute;
//       case "Transactions":
//         return Icons.swap_horiz;
//       case "ACID In MongoDB":
//         return Icons.checklist;
//       case "Performance Tuning":
//         return Icons.tune;
//       case "Query Optimization":
//         return Icons.query_stats;
//       case "Index Management":
//         return Icons.manage_search;
//       case "Backup & Security":
//         return Icons.security;
//       case "Authentication & Authorization":
//         return Icons.lock;
//       default:
//         return Icons.help_outline;
//     }
//   }
//
//   Color _getColorForTopic(String? title) {
//     switch (title) {
//       case "What Is Replication?":
//         return Colors.pink.shade400;
//       case "Replica Sets":
//         return Colors.pink.shade600;
//       case "Elections & Failover":
//         return Colors.red.shade400;
//       case "Sharding":
//         return Colors.red.shade600;
//       case "Horizontal Scaling":
//         return Colors.deepOrange.shade400;
//       case "Transactions":
//         return Colors.deepOrange.shade600;
//       case "ACID In MongoDB":
//         return Colors.deepOrange.shade700;
//       case "Performance Tuning":
//         return Colors.deepOrange.shade800;
//       case "Query Optimization":
//         return Colors.deepOrange.shade900;
//       case "Index Management":
//         return Colors.deepOrange.shade900;
//       case "Backup & Security":
//         return Colors.deepOrange.shade900;
//       case "Authentication & Authorization":
//         return Colors.deepOrange.shade900;
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
//     await prefs.setStringList("completedTopics_3", completedIndexes);
//
//
//     switch (topicList[index].title) {
//       case "What Is Replication?":
//         Get.to(() => Replication(moduleId: 3,),
//             transition: Transition.rightToLeft,
//             duration: const Duration(milliseconds: 300));
//         break;
//       case "Replica Sets":
//         Get.to(() => ReplicaSets(moduleId: 3,),
//             transition: Transition.rightToLeft,
//             duration: const Duration(milliseconds: 300));
//         break;
//       case "Elections & Failover":
//         Get.to(() => ElectionsFailoverPage(moduleId: 3,),
//             transition: Transition.rightToLeft,
//             duration: const Duration(milliseconds: 300));
//         break;
//       case "Sharding":
//         Get.to(() => ShardingPage(moduleId: 3,),
//             transition: Transition.rightToLeft,
//             duration: const Duration(milliseconds: 300));
//         break;
//       case "Horizontal Scaling":
//         Get.to(() => HorizontalScalingPage(moduleId: 3,),
//             transition: Transition.rightToLeft,
//             duration: const Duration(milliseconds: 300));
//         break;
//       case "Transactions":
//         Get.to(() => TransactionsPage(moduleId: 3,),
//             transition: Transition.rightToLeft,
//             duration: const Duration(milliseconds: 300));
//         break;
//       case "ACID In MongoDB":
//         Get.to(() => AcidPage(moduleId: 3,),
//             transition: Transition.rightToLeft,
//             duration: const Duration(milliseconds: 300));
//         break;
//       case "Performance Tuning":
//         Get.to(() => PerformanceTuningPage(moduleId: 3,),
//             transition: Transition.rightToLeft,
//             duration: const Duration(milliseconds: 300));
//         break;
//       case "Query Optimization":
//         Get.to(() => QueryOptimizationPage(moduleId: 3,),
//             transition: Transition.rightToLeft,
//             duration: const Duration(milliseconds: 300));
//         break;
//       case "Index Management":
//         Get.to(() => IndexManagementPage(moduleId: 3,),
//             transition: Transition.rightToLeft,
//             duration: const Duration(milliseconds: 300));
//         break;
//       case "Backup & Security":
//         Get.to(() => BackupSecurityPage(moduleId: 3,),
//             transition: Transition.rightToLeft,
//             duration: const Duration(milliseconds: 300));
//         break;
//       case "Authentication & Authorization":
//         Get.to(() => AuthPage(moduleId: 3,),
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
//       backgroundColor: Colors.pink.shade50,
//       appBar: AppBar(
//         title: const Text(
//           "MongoDB Advanced",
//           style: TextStyle(
//             fontWeight: FontWeight.bold,
//             fontSize: 24,
//           ),
//         ),
//         backgroundColor: Colors.red.shade600,
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
//                     "Master advanced MongoDB concepts including replication, high availability, and horizontal scaling for enterprise-grade applications.",
//                   ),
//                   actions: [
//                     TextButton(
//                       onPressed: () => Get.back(),
//                       child: Text(
//                         "Got it!",
//                         style: TextStyle(color: Colors.red.shade600),
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
//                     Colors.red.shade600,
//                     Colors.pink.shade500,
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
//                     color: widget.topic.color.withOpacity(0.2),
//                     blurRadius: 15,
//                     offset: const Offset(0, 8),
//                   ),
//                 ],
//                 border: Border.all(
//                   color: widget.topic.isCompleted
//                       ? Colors.red.shade400
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
//                             widget.topic.color.withOpacity(0.15),
//                             widget.topic.color.withOpacity(0.08),
//                           ],
//                           begin: Alignment.topLeft,
//                           end: Alignment.bottomRight,
//                         ),
//                         borderRadius: BorderRadius.circular(16),
//                         border: Border.all(
//                           color: widget.topic.color.withOpacity(0.3),
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
//                                     color: Colors.red.shade700,
//                                   ),
//                                 ),
//                               ),
//                               if (widget.topic.isCompleted)
//                                 Container(
//                                   padding: const EdgeInsets.all(4),
//                                   decoration: BoxDecoration(
//                                     gradient: LinearGradient(
//                                       colors: [
//                                         Colors.red.shade400,
//                                         Colors.pink.shade500,
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
//                               color: Colors.pink.shade400,
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
//                             widget.topic.color.withOpacity(0.15),
//                             widget.topic.color.withOpacity(0.08),
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


class AdvancedModuleView extends StatefulWidget {
  AdvancedModuleView({super.key});

  @override
  State<AdvancedModuleView> createState() => _AdvancedModuleViewState();
}

class _AdvancedModuleViewState extends State<AdvancedModuleView>
    with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _fadeAnimation;

  final ApiService apiService = ApiService();
  List<ModuleTopic> topicList = [];
  int selectedModuleId = 3; // Assuming module ID 3 for Advanced

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
        final savedCompleted = prefs.getStringList("completedTopics_3") ?? [];

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
      case "What Is Replication?":
        return Icons.copy_all;
      case "Replica Sets":
        return Icons.storage;
      case "Elections & Failover":
        return Icons.how_to_vote;
      case "Sharding":
        return Icons.scatter_plot;
      case "Horizontal Scaling":
        return Icons.horizontal_distribute;
      case "Transactions":
        return Icons.swap_horiz;
      case "ACID In MongoDB":
        return Icons.checklist;
      case "Performance Tuning":
        return Icons.tune;
      case "Query Optimization":
        return Icons.query_stats;
      case "Index Management":
        return Icons.manage_search;
      case "Backup & Security":
        return Icons.security;
      case "Authentication & Authorization":
        return Icons.lock;
      default:
        return Icons.help_outline;
    }
  }

  Color _getColorForTopic(String? title) {
    switch (title) {
      case "What Is Replication?":
        return Colors.pink.shade400;
      case "Replica Sets":
        return Colors.pink.shade600;
      case "Elections & Failover":
        return Colors.red.shade400;
      case "Sharding":
        return Colors.red.shade600;
      case "Horizontal Scaling":
        return Colors.deepOrange.shade400;
      case "Transactions":
        return Colors.deepOrange.shade600;
      case "ACID In MongoDB":
        return Colors.deepOrange.shade700;
      case "Performance Tuning":
        return Colors.deepOrange.shade800;
      case "Query Optimization":
        return Colors.deepOrange.shade900;
      case "Index Management":
        return Colors.deepOrange.shade900;
      case "Backup & Security":
        return Colors.deepOrange.shade900;
      case "Authentication & Authorization":
        return Colors.deepOrange.shade900;
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
    await prefs.setStringList("completedTopics_3", completedIndexes);

    switch (topicList[index].title) {
      case "What Is Replication?":
        Get.to(() => Replication(moduleId: 3),
            transition: Transition.rightToLeft,
            duration: const Duration(milliseconds: 300));
        break;
      case "Replica Sets":
        Get.to(() => ReplicaSets(moduleId: 3),
            transition: Transition.rightToLeft,
            duration: const Duration(milliseconds: 300));
        break;
      case "Elections & Failover":
        Get.to(() => ElectionsFailoverPage(moduleId: 3),
            transition: Transition.rightToLeft,
            duration: const Duration(milliseconds: 300));
        break;
      case "Sharding":
        Get.to(() => ShardingPage(moduleId: 3),
            transition: Transition.rightToLeft,
            duration: const Duration(milliseconds: 300));
        break;
      case "Horizontal Scaling":
        Get.to(() => HorizontalScalingPage(moduleId: 3),
            transition: Transition.rightToLeft,
            duration: const Duration(milliseconds: 300));
        break;
      case "Transactions":
        Get.to(() => TransactionsPage(moduleId: 3),
            transition: Transition.rightToLeft,
            duration: const Duration(milliseconds: 300));
        break;
      case "ACID In MongoDB":
        Get.to(() => AcidPage(moduleId: 3),
            transition: Transition.rightToLeft,
            duration: const Duration(milliseconds: 300));
        break;
      case "Performance Tuning":
        Get.to(() => PerformanceTuningPage(moduleId: 3),
            transition: Transition.rightToLeft,
            duration: const Duration(milliseconds: 300));
        break;
      case "Query Optimization":
        Get.to(() => QueryOptimizationPage(moduleId: 3),
            transition: Transition.rightToLeft,
            duration: const Duration(milliseconds: 300));
        break;
      case "Index Management":
        Get.to(() => IndexManagementPage(moduleId: 3),
            transition: Transition.rightToLeft,
            duration: const Duration(milliseconds: 300));
        break;
      case "Backup & Security":
        Get.to(() => BackupSecurityPage(moduleId: 3),
            transition: Transition.rightToLeft,
            duration: const Duration(milliseconds: 300));
        break;
      case "Authentication & Authorization":
        Get.to(() => AuthPage(moduleId: 3),
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
      backgroundColor: Colors.pink.shade50,
      appBar: AppBar(
        title: const Text(
          "MongoDB Advanced",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        backgroundColor: Colors.red.shade600,
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
                    "Master advanced MongoDB concepts including replication, high availability, and horizontal scaling for enterprise-grade applications.",
                  ),
                  actions: [
                    TextButton(
                      onPressed: () => Get.back(),
                      child: Text(
                        "Got it!",
                        style: TextStyle(color: Colors.red.shade600),
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
          valueColor: AlwaysStoppedAnimation<Color>(Colors.red.shade600),
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
                    Colors.red.shade600,
                    Colors.pink.shade500,
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
                    color: widget.topic.color.withOpacity(0.2),
                    blurRadius: 15,
                    offset: const Offset(0, 8),
                  ),
                ],
                border: Border.all(
                  color: widget.topic.isCompleted
                      ? Colors.red.shade400
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
                            widget.topic.color.withOpacity(0.15),
                            widget.topic.color.withOpacity(0.08),
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(
                          color: widget.topic.color.withOpacity(0.3),
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
                                    color: Colors.red.shade700,
                                  ),
                                ),
                              ),
                              if (widget.topic.isCompleted)
                                Container(
                                  padding: const EdgeInsets.all(4),
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [
                                        Colors.red.shade400,
                                        Colors.pink.shade500,
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
                              color: Colors.pink.shade400,
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
                            widget.topic.color.withOpacity(0.15),
                            widget.topic.color.withOpacity(0.08),
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