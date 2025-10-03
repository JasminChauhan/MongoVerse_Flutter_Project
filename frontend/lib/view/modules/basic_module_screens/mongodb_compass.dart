// import 'package:flutter/material.dart';
// import 'package:flutter_html/flutter_html.dart';
// import 'package:google_fonts/google_fonts.dart';
//
// class MongoDBCompass extends StatelessWidget {
//   MongoDBCompass({super.key});
//
//   final String data = '''
//   <h1>🌟 MongoDB Compass</h1>
//
//   <p><strong>MongoDB Compass</strong> is a cute, user-friendly GUI for managing your MongoDB databases. It’s perfect for exploring data, running queries, and tweaking collections without diving into the command line!</p>
//
//   <h2>📌 Key Features</h2>
//   <ul>
//     <li><strong>Visual Data Explorer</strong>: Browse and edit documents with a clean, intuitive interface.</li>
//     <li><strong>Query Builder</strong>: Create queries with a drag-and-drop tool—no code needed!</li>
//     <li><strong>Schema Analyzer</strong>: Visualize data patterns and field types.</li>
//     <li><strong>Index Management</strong>: Easily create and manage indexes for faster queries.</li>
//     <li><strong>Aggregation Pipeline</strong>: Build complex data pipelines visually.</li>
//     <li><strong>Real-Time Stats</strong>: Monitor database performance and operations.</li>
//   </ul>
//
//   <h2>🛠️ Get Started</h2>
//   <ul>
//     <li><strong>Download</strong>: Grab Compass from <a href="https://www.mongodb.com/try/download/compass">MongoDB Compass</a>.</li>
//     <li><strong>Install</strong>: Run the installer for Windows, macOS, or Linux.</li>
//     <li><strong>Connect</strong>: Enter your MongoDB URI (local or Atlas) and start exploring!</li>
//   </ul>
//
//   <h2>📄 Example: Query in Compass</h2>
//   <pre><code>// Filter users with age > 20
// { age: { \$gt: 20 } }
//
// // Insert a document
// { name: "Jasmin", age: 22, skills: ["Flutter", "MongoDB"] }
// </code></pre>
//
//   <h2>💖 Why Compass?</h2>
//   <ul>
//     <li>Super easy for beginners.</li>
//     <li>Visual tools save time.</li>
//     <li>Perfect for quick data tweaks and analysis.</li>
//   </ul>
//
//   <blockquote>
//     <em>Compass makes MongoDB fun and simple to manage!</em>
//   </blockquote>
//
//   <h2>🧠 Quick Summary</h2>
//   <ul>
//     <li>GUI for MongoDB with visual query and schema tools.</li>
//     <li>Easy setup for local or cloud databases.</li>
//     <li>Ideal for developers and non-coders alike!</li>
//   </ul>
//   ''';
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           "MongoDB Compass",
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
//                       "a": Style(
//                         color: const Color(0xFF00C4B4),
//                         textDecoration: TextDecoration.underline,
//                         fontFamily: GoogleFonts.openSans().fontFamily,
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

class MongoDBCompass extends StatefulWidget {
  final int moduleId;

  const MongoDBCompass({super.key, required this.moduleId});

  @override
  _MongoDBCompassState createState() => _MongoDBCompassState();
}

class _MongoDBCompassState extends State<MongoDBCompass> {
  late Future<Map<String, dynamic>> _topicFuture;

  @override
  void initState() {
    super.initState();
    print("Initializing MongoDBCompass with moduleId: ${widget.moduleId}");
    _topicFuture = ApiService().getTopicsById(widget.moduleId);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "MongoDB Compass",
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
            final topicContent = data != null && data.isNotEmpty ? data[8]['topic_Content'] : null;
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
                          "a": Style(
                            color: const Color(0xFF00C4B4),
                            textDecoration: TextDecoration.underline,
                            fontFamily: GoogleFonts.openSans().fontFamily,
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