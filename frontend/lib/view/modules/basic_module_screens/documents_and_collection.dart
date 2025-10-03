// import 'package:flutter/material.dart';
// import 'package:flutter_html/flutter_html.dart';
// import 'package:google_fonts/google_fonts.dart';
//
// class DocumentsAndCollection extends StatelessWidget {
//   DocumentsAndCollection({super.key});
//
//   final String data = '''
//    <h1>MongoDB Documents & Collections</h1>
//
//    <p>In MongoDB, data is stored as documents within collections. Understanding this structure is crucial for working effectively with the database.</p>
//
//    <h2> What is a Document?</h2>
//    <p>A document is a basic unit of data in MongoDB. It is stored in BSON (Binary JSON) format and can contain nested data like arrays and other documents.</p>
//
//    <pre><code>{
//      "_id": 1,
//      "name": "Alice",
//      "email": "alice@example.com",
//      "roles": ["admin", "editor"],
//      "profile": {
//        "age": 30,
//        "city": "New York"
//      }
//    }</code></pre>
//
//    <ul>
//      <li>Flexible structure – no strict schema.</li>
//      <li>Each document has a unique <code>_id</code> field by default.</li>
//      <li>Supports complex data types like arrays and nested objects.</li>
//    </ul>
//
//    <h2> What is a Collection?</h2>
//    <p>A collection is a group of MongoDB documents. It is equivalent to a table in relational databases but without fixed schemas.</p>
//
//    <pre><code>db.users.insertOne({
//      "name": "John",
//      "email": "john@example.com",
//      "isActive": true
//    });</code></pre>
//
//    <ul>
//      <li>Collections can hold documents of varying structure.</li>
//      <li>Stored inside a database.</li>
//      <li>No need for predefined structure (schema-less).</li>
//    </ul>
//
//    <h2>Summary</h2>
//    <ul>
//      <li>Documents = key-value pairs in BSON.</li>
//      <li>Collections = groups of documents.</li>
//      <li>No need for predefined schema.</li>
//    </ul>
//
//    <blockquote>
//      <em>MongoDB’s flexible document model makes it easy to model and manipulate data efficiently.</em>
//    </blockquote>
//    ''';
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           "Documents & Collections",
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
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Html(
//                         data: data,
//                         style: {
//                           "h1": Style(
//                             fontSize: FontSize(28),
//                             fontWeight: FontWeight.bold,
//                             color: const Color(0xFF00695C),
//                             fontFamily: GoogleFonts.poppins().fontFamily,
//                             margin: Margins.only(bottom: 16),
//                           ),
//                           "h2": Style(
//                             fontSize: FontSize(22),
//                             fontWeight: FontWeight.w600,
//                             color: const Color(0xFF00796B),
//                             fontFamily: GoogleFonts.poppins().fontFamily,
//                             margin: Margins.only(top: 20, bottom: 12),
//                           ),
//                           "p": Style(
//                             fontSize: FontSize(16),
//                             color: Colors.grey.shade800,
//                             lineHeight: const LineHeight(1.5),
//                             fontFamily: GoogleFonts.openSans().fontFamily,
//                             margin: Margins.only(bottom: 12),
//                           ),
//                           "ul": Style(
//                             padding: HtmlPaddings.only(left: 20, bottom: 12),
//                           ),
//                           "li": Style(
//                             fontSize: FontSize(16),
//                             color: Colors.grey.shade800,
//                             fontFamily: GoogleFonts.openSans().fontFamily,
//                             margin: Margins.only(bottom: 8),
//                           ),
//                           "pre": Style(
//                             backgroundColor: const Color(0xFFECFDF5),
//                             padding: HtmlPaddings.all(12),
//                             fontFamily: 'RobotoMono',
//                             fontSize: FontSize(15),
//                             color: const Color(0xFF004D40),
//                             border: Border.all(color: const Color(0xFFB2DFDB)),
//                             margin: Margins.only(bottom: 12),
//                           ),
//                           "code": Style(
//                             backgroundColor: const Color(0xFFE0F2F1),
//                             padding: HtmlPaddings.symmetric(horizontal: 8, vertical: 4),
//                             fontFamily: 'RobotoMono',
//                             fontSize: FontSize(14),
//                             color: const Color(0xFF00695C),
//                           ),
//                           "blockquote": Style(
//                             backgroundColor: const Color(0xFFE0F2F1),
//                             padding: HtmlPaddings.all(16),
//                             margin: Margins.only(top: 20, bottom: 12),
//                             fontStyle: FontStyle.italic,
//                             border: Border(left: BorderSide(color: const Color(0xFF00C4B4), width: 4)),
//                             fontFamily: GoogleFonts.openSans().fontFamily,
//                             fontSize: FontSize(15),
//                             color: Colors.grey.shade700,
//                           ),
//                         },
//                       ),
//
//                       const SizedBox(height: 20),
//                       Text(
//                         "Document vs Collection",
//                         style: GoogleFonts.poppins(
//                           fontSize: 22,
//                           fontWeight: FontWeight.w600,
//                           color: const Color(0xFF00796B),
//                         ),
//                       ),
//                       const SizedBox(height: 12),
//
//                       _buildComparisonCard(
//                         "Definition",
//                         "Single data record (JSON-like)",
//                         "Group of documents",
//                       ),
//                       _buildComparisonCard(
//                         "Schema",
//                         "Dynamic",
//                         "No enforced schema",
//                       ),
//                       _buildComparisonCard(
//                         "Analogy",
//                         "Row in SQL table",
//                         "Table in SQL",
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//   /// ✅ helper widget for comparison
//   Widget _buildComparisonCard(String aspect, String document, String collection) {
//     return Card(
//       margin: const EdgeInsets.symmetric(vertical: 8),
//       elevation: 2,
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//       child: Padding(
//         padding: const EdgeInsets.all(12),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(aspect,
//                 style: GoogleFonts.poppins(
//                   fontSize: 18,
//                   fontWeight: FontWeight.w600,
//                   color: const Color(0xFF00695C),
//                 )),
//             const SizedBox(height: 6),
//             Row(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Expanded(
//                   child: Text("📄 Document: $document",
//                       style: GoogleFonts.openSans(fontSize: 15, color: Colors.black87)),
//                 ),
//                 const SizedBox(width: 10),
//                 Expanded(
//                   child: Text("📚 Collection: $collection",
//                       style: GoogleFonts.openSans(fontSize: 15, color: Colors.black87)),
//                 ),
//               ],
//             ),
//           ],
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

class DocumentsAndCollection extends StatefulWidget {
  final int moduleId;

  const DocumentsAndCollection({super.key, required this.moduleId});

  @override
  _DocumentsAndCollectionState createState() => _DocumentsAndCollectionState();
}

class _DocumentsAndCollectionState extends State<DocumentsAndCollection> {
  late Future<Map<String, dynamic>> _topicFuture;

  @override
  void initState() {
    super.initState();
    print(
        "Initializing DocumentsAndCollection with topicId: ${widget.moduleId}");
    _topicFuture = ApiService().getTopicsById(widget.moduleId);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Documents & Collections",
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
                            print(
                                "Retrying API call for topicId: ${widget.moduleId}");
                            _topicFuture =
                                ApiService().getTopicsById(widget.moduleId);
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
              final topicContent = data != null && data.isNotEmpty
                  ? data[4]['topic_Content']
                  : null;
              print("topicContent ::::::::::: $topicContent");

              String htmlData;
              if (topicContent != null &&
                  topicContent is String &&
                  topicContent.isNotEmpty) {
                htmlData = topicContent
                    .replaceAll(RegExp(r"^'|'$"), '')
                    .replaceAll(r'\r\n', '\n')
                    .trim();
                print("Extracted HTML Data: $htmlData");
              } else {
                print(
                    "Error: topic_Content is null, empty, or not a string: $topicContent");
                htmlData = "<p>No content available</p>";
                print(
                    "Available keys in response: ${snapshot.data!.keys.toList()}");
              }

              return SingleChildScrollView(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                child: TweenAnimationBuilder(
                  tween: Tween<double>(begin: 0, end: 1),
                  duration: const Duration(milliseconds: 600),
                  builder: (context, opacity, child) {
                    return Opacity(
                      opacity: opacity,
                      child: child,
                    );
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
                              border:
                                  Border.all(color: const Color(0xFFB2DFDB)),
                              margin: Margins.only(bottom: 12),
                            ),
                            "code": Style(
                              backgroundColor: const Color(0xFFE0F2F1),
                              padding: HtmlPaddings.symmetric(
                                  horizontal: 8, vertical: 4),
                              fontFamily: 'RobotoMono',
                              fontSize: FontSize(14),
                              color: const Color(0xFF00695C),
                            ),
                            "table": Style(
                              border: Border.all(color: Colors.teal),
                              margin: Margins.only(top: 12, bottom: 16),
                            ),
                            "th": Style(
                              padding: HtmlPaddings.all(8),
                              backgroundColor: const Color(0xFFB2DFDB),
                              fontWeight: FontWeight.w600,
                            ),
                            "td": Style(
                              padding: HtmlPaddings.all(8),
                              border: Border.all(color: Colors.teal.shade200),
                            ),
                            "blockquote": Style(
                              backgroundColor: const Color(0xFFE0F2F1),
                              padding: HtmlPaddings.all(16),
                              margin: Margins.only(top: 20, bottom: 12),
                              fontStyle: FontStyle.italic,
                              border: Border(
                                  left: BorderSide(
                                      color: const Color(0xFF00C4B4),
                                      width: 4)),
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
            }),
      ),
    );
  }
}
