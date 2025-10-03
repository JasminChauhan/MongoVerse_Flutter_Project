// import 'package:flutter/material.dart';
// import 'package:flutter_html/flutter_html.dart';
// import 'package:google_fonts/google_fonts.dart';
//
// class MongoDbArchitecture extends StatelessWidget {
//   MongoDbArchitecture({super.key});
//
//   final String data = '''
//   <h1>MongoDB Architecture</h1>
//
//   <p>MongoDB follows a distributed, document-oriented architecture designed for scalability, high availability, and performance.</p>
//
//   <h2>Key Components of MongoDB Architecture:</h2>
//
//   <ul>
//     <li><strong>1. Database:</strong> A container for collections. Each MongoDB server can host multiple databases.</li>
//     <li><strong>2. Collection:</strong> A group of MongoDB documents. It is the equivalent of a table in relational databases.</li>
//     <li><strong>3. Document:</strong> The basic unit of data in MongoDB, stored in <code>BSON</code> format (Binary JSON).</li>
//   </ul>
//
//   <h2>Core Architecture Elements:</h2>
//
//   <ul>
//     <li><strong>1. MongoDB Server (mongod):</strong> The primary daemon process that handles requests, manages data, and performs background management operations.</li>
//     <li><strong>2. Mongo Shell (mongosh):</strong> An interactive JavaScript interface to communicate with MongoDB server.</li>
//     <li><strong>3. MongoDB Compass:</strong> A GUI-based visual interface for managing, querying, and analyzing data in MongoDB.</li>
//   </ul>
//
//   <h2>Advanced Architecture Features:</h2>
//
//   <ul>
//     <li><strong>1. Sharding:</strong> Distributes large data sets across multiple servers. Enables horizontal scaling.</li>
//     <li><strong>2. Replication:</strong> Copies data across multiple nodes to ensure high availability and redundancy. Managed through <strong>Replica Sets</strong>.</li>
//     <li><strong>3. Aggregation Framework:</strong> Powerful data processing and transformation pipeline.</li>
//   </ul>
//
//   <h2>Flow of Data:</h2>
//   <p>
//     A client connects to the MongoDB server. The server processes the query and interacts with the storage engine to read/write BSON documents stored on disk.
//   </p>
//
//   <blockquote>
//     <em>MongoDB’s architecture is built for modern cloud-native applications that require flexibility, speed, and scalability.</em>
//   </blockquote>
//   ''';
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           "MongoDB Architecture",
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
//               colors: [Color(0xFF00796B), Color(0xFF00C4B4)],
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
//             colors: [Color(0xFFE6FFFA), Color(0xFFF0F4F8)],
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
//                     colors: [Color(0xFFFFFFFF), Color(0xFFF5FAFA)],
//                     begin: Alignment.topLeft,
//                     end: Alignment.bottomRight,
//                   ),
//                 ),
//                 child: Padding(
//                   padding: const EdgeInsets.all(12),
//                   child: Html(
//                     data: data,
//                     style: {
//                       "h1": Style(
//                         fontSize: FontSize(28),
//                         fontWeight: FontWeight.bold,
//                         color: const Color(0xFF00695C),
//                         fontFamily: GoogleFonts.poppins().fontFamily,
//                         margin: Margins.only(bottom: 16),
//                       ),
//                       "h2": Style(
//                         fontSize: FontSize(22),
//                         fontWeight: FontWeight.w600,
//                         color: const Color(0xFF00796B),
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
//                         backgroundColor: const Color(0xFFE0F2F1),
//                         padding: HtmlPaddings.symmetric(horizontal: 8, vertical: 4),
//                         // borderRadius: BorderRadius.circular(6),
//                         fontFamily: 'RobotoMono',
//                         fontSize: FontSize(14),
//                         color: const Color(0xFF00695C),
//                       ),
//                       "blockquote": Style(
//                         backgroundColor: const Color(0xFFE0F2F1),
//                         padding: HtmlPaddings.all(16),
//                         margin: Margins.only(top: 20, bottom: 12),
//                         fontStyle: FontStyle.italic,
//                         border: Border(left: BorderSide(color: const Color(0xFF00C4B4), width: 4)),
//                         fontFamily: GoogleFonts.openSans().fontFamily,
//                         fontSize: FontSize(15),
//                         color: Colors.grey.shade700,
//                       ),
//                     },
//                   ),
//                 ),
//               ),
//
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

class MongoDbArchitecture extends StatefulWidget {
  final int moduleId;

  const MongoDbArchitecture({super.key, required this.moduleId});

  @override
  _MongoDbArchitectureState createState() => _MongoDbArchitectureState();
}

class _MongoDbArchitectureState extends State<MongoDbArchitecture> {
  late Future<Map<String, dynamic>> _topicFuture;

  @override
  void initState() {
    super.initState();
    print("Initializing MongoDbArchitecture with topicId: ${widget.moduleId}");
    _topicFuture = ApiService().getTopicsById(widget.moduleId);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "MongoDB Architecture",
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
              colors: [Color(0xFF00796B), Color(0xFF00C4B4)],
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
            colors: [Color(0xFFE6FFFA), Color(0xFFF0F4F8)],
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

            print("API Response: ${jsonEncode(snapshot.data)}");

            final data = snapshot.data!['Data'] as List<dynamic>?;
            final topicContent = data != null && data.isNotEmpty ? data[3]['topic_Content'] : null;
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
                  return Opacity(
                    opacity: opacity,
                    child: child,
                  );
                },
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
                    padding: const EdgeInsets.all(12),
                    child: Html(
                      data: htmlData,
                      style: {
                        "h1": Style(
                          fontSize: FontSize(28),
                          fontWeight: FontWeight.bold,
                          color: const Color(0xFF00695C),
                          fontFamily: GoogleFonts.poppins().fontFamily,
                          margin: Margins.only(bottom: 16),
                        ),
                        "h2": Style(
                          fontSize: FontSize(22),
                          fontWeight: FontWeight.w600,
                          color: const Color(0xFF00796B),
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
                          backgroundColor: const Color(0xFFE0F2F1),
                          padding: HtmlPaddings.symmetric(horizontal: 8, vertical: 4),
                          fontFamily: 'RobotoMono',
                          fontSize: FontSize(14),
                          color: const Color(0xFF00695C),
                        ),
                        "blockquote": Style(
                          backgroundColor: const Color(0xFFE0F2F1),
                          padding: HtmlPaddings.all(16),
                          margin: Margins.only(top: 20, bottom: 12),
                          fontStyle: FontStyle.italic,
                          border: Border(left: BorderSide(color: const Color(0xFF00C4B4), width: 4)),
                          fontFamily: GoogleFonts.openSans().fontFamily,
                          fontSize: FontSize(15),
                          color: Colors.grey.shade700,
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