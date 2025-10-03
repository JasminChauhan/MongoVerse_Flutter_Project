// import 'package:flutter/material.dart';
// import 'package:flutter_html/flutter_html.dart';
// import 'package:flutter_html_table/flutter_html_table.dart';
// import 'package:google_fonts/google_fonts.dart';
//
// class SqlVsNoSql extends StatelessWidget {
//   SqlVsNoSql({super.key});
//
//   final String data = '''
//     <h1>SQL vs NoSQL Databases</h1>
//
//     <p>SQL and NoSQL databases differ in how they store, retrieve, and manage data. Here’s a side-by-side comparison:</p>
//
//     <table border="1" style="border-collapse: collapse; width: 130%; max-width=100%;">
//       <thead>
//         <tr style="background-color: #4B39EF; color: white;">
//           <th>Feature</th>
//           <th>SQL</th>
//           <th>NoSQL</th>
//         </tr>
//       </thead>
//       <tbody>
//         <tr>
//           <td><strong>Data Model</strong></td>
//           <td>Relational (tables with rows and columns)</td>
//           <td>Non-relational (JSON, key-value, graph, column-family, etc.)</td>
//         </tr>
//         <tr>
//           <td><strong>Schema</strong></td>
//           <td>Fixed schema (predefined)</td>
//           <td>Dynamic or schema-less</td>
//         </tr>
//         <tr>
//           <td><strong>Scalability</strong></td>
//           <td>Vertical scaling (adding more power to a single server)</td>
//           <td>Horizontal scaling (adding more servers)</td>
//         </tr>
//         <tr>
//           <td><strong>Query Language</strong></td>
//           <td>SQL (Structured Query Language)</td>
//           <td>Various (MongoDB uses JSON-based query language)</td>
//         </tr>
//         <tr>
//           <td><strong>Data Integrity</strong></td>
//           <td>High (ACID compliance)</td>
//           <td>Eventually consistent (BASE properties)</td>
//         </tr>
//         <tr>
//           <td><strong>Use Cases</strong></td>
//           <td>Complex transactions, structured data (e.g. Banking, ERP)</td>
//           <td>Big Data, real-time apps, flexible data (e.g. IoT, CMS, analytics)</td>
//         </tr>
//       </tbody>
//     </table>
//
//     <p style="color: gray; font-style: italic;">Both SQL and NoSQL have their strengths. The right choice depends on your application's needs.</p>
//   ''';
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           "SQL vs NoSQL",
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
//               colors: [Color(0xFF4B39EF), Color(0xFF9F7AEA)],
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
//
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
//                   padding: const EdgeInsets.all(24),
//                   child: SingleChildScrollView(
//                     scrollDirection: Axis.horizontal,
//                     child: ConstrainedBox(
//                       constraints: BoxConstraints(
//                         maxWidth: MediaQuery.of(context).size.width - 48,
//                       ),
//                       child: Html(
//                         data: data,
//                         extensions: [
//                           const TableHtmlExtension(),
//                         ],
//                         style: {
//                           "h1": Style(
//                             fontSize: FontSize(28),
//                             fontWeight: FontWeight.bold,
//                             color: const Color(0xFF4B39EF),
//                             fontFamily: GoogleFonts.poppins().fontFamily,
//                             margin: Margins.only(bottom: 16),
//                           ),
//                           "p": Style(
//                             fontSize: FontSize(16),
//                             color: Colors.grey.shade800,
//                             lineHeight: const LineHeight(1.5),
//                             fontFamily: GoogleFonts.openSans().fontFamily,
//                             margin: Margins.only(bottom: 12),
//                           ),
//                           "table": Style(
//                             border: Border.all(color: Colors.grey.shade300),
//                             backgroundColor: Colors.white,
//                             margin: Margins.only(top: 16, bottom: 16),
//                           ),
//                           "th": Style(
//                             padding: HtmlPaddings.all(10),
//                             backgroundColor: const Color(0xFF4B39EF),
//                             color: Colors.white,
//                             textAlign: TextAlign.center,
//                             fontFamily: GoogleFonts.poppins().fontFamily,
//                             fontSize: FontSize(15),
//                             fontWeight: FontWeight.w600,
//                           ),
//                           "td": Style(
//                             padding: HtmlPaddings.all(10),
//                             border: Border.all(color: Colors.grey.shade300),
//                             fontFamily: GoogleFonts.openSans().fontFamily,
//                             fontSize: FontSize(14),
//                             color: Colors.grey.shade800,
//                             // backgroundColor: (element, index) =>
//                             // index % 2 == 0 ? Colors.indigo.shade50 : Colors.white,
//                           ),
//                           "p[style*='italic']": Style(
//                             fontStyle: FontStyle.italic,
//                             color: Colors.grey.shade600,
//                             fontFamily: GoogleFonts.openSans().fontFamily,
//                             fontSize: FontSize(15),
//                             margin: Margins.only(top: 20),
//                           ),
//                         },
//                         // customRender: {
//                         //   "table": CustomRender.widget(
//                         //     widget: (context, buildChildren) {
//                         //       return SingleChildScrollView(
//                         //         scrollDirection: Axis.horizontal,
//                         //         child: buildChildren(context),
//                         //       );
//                         //     },
//                         //   ),
//                         // },
//                       ),
//                     ),
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
import 'package:flutter_html_table/flutter_html_table.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../../../services/api_services.dart';

class SqlVsNoSql extends StatefulWidget {
  final int moduleId;

  const SqlVsNoSql({super.key, required this.moduleId});

  @override
  _SqlVsNoSqlState createState() => _SqlVsNoSqlState();
}

class _SqlVsNoSqlState extends State<SqlVsNoSql> {
  late Future<Map<String, dynamic>> _topicFuture;

  @override
  void initState() {
    super.initState();
    print("Initializing SqlVsNoSql with topicId: ${widget.moduleId}");
    _topicFuture = ApiService().getTopicsById(widget.moduleId);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "SQL vs NoSQL",
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
              colors: [Color(0xFF4B39EF), Color(0xFF9F7AEA)],
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

            print("API Response: ${jsonEncode(snapshot.data)}");

            final data = snapshot.data!['Data'] as List<dynamic>?;
            final topicContent = data != null && data.isNotEmpty ? data[1]['topic_Content'] : null;
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
                      colors: [Color(0xFFFFFFFF), Color(0xFFF9F5FF)],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(24),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: ConstrainedBox(
                        constraints: BoxConstraints(
                          maxWidth: MediaQuery.of(context).size.width - 48,
                        ),
                        child: Html(
                          data: htmlData,
                          extensions: [
                            const TableHtmlExtension(),
                          ],
                          style: {
                            "h1": Style(
                              fontSize: FontSize(28),
                              fontWeight: FontWeight.bold,
                              color: const Color(0xFF4B39EF),
                              fontFamily: GoogleFonts.poppins().fontFamily,
                              margin: Margins.only(bottom: 16),
                            ),
                            "p": Style(
                              fontSize: FontSize(16),
                              color: Colors.grey.shade800,
                              lineHeight: const LineHeight(1.5),
                              fontFamily: GoogleFonts.openSans().fontFamily,
                              margin: Margins.only(bottom: 12),
                            ),
                            "table": Style(
                              border: Border.all(color: Colors.grey.shade300),
                              backgroundColor: Colors.white,
                              margin: Margins.only(top: 16, bottom: 16),
                            ),
                            "th": Style(
                              padding: HtmlPaddings.all(10),
                              backgroundColor: const Color(0xFF4B39EF),
                              color: Colors.white,
                              textAlign: TextAlign.center,
                              fontFamily: GoogleFonts.poppins().fontFamily,
                              fontSize: FontSize(15),
                              fontWeight: FontWeight.w600,
                            ),
                            "td": Style(
                              padding: HtmlPaddings.all(10),
                              border: Border.all(color: Colors.grey.shade300),
                              fontFamily: GoogleFonts.openSans().fontFamily,
                              fontSize: FontSize(14),
                              color: Colors.grey.shade800,
                            ),
                            "p[style*='italic']": Style(
                              fontStyle: FontStyle.italic,
                              color: Colors.grey.shade600,
                              fontFamily: GoogleFonts.openSans().fontFamily,
                              fontSize: FontSize(15),
                              margin: Margins.only(top: 20),
                            ),
                          },
                        ),
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