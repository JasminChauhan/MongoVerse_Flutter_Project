// import 'package:flutter/material.dart';
// import 'package:flutter_html/flutter_html.dart';
// import 'package:google_fonts/google_fonts.dart';
//
// class FeaturesOfMongoDB extends StatelessWidget {
//   FeaturesOfMongoDB({super.key});
//
//   final String data = '''
//   <h1>🔑 MongoDB Features</h1>
//
//   <p><strong>MongoDB</strong> is a powerful NoSQL database that stores data in flexible, JSON-like BSON documents. It's built for speed, scalability, and modern apps.</p>
//
//   <h2>📌 Core Features</h2>
//   <ul>
//     <li><strong>Document-Based</strong>: Stores data as BSON documents, flexible and schema-free.</li>
//     <li><strong>Scalability</strong>: Scales out with sharding for big data and high traffic.</li>
//     <li><strong>Replication</strong>: Replica sets ensure high availability and failover.</li>
//     <li><strong>Rich Queries</strong>: Supports complex queries, geospatial, and text search.</li>
//     <li><strong>Indexing</strong>: Fast searches with single, compound, and geospatial indexes.</li>
//     <li><strong>Transactions</strong>: Multi-document ACID transactions for reliability.</li>
//     <li><strong>Aggregation</strong>: Pipeline for data processing and analytics.</li>
//   </ul>
//
//   <h2>🧩 Cool Extras</h2>
//   <ul>
//     <li><strong>GridFS</strong>: Stores large files like images and videos.</li>
//     <li><strong>Change Streams</strong>: Real-time data updates for reactive apps.</li>
//     <li><strong>Security</strong>: Authentication, encryption, and role-based access.</li>
//     <li><strong>Time-Series</strong>: Optimized for IoT and financial data.</li>
//     <li><strong>Cloud Support</strong>: MongoDB Atlas for managed, auto-scaling databases.</li>
//   </ul>
//
//   <h2>📄 Example Document</h2>
//   <pre><code>{
//   "_id": ObjectId("64d9f5b6a3c1124f9c0aafed"),
//   "name": "Jasmin",
//   "age": 22,
//   "skills": ["Flutter", "MongoDB"],
//   "joined": ISODate("2023-01-15")
// }
//
// // Query: Find users with MongoDB skill
// db.users.find({ skills: "MongoDB" });
// </code></pre>
//
//   <h2>⚙️ Why MongoDB?</h2>
//   <ul>
//     <li>Fast and efficient for large-scale data.</li>
//     <li>Flexible for changing app needs.</li>
//     <li>Great for real-time, mobile, and IoT apps.</li>
//   </ul>
//
//   <blockquote>
//     <em>MongoDB: Flexible, fast, and developer-friendly for modern data needs.</em>
//   </blockquote>
//
//   <h2>🧠 Quick Summary</h2>
//   <ul>
//     <li>NoSQL with flexible BSON documents.</li>
//     <li>Scales easily, supports rich queries.</li>
//     <li>Perfect for dynamic, high-performance apps.</li>
//   </ul>
//   ''';
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           "MongoDB Features",
//           style: GoogleFonts.poppins(
//             fontSize: 20,
//             fontWeight: FontWeight.w600,
//             color: Colors.white,
//           ),
//         ),
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//         flexibleSpace: Container(
//           decoration: const BoxDecoration(
//             gradient: LinearGradient(
//               colors: [Color(0xFF004D40), Color(0xFF26A69A)],
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
//             colors: [Color(0xFFE0F2F1), Color(0xFFF1F8E9)],
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
//               return Opacity(opacity: opacity, child: child);
//             },
//             child: Card(
//               elevation: 6,
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(20),
//                 side: BorderSide(color: Colors.grey.shade200, width: 1),
//               ),
//               child: Container(
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(20),
//                   gradient: const LinearGradient(
//                     colors: [Color(0xFFFFFFFF), Color(0xFFF5FAFA)],
//                     begin: Alignment.topLeft,
//                     end: Alignment.bottomRight,
//                   ),
//                 ),
//                 child: Padding(
//                   padding: const EdgeInsets.all(20),
//                   child: Html(
//                     data: data,
//                     style: {
//                       "h1": Style(
//                         fontSize: FontSize(26),
//                         fontWeight: FontWeight.bold,
//                         color: const Color(0xFF00695C),
//                         fontFamily: GoogleFonts.poppins().fontFamily,
//                         margin: Margins.only(bottom: 12),
//                       ),
//                       "h2": Style(
//                         fontSize: FontSize(20),
//                         fontWeight: FontWeight.w600,
//                         color: const Color(0xFF00796B),
//                         fontFamily: GoogleFonts.poppins().fontFamily,
//                         margin: Margins.only(top: 16, bottom: 10),
//                       ),
//                       "p": Style(
//                         fontSize: FontSize(15),
//                         color: Colors.grey.shade800,
//                         lineHeight: const LineHeight(1.5),
//                         fontFamily: GoogleFonts.openSans().fontFamily,
//                         margin: Margins.only(bottom: 10),
//                       ),
//                       "ul": Style(
//                         padding: HtmlPaddings.only(left: 16, bottom: 10),
//                       ),
//                       "li": Style(
//                         fontSize: FontSize(15),
//                         color: Colors.grey.shade800,
//                         fontFamily: GoogleFonts.openSans().fontFamily,
//                         margin: Margins.only(bottom: 6),
//                       ),
//                       "pre": Style(
//                         backgroundColor: const Color(0xFFECFDF5),
//                         padding: HtmlPaddings.all(10),
//                         fontFamily: 'RobotoMono',
//                         fontSize: FontSize(14),
//                         color: const Color(0xFF004D40),
//                         border: Border.all(color: const Color(0xFFB2DFDB)),
//                         margin: Margins.only(bottom: 10),
//                       ),
//                       "code": Style(
//                         backgroundColor: const Color(0xFFE0F2F1),
//                         padding: HtmlPaddings.symmetric(horizontal: 6, vertical: 3),
//                         fontFamily: 'RobotoMono',
//                         fontSize: FontSize(13),
//                         color: const Color(0xFF00695C),
//                       ),
//                       "blockquote": Style(
//                         backgroundColor: const Color(0xFFE0F2F1),
//                         padding: HtmlPaddings.all(12),
//                         margin: Margins.only(top: 16, bottom: 10),
//                         fontStyle: FontStyle.italic,
//                         border: Border(left: BorderSide(color: const Color(0xFF00C4B4), width: 4)),
//                         fontFamily: GoogleFonts.openSans().fontFamily,
//                         fontSize: FontSize(14),
//                         color: Colors.grey.shade700,
//                       ),
//                     },
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../../../services/api_services.dart';

class FeaturesOfMongoDB extends StatefulWidget {
  final int moduleId;

  const FeaturesOfMongoDB({super.key, required this.moduleId});

  @override
  _FeaturesOfMongoDBState createState() => _FeaturesOfMongoDBState();
}

class _FeaturesOfMongoDBState extends State<FeaturesOfMongoDB> {
  late Future<Map<String, dynamic>> _topicFuture;

  @override
  void initState() {
    super.initState();
    print("Initializing FeaturesOfMongoDB with moduleId: ${widget.moduleId}");
    _topicFuture = ApiService().getTopicsById(widget.moduleId);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "MongoDB Features",
          style: GoogleFonts.poppins(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF004D40), Color(0xFF26A69A)],
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
            colors: [Color(0xFFE0F2F1), Color(0xFFF1F8E9)],
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
                          print("Retrying API call for moduleId: ${widget.moduleId}");
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

            print("API Response: ${jsonEncode(snapshot.data)}");

            final data = snapshot.data!['Data'] as List<dynamic>?;
            final topicContent = data != null && data.isNotEmpty ? data[6]['topic_Content'] : null;
            print("topicContent ::::::::::: $topicContent");

            String htmlData;
            if (topicContent != null && topicContent is String && topicContent.isNotEmpty) {
              htmlData = topicContent.replaceAll(RegExp(r"^'|'$"), '').replaceAll(r'\r\n', '\n').trim();
              print("Extracted HTML Data: $htmlData");
            } else {
              print("Error: topic_Content is null, empty, or not a string: $topicContent");
              htmlData = "<p>No content available</p>";
              print("Available keys in response: ${snapshot.data!.keys.toList()}");
            }

            return SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
              child: TweenAnimationBuilder(
                tween: Tween<double>(begin: 0, end: 1),
                duration: const Duration(milliseconds: 600),
                builder: (context, opacity, child) {
                  return Opacity(opacity: opacity, child: child);
                },
                child: Card(
                  elevation: 6,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: BorderSide(color: Colors.grey.shade200, width: 1),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: const LinearGradient(
                        colors: [Color(0xFFFFFFFF), Color(0xFFF5FAFA)],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Html(
                        data: htmlData,
                        style: {
                          "h1": Style(
                            fontSize: FontSize(26),
                            fontWeight: FontWeight.bold,
                            color: const Color(0xFF00695C),
                            fontFamily: GoogleFonts.poppins().fontFamily,
                            margin: Margins.only(bottom: 12),
                          ),
                          "h2": Style(
                            fontSize: FontSize(20),
                            fontWeight: FontWeight.w600,
                            color: const Color(0xFF00796B),
                            fontFamily: GoogleFonts.poppins().fontFamily,
                            margin: Margins.only(top: 16, bottom: 10),
                          ),
                          "p": Style(
                            fontSize: FontSize(15),
                            color: Colors.grey.shade800,
                            lineHeight: const LineHeight(1.5),
                            fontFamily: GoogleFonts.openSans().fontFamily,
                            margin: Margins.only(bottom: 10),
                          ),
                          "ul": Style(
                            padding: HtmlPaddings.only(left: 16, bottom: 10),
                          ),
                          "li": Style(
                            fontSize: FontSize(15),
                            color: Colors.grey.shade800,
                            fontFamily: GoogleFonts.openSans().fontFamily,
                            margin: Margins.only(bottom: 6),
                          ),
                          "pre": Style(
                            backgroundColor: const Color(0xFFECFDF5),
                            padding: HtmlPaddings.all(10),
                            fontFamily: 'RobotoMono',
                            fontSize: FontSize(14),
                            color: const Color(0xFF004D40),
                            border: Border.all(color: const Color(0xFFB2DFDB)),
                            margin: Margins.only(bottom: 10),
                          ),
                          "code": Style(
                            backgroundColor: const Color(0xFFE0F2F1),
                            padding: HtmlPaddings.symmetric(horizontal: 6, vertical: 3),
                            fontFamily: 'RobotoMono',
                            fontSize: FontSize(13),
                            color: const Color(0xFF00695C),
                          ),
                          "blockquote": Style(
                            backgroundColor: const Color(0xFFE0F2F1),
                            padding: HtmlPaddings.all(12),
                            margin: Margins.only(top: 16, bottom: 10),
                            fontStyle: FontStyle.italic,
                            border: Border(left: BorderSide(color: const Color(0xFF00C4B4), width: 4)),
                            fontFamily: GoogleFonts.openSans().fontFamily,
                            fontSize: FontSize(14),
                            color: Colors.grey.shade700,
                          ),
                        },
                      ),
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