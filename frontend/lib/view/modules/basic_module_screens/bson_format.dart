// import 'package:flutter/material.dart';
// import 'package:flutter_html/flutter_html.dart';
// import 'package:google_fonts/google_fonts.dart';
//
// class BsonFormat extends StatelessWidget {
//   BsonFormat({super.key});
//
//   final String data = '''
//   <h1>🔢 BSON Format in MongoDB</h1>
//
//   <p><strong>BSON (Binary JSON)</strong> is a binary-encoded serialization of JSON-like documents. It extends the JSON model to provide additional data types and to be efficient for storage and scanning.</p>
//
//   <h2>📌 What is BSON?</h2>
//   <ul>
//     <li><strong>Binary format</strong> of JSON objects</li>
//     <li>Used internally by MongoDB to store documents</li>
//     <li>Supports data types not available in JSON (e.g., <code>Date</code>, <code>Binary</code>, <code>ObjectId</code>)</li>
//     <li>Faster to encode/decode than JSON</li>
//   </ul>
//
//   <h2>🧩 Supported Data Types</h2>
//   <ul>
//     <li><code>Double</code></li>
//     <li><code>String</code></li>
//     <li><code>Object</code></li>
//     <li><code>Array</code></li>
//     <li><code>Binary data</code></li>
//     <li><code>Undefined</code> (deprecated)</li>
//     <li><code>ObjectId</code></li>
//     <li><code>Boolean</code></li>
//     <li><code>Date</code></li>
//     <li><code>Null</code></li>
//   </ul>
//
//   <h2>📄 Example BSON Document</h2>
//   <pre><code>{
//   "_id": ObjectId("64d9f5b6a3c1124f9c0aafed"),
//   "name": "Jasmin",
//   "age": 22,
//   "email": "jasmin@example.com",
//   "skills": ["Flutter", "MongoDB"],
//   "isActive": true,
//   "joined": ISODate("2023-01-15T00:00:00Z")
// }</code></pre>
//
//   <h2>⚙️ Why Use BSON?</h2>
//   <ul>
//     <li>Faster processing of data</li>
//     <li>More efficient indexing</li>
//     <li>Type information preserved</li>
//     <li>Enables use of ObjectId for unique identification</li>
//   </ul>
//
//   <blockquote>
//     <em>BSON is not meant to be human-readable. Its primary purpose is speed and flexibility.</em>
//   </blockquote>
//
//   <h2>🧠 Summary</h2>
//   <ul>
//     <li>BSON = Binary JSON + Extra Data Types</li>
//     <li>Used internally by MongoDB for document storage</li>
//     <li>Allows efficient query and index operations</li>
//   </ul>
//   ''';
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           "BSON Format",
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
//                   padding: const EdgeInsets.all(24),
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
//                       "pre": Style(
//                         backgroundColor: const Color(0xFFECFDF5),
//                         padding: HtmlPaddings.all(12),
//                         fontFamily: 'RobotoMono',
//                         fontSize: FontSize(15),
//                         color: const Color(0xFF004D40),
//                         border: Border.all(color: const Color(0xFFB2DFDB)),
//                         margin: Margins.only(bottom: 12),
//                       ),
//                       "code": Style(
//                         backgroundColor: const Color(0xFFE0F2F1),
//                         padding: HtmlPaddings.symmetric(horizontal: 8, vertical: 4),
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

class BsonFormat extends StatefulWidget {
  final int moduleId;

  const BsonFormat({super.key, required this.moduleId});

  @override
  _BsonFormatState createState() => _BsonFormatState();
}

class _BsonFormatState extends State<BsonFormat> {
  late Future<Map<String, dynamic>> _topicFuture;

  @override
  void initState() {
    super.initState();
    print("Initializing BsonFormat with topicId: ${widget.moduleId}");
    _topicFuture = ApiService().getTopicsById(widget.moduleId);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "BSON Format",
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
            final topicContent = data != null && data.isNotEmpty ? data[5]['topic_Content'] : null;
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
                      padding: const EdgeInsets.all(24),
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
                          "pre": Style(
                            backgroundColor: const Color(0xFFECFDF5),
                            padding: HtmlPaddings.all(12),
                            fontFamily: 'RobotoMono',
                            fontSize: FontSize(15),
                            color: const Color(0xFF004D40),
                            border: Border.all(color: const Color(0xFFB2DFDB)),
                            margin: Margins.only(bottom: 12),
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
              ),
            );
          },
        ),
      ),
    );
  }
}