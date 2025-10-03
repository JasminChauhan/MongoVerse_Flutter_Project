// import 'package:flutter/material.dart';
// import 'package:flutter_html/flutter_html.dart';
// import 'package:google_fonts/google_fonts.dart';
//
// class CreatingCustomIndexes extends StatelessWidget {
//   CreatingCustomIndexes({super.key});
//
//   final String data = '''
// <h1>Creating Custom Indexes in MongoDB</h1>
//
// <p>Custom indexes in MongoDB allow you to optimize your database for specific queries by indexing fields based on how they are queried. Proper indexing can greatly improve read performance.</p>
//
// <h2>Why Create Custom Indexes?</h2>
// <ul>
//   <li>Improve query performance on frequently searched fields.</li>
//   <li>Optimize queries involving sorting, filtering, and joining operations.</li>
//   <li>Support complex data access patterns using compound or specialized indexes.</li>
// </ul>
//
// <h2>How to Create an Index</h2>
// <p>You can create an index using the <code>createIndex()</code> method:</p>
//
// <pre><code>// Syntax
// db.collection.createIndex({ field: order })</code></pre>
//
// <p><strong>Order:</strong> <code>1</code> for ascending, <code>-1</code> for descending.</p>
//
// <h2>Examples</h2>
//
// <ul>
//   <li>
//     <strong>Single Field Index:</strong><br>
//     <code>db.users.createIndex({ age: 1 })</code>
//   </li>
//
//   <li>
//     <strong>Descending Index:</strong><br>
//     <code>db.products.createIndex({ price: -1 })</code>
//   </li>
//
//   <li>
//     <strong>Compound Index:</strong><br>
//     <code>db.orders.createIndex({ userId: 1, orderDate: -1 })</code>
//     <br>Optimizes queries that sort by <code>orderDate</code> for each <code>userId</code>.
//   </li>
//
//   <li>
//     <strong>Unique Index:</strong><br>
//     <code>db.users.createIndex({ email: 1 }, { unique: true })</code>
//     <br>Ensures no duplicate emails.
//   </li>
//
//   <li>
//     <strong>Partial Index:</strong><br>
//     <code>db.products.createIndex({ stock: 1 }, { partialFilterExpression: { stock: { \$gt: 0 } } })</code>
//     <br>Indexes only documents with stock greater than 0.
//   </li>
//
//   <li>
//     <strong>Sparse Index:</strong><br>
//     <code>db.users.createIndex({ phone: 1 }, { sparse: true })</code>
//     <br>Ignores documents missing the <code>phone</code> field.
//   </li>
// </ul>
//
// <h2>Best Practices</h2>
// <ul>
//   <li>Use <code>explain()</code> to analyze query performance with/without index.</li>
//   <li>Don't over-index — each index adds write overhead.</li>
//   <li>Drop unused indexes using <code>dropIndex()</code>.</li>
//   <li>Use compound indexes for multi-field filters instead of creating multiple single indexes.</li>
// </ul>
//
// <h2>When Not to Use Custom Indexes</h2>
// <ul>
//   <li>On fields with high write frequency and low read value.</li>
//   <li>On fields that are rarely queried or only used for display.</li>
// </ul>
//
// <p style="color:gray;"><em>Remember:</em> Indexes consume disk space and slow down insert/update operations. Always monitor your performance metrics.</p>
// ''';
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           "Custom Indexes in MongoDB",
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
//             child: Container(
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(20),
//                 gradient: const LinearGradient(
//                   colors: [Color(0xFFFFFFFF), Color(0xFFF9F5FF)],
//                   begin: Alignment.topLeft,
//                   end: Alignment.bottomRight,
//                 ),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.grey.shade200,
//                     blurRadius: 6,
//                     offset: const Offset(0, 3),
//                   ),
//                 ],
//               ),
//               child: Padding(
//                 padding: const EdgeInsets.all(10),
//                 child: Html(
//                   data: data,
//                   style: {
//                     "h1": Style(
//                       fontSize: FontSize(28),
//                       fontWeight: FontWeight.bold,
//                       color: const Color(0xFF4B39EF),
//                       fontFamily: GoogleFonts.poppins().fontFamily,
//                       // margin | Margins.only(bottom: 16),
//                     ),
//                     "h2": Style(
//                       fontSize: FontSize(22),
//                       fontWeight: FontWeight.w600,
//                       color: const Color(0xFF6B46C1),
//                       fontFamily: GoogleFonts.poppins().fontFamily,
//                       // margin | Margins.only(top: 20, bottom: 12),
//                     ),
//                     "p": Style(
//                       fontSize: FontSize(16),
//                       color: Colors.grey.shade800,
//                       lineHeight: const LineHeight(1.5),
//                       fontFamily: GoogleFonts.openSans().fontFamily,
//                       // margin | Margins.only(bottom: 12),
//                     ),
//                     "ul": Style(
//                       padding: HtmlPaddings.only(left: 20, bottom: 12),
//                     ),
//                     "li": Style(
//                       fontSize: FontSize(16),
//                       color: Colors.grey.shade800,
//                       fontFamily: GoogleFonts.openSans().fontFamily,
//                       // margin | Margins.only(bottom: 8),
//                     ),
//                     "code": Style(
//                       backgroundColor: const Color(0xFFECEFF1),
//                       padding: HtmlPaddings.symmetric(horizontal: 8, vertical: 4),
//                       fontFamily: 'RobotoMono',
//                       fontSize: FontSize(14),
//                       color: const Color(0xFF2F855A),
//                     ),
//                     "pre": Style(
//                       backgroundColor: const Color(0xFFECEFF1),
//                       padding: HtmlPaddings.all(10),
//                       fontFamily: 'RobotoMono',
//                       fontSize: FontSize(14),
//                       color: const Color(0xFF2F855A),
//                     ),
//                   },
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

class CreatingCustomIndexes extends StatefulWidget {
  final int moduleId;

  const CreatingCustomIndexes({super.key, required this.moduleId});

  @override
  _CreatingCustomIndexesState createState() => _CreatingCustomIndexesState();
}

class _CreatingCustomIndexesState extends State<CreatingCustomIndexes> {
  late Future<Map<String, dynamic>> _topicFuture;

  @override
  void initState() {
    super.initState();
    print("Initializing CreatingCustomIndexes with moduleId: ${widget.moduleId}");
    _topicFuture = ApiService().getTopicsById(widget.moduleId);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Custom Indexes in MongoDB",
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
              final topicContent = data != null && data.isNotEmpty ? data[2]['topic_Content'] : null;
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
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: const LinearGradient(
                        colors: [Color(0xFFFFFFFF), Color(0xFFF9F5FF)],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade200,
                          blurRadius: 6,
                          offset: const Offset(0, 3),
                        ),
                      ],
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
                          "pre": Style(
                            backgroundColor: const Color(0xFFECEFF1),
                            padding: HtmlPaddings.all(10),
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
          ),)
    );
  }}