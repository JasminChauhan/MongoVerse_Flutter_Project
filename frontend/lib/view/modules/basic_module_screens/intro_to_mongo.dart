// import 'package:flutter/material.dart';
// import 'package:flutter_html/flutter_html.dart';
// import 'package:google_fonts/google_fonts.dart';
//
// class IntroToMongo extends StatelessWidget {
//   IntroToMongo({super.key});
//
//   final String data = '''
//     <h1>Introduction to NoSQL &amp; MongoDB</h1>
//
//     <h2>What is NoSQL?</h2>
//     <p>NoSQL databases are <strong>non-relational</strong> databases that allow storing and retrieving data in formats other than traditional tables.</p>
//     <p>They provide high performance, scalability, and flexibility for modern applications.</p>
//
//     <h2>What is MongoDB?</h2>
//     <p><strong>MongoDB</strong> is a widely-used NoSQL database that stores data in <code>JSON-like</code> documents called <strong>BSON</strong> (Binary JSON).</p>
//
//     <h2>Why Use MongoDB?</h2>
//     <ul>
//       <li><strong>Document-Oriented:</strong> Stores data as JSON-like flexible documents.</li>
//       <li><strong>Schema-less:</strong> No fixed schema required beforehand.</li>
//       <li><strong>Scalability:</strong> MongoDB supports horizontal scaling using sharding.</li>
//       <li><strong>Rich Query Language:</strong> Powerful filtering, sorting, and indexing features.</li>
//       <li><strong>Real-Time Capabilities:</strong> Ideal for real-time analytics and responsiveness.</li>
//     </ul>
//
//     <h2>Use Cases of MongoDB</h2>
//     <ul>
//       <li>Real-time applications like <strong>chat apps</strong> and <strong>social networks</strong></li>
//       <li>IoT applications handling <strong>sensor data streams</strong></li>
//       <li><strong>Content Management Systems</strong> with flexible structures</li>
//       <li>Mobile and web apps requiring rapid data iteration</li>
//     </ul>
//
//     <p style="color: gray; font-style: italic;">MongoDB is trusted by developers for its performance, flexibility, and developer-friendly design.</p>
//   ''';
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           "Intro to MongoDB",
//           style: GoogleFonts.poppins(
//             fontSize: 22,
//             fontWeight: FontWeight.w600,
//             color: Colors.white,
//           ),
//         ),
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//         flexibleSpace: Container(
//           decoration: const BoxDecoration(
//             gradient: LinearGradient(
//               colors: [Color(0xFF6B46C1), Color(0xFF9F7AEA)],
//               begin: Alignment.topLeft,
//               end: Alignment.bottomRight,
//             ),
//           ),
//         ),
//         centerTitle: true,
//         leading: IconButton(
//           icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
//           onPressed: () => Navigator.pop(context),
//         ),
//       ),
//       body: Container(
//         decoration: const BoxDecoration(
//           gradient: LinearGradient(
//             colors: [Color(0xFFF3E7FF), Color(0xFFE6F0FA)],
//             begin: Alignment.topCenter,
//             end: Alignment.bottomCenter,
//           ),
//         ),
//         child: SingleChildScrollView(
//           padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
//           child: TweenAnimationBuilder(
//             tween: Tween<double>(begin: 0, end: 1),
//             duration: const Duration(milliseconds: 600),
//             builder: (context, opacity, child) {
//               return Opacity(
//                 opacity: opacity,
//                 child: child,
//               );
//             },
//             // child: Card(
//             //   elevation: 6,
//             //   shape: RoundedRectangleBorder(
//             //     borderRadius: BorderRadius.circular(20),
//             //     side: BorderSide(color: Colors.grey.shade200, width: 1),
//             //   ),
//               child: Container(
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(20),
//                   gradient: const LinearGradient(
//                     colors: [Color(0xFFFFFFFF), Color(0xFFF9F5FF)],
//                     begin: Alignment.topLeft,
//                     end: Alignment.bottomRight,
//                   ),
//                 ),
//                 child: Padding(
//                   padding: const EdgeInsets.all(10),
//                   child: Html(
//                     data: data,
//                     style: {
//                       "h1": Style(
//                         fontSize: FontSize(28),
//                         fontWeight: FontWeight.bold,
//                         color: const Color(0xFF4B39EF),
//                         fontFamily: GoogleFonts.poppins().fontFamily,
//                         margin: Margins.only(bottom: 16),
//                       ),
//                       "h2": Style(
//                         fontSize: FontSize(22),
//                         fontWeight: FontWeight.w600,
//                         color: const Color(0xFF6B46C1),
//                         fontFamily: GoogleFonts.poppins().fontFamily,
//                         margin: Margins.only(top: 20, bottom: 12),
//                       ),
//                       "p": Style(
//                         fontSize: FontSize(16),
//                         color: Colors.grey.shade800,
//                         lineHeight: const LineHeight(1.5),
//                         fontFamily: GoogleFonts.openSans().fontFamily,
//                         margin: Margins.only(bottom: 12),
//                       ),
//                       "ul": Style(
//                         padding: HtmlPaddings.only(left: 20, bottom: 12),
//                       ),
//                       "li": Style(
//                         fontSize: FontSize(16),
//                         color: Colors.grey.shade800,
//                         fontFamily: GoogleFonts.openSans().fontFamily,
//                         margin: Margins.only(bottom: 8),
//                       ),
//                       "code": Style(
//                         backgroundColor: const Color(0xFFECEFF1),
//                         padding: HtmlPaddings.symmetric(horizontal: 8, vertical: 4),
//                         // borderRadius: BorderRadius.circular(6),
//                         fontFamily: 'RobotoMono',
//                         fontSize: FontSize(14),
//                         color: const Color(0xFF2F855A),
//                       ),
//                     },
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ),
//
//     );
//   }
// }
//
//
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../../../services/api_services.dart';

class IntroToMongo extends StatefulWidget {
  final int moduleId;

  const IntroToMongo({super.key, required this.moduleId});

  @override
  _IntroToMongoState createState() => _IntroToMongoState();
}

class _IntroToMongoState extends State<IntroToMongo> {
  late Future<Map<String, dynamic>> _topicFuture;
  final Map<String, dynamic> topicData = {};

  @override
  void initState() {
    super.initState();
    print("Initializing IntroToMongo with topicId: ${widget.moduleId}");
    _topicFuture = ApiService().getTopicsById(widget.moduleId);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Intro to MongoDB",
          style: GoogleFonts.poppins(
            fontSize: 22,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF6B46C1), Color(0xFF9F7AEA)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFF3E7FF), Color(0xFFE6F0FA)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: FutureBuilder<Map<String, dynamic>>(
          future: _topicFuture,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              print("FutureBuilder: Waiting for data");
              return const Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              print("FutureBuilder Error: ${snapshot.error}");
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Error: ${snapshot.error}"),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          print("Retrying API call for topicId: ${widget.moduleId}");
                          _topicFuture = ApiService().getTopicsById(widget.moduleId);
                        });
                      },
                      child: const Text("Retry"),
                    ),
                  ],
                ),
              );
            } else if (!snapshot.hasData || snapshot.data == null) {
              print("FutureBuilder: No data available");
              return const Center(child: Text("No data available"));
            }

            // Debug: Print the full API response
            print("API Response: ${jsonEncode(snapshot.data)}");

            // Extract topic_Content with null safety
            // final topicContent = topicData!['topic_Content'];


            //region DHAIRYA'S CHANGED CODE
            final data = snapshot.data!['Data'] as List<dynamic>?;
            final topicContent = data != null && data.isNotEmpty ? data[0]['topic_Content'] : null;
            print("topicContent ::::::::::: $topicContent");
            //endregion

            String htmlData;
            if (topicContent != null && topicContent is String && topicContent.isNotEmpty) {
              // Remove surrounding single quotes and clean up
              htmlData = topicContent.replaceAll(RegExp(r"^'|'$"), '').replaceAll(r'\r\n', '\n').trim();
              print("Extracted HTML Data: $htmlData");
            } else {
              print("Error: topic_Content is null, empty, or not a string: $topicContent");
              htmlData = "<p>No content available</p>";
              // Debug: Print all keys in snapshot.data to identify available fields
              print("Available keys in response: ${snapshot.data!.keys.toList()}");
            }

            return SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
              child: TweenAnimationBuilder(
                tween: Tween<double>(begin: 0, end: 1),
                duration: const Duration(milliseconds: 600),
                builder: (context, opacity, child) {
                  return Opacity(
                    opacity: opacity,
                    child: child,
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: const LinearGradient(
                      colors: [Color(0xFFFFFFFF), Color(0xFFF9F5FF)],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Html(
                      data: htmlData,
                      style: {
                        "h1": Style(
                          fontSize: FontSize(28),
                          fontWeight: FontWeight.bold,
                          color: const Color(0xFF4B39EF),
                          fontFamily: GoogleFonts.poppins().fontFamily,
                          margin: Margins.only(bottom: 16),
                        ),
                        "h2": Style(
                          fontSize: FontSize(22),
                          fontWeight: FontWeight.w600,
                          color: const Color(0xFF6B46C1),
                          fontFamily: GoogleFonts.poppins().fontFamily,
                          margin: Margins.only(top: 20, bottom: 12),
                        ),
                        "p": Style(
                          fontSize: FontSize(16),
                          color: Colors.grey.shade800,
                          lineHeight: const LineHeight(1.5),
                          fontFamily: GoogleFonts.openSans().fontFamily,
                          margin: Margins.only(bottom: 12),
                        ),
                        "ul": Style(
                          padding: HtmlPaddings.only(left: 20, bottom: 12),
                        ),
                        "li": Style(
                          fontSize: FontSize(16),
                          color: Colors.grey.shade800,
                          fontFamily: GoogleFonts.openSans().fontFamily,
                          margin: Margins.only(bottom: 8),
                        ),
                        "code": Style(
                          backgroundColor: const Color(0xFFECEFF1),
                          padding: HtmlPaddings.symmetric(horizontal: 8, vertical: 4),
                          fontFamily: 'RobotoMono',
                          fontSize: FontSize(14),
                          color: const Color(0xFF2F855A),
                        ),
                      },
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}