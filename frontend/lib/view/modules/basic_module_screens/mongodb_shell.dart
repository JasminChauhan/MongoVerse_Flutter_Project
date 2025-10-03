// import 'package:flutter/material.dart';
// import 'package:flutter_html/flutter_html.dart';
// import 'package:google_fonts/google_fonts.dart';
//
// class MongoDBShell extends StatelessWidget {
//   MongoDBShell({super.key});
//
//   final String data = '''
//   <h1>🐚 MongoDB Shell</h1>
//
//   <p><strong>MongoDB Shell</strong> (<code>mongosh</code>) is a nifty CLI tool for interacting with MongoDB databases. It’s perfect for running queries, managing collections, and performing admin tasks with ease!</p>
//
//   <h2>📌 Key Features</h2>
//   <ul>
//     <li><strong>Interactive CLI</strong>: Run JavaScript-based commands to query and manage data.</li>
//     <li><strong>CRUD Operations</strong>: Create, read, update, and delete documents effortlessly.</li>
//     <li><strong>Admin Tools</strong>: Manage databases, users, and indexes from the shell.</li>
//     <li><strong>Modern JS Support</strong>: Uses Node.js runtime for enhanced scripting.</li>
//     <li><strong>Auto-Completion</strong>: Smart suggestions for commands and fields.</li>
//   </ul>
//
//   <h2>🛠️ Get Started</h2>
//   <ul>
//     <li><strong>Install</strong>: Download from <a href="https://www.mongodb.com/try/download/shell">MongoDB Shell</a> or install with MongoDB.</li>
//     <li><strong>Launch</strong>: Run <code>mongosh</code> in your terminal to connect to a local or remote MongoDB instance.</li>
//     <li><strong>Connect</strong>: Use <code>mongosh "mongodb://localhost:27017"</code> for local, or Atlas URI for cloud.</li>
//   </ul>
//
//   <h2>📄 Example Commands</h2>
//   <pre><code>// Switch to a database
// use myDB
//
// // Insert a document
// db.users.insertOne({ name: "Jasmin", age: 22, skills: ["MongoDB"] })
//
// // Query documents
// db.users.find({ age: { \$gt: 20 } }).pretty()
//
// // Update a document
// db.users.updateOne({ name: "Jasmin" }, { \$set: { age: 23 } })
//
// // Delete a document
// db.users.deleteOne({ name: "Jasmin" })
// </code></pre>
//
//   <h2>💖 Why Mongo Shell?</h2>
//   <ul>
//     <li>Quick and lightweight for database tasks.</li>
//     <li>Powerful for scripting and automation.</li>
//     <li>Great for learning MongoDB queries!</li>
//   </ul>
//
//   <blockquote>
//     <em>Mongo Shell makes database management fast and fun!</em>
//   </blockquote>
//
//   <h2>🧠 Quick Summary</h2>
//   <ul>
//     <li><code>mongosh</code> is MongoDB’s CLI for queries and admin tasks.</li>
//     <li>Easy to install and use with local or cloud databases.</li>
//     <li>Ideal for developers who love the command line!</li>
//   </ul>
//   ''';
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           "MongoDB Shell",
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

class MongoDBShell extends StatefulWidget {
  final int moduleId;

  const MongoDBShell({super.key, required this.moduleId});

  @override
  _MongoDBShellState createState() => _MongoDBShellState();
}

class _MongoDBShellState extends State<MongoDBShell> {
  late Future<Map<String, dynamic>> _topicFuture;

  @override
  void initState() {
    super.initState();
    print("Initializing MongoDBShell with moduleId: ${widget.moduleId}");
    _topicFuture = ApiService().getTopicsById(widget.moduleId);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "MongoDB Shell",
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
            final topicContent = data != null && data.isNotEmpty ? data[9]['topic_Content'] : null;
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