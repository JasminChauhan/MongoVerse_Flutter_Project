// import 'package:flutter/material.dart';
// import 'package:flutter_html/flutter_html.dart';
// import 'package:google_fonts/google_fonts.dart';
//
// class QueryOperators extends StatelessWidget {
//   QueryOperators({super.key});
//
//   final String data = '''
// <h1>MongoDB Query Operators</h1>
//
// <p>MongoDB provides a rich set of query operators to filter documents based on conditions. These operators are grouped into categories:</p>
//
// <h2>1. Comparison Operators</h2>
// <p>Used to compare field values with specified values.</p>
// <ul>
//   <li><code><strong>\$eq</strong></code>: Matches values that are equal to a specified value. <br> <em>E.g.</em> <code>{ age: { \$eq: 25 } }</code></li>
//   <li><code><strong>\$gt</strong></code>: Matches values that are greater than a specified value. <br> <em>E.g.</em> <code>{ age: { \$gt: 18 } }</code></li>
//   <li><code><strong>\$lt</strong></code>: Matches values less than a specified value. <br> <em>E.g.</em> <code>{ age: { \$lt: 65 } }</code></li>
//   <li><code><strong>\$ne</strong></code>: Matches values not equal to a specified value. <br> <em>E.g.</em> <code>{ status: { \$ne: "inactive" } }</code></li>
// </ul>
//
// <h2>2. Logical Operators</h2>
// <p>Used to combine multiple query conditions.</p>
// <ul>
//   <li><code><strong>\$and</strong></code>: Joins query clauses with a logical AND. <br> <em>E.g.</em> <code>{ \$and: [ { age: { \$gt: 18 } }, { status: "active" } ] }</code></li>
//   <li><code><strong>\$or</strong></code>: Joins query clauses with a logical OR. <br> <em>E.g.</em> <code>{ \$or: [ { status: "active" }, { role: "admin" } ] }</code></li>
//   <li><code><strong>\$not</strong></code>: Inverts the effect of a query expression. <br> <em>E.g.</em> <code>{ age: { \$not: { \$gt: 30 } } }</code></li>
//   <li><code><strong>\$nor</strong></code>: Joins query clauses with a logical NOR (none of the expressions are true). <br> <em>E.g.</em> <code>{ \$nor: [ { status: "active" }, { age: { \$lt: 18 } } ] }</code></li>
// </ul>
//
// <h2>3. Element Operators</h2>
// <p>Used to query fields based on the presence of a field or the type of its value.</p>
// <ul>
//   <li><code><strong>\$exists</strong></code>: Matches documents that have the specified field. <br> <em>E.g.</em> <code>{ email: { \$exists: true } }</code></li>
//   <li><code><strong>\$type</strong></code>: Matches documents where the field is of the specified BSON type. <br> <em>E.g.</em> <code>{ age: { \$type: "int" } }</code></li>
// </ul>
//
// <p style="color:gray;"><em>These operators are essential for writing powerful and flexible MongoDB queries.</em></p>
// ''';
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           "MongoDB Query Operators",
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
//                       margin: Margins.only(bottom: 16),
//                     ),
//                     "h2": Style(
//                       fontSize: FontSize(22),
//                       fontWeight: FontWeight.w600,
//                       color: const Color(0xFF6B46C1),
//                       fontFamily: GoogleFonts.poppins().fontFamily,
//                       margin: Margins.only(top: 20, bottom: 12),
//                     ),
//                     "p": Style(
//                       fontSize: FontSize(16),
//                       color: Colors.grey.shade800,
//                       lineHeight: const LineHeight(1.5),
//                       fontFamily: GoogleFonts.openSans().fontFamily,
//                       margin: Margins.only(bottom: 12),
//                     ),
//                     "ul": Style(
//                       padding: HtmlPaddings.only(left: 20, bottom: 12),
//                     ),
//                     "li": Style(
//                       fontSize: FontSize(16),
//                       color: Colors.grey.shade800,
//                       fontFamily: GoogleFonts.openSans().fontFamily,
//                       margin: Margins.only(bottom: 8),
//                     ),
//                     "code": Style(
//                       backgroundColor: const Color(0xFFECEFF1),
//                       padding: HtmlPaddings.symmetric(horizontal: 8, vertical: 4),
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

class QueryOperators extends StatefulWidget {
  final int moduleId;

  const QueryOperators({super.key, required this.moduleId});

  @override
  _QueryOperatorsState createState() => _QueryOperatorsState();
}

class _QueryOperatorsState extends State<QueryOperators> {
  late Future<Map<String, dynamic>> _topicFuture;

  @override
  void initState() {
    super.initState();
    print("Initializing QueryOperators with moduleId: ${widget.moduleId}");
    _topicFuture = ApiService().getTopicsById(widget.moduleId);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "MongoDB Query Operators",
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
            final topicContent = data != null && data.isNotEmpty ? data[0]['topic_Content'] : null;
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