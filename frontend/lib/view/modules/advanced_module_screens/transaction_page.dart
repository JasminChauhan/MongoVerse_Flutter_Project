// import 'package:flutter/material.dart';
// import 'package:flutter_html/flutter_html.dart';
// import 'package:google_fonts/google_fonts.dart';
//
// class TransactionsPage extends StatelessWidget {
//   const TransactionsPage({super.key});
//
//   final String data = '''
// <h1>Transactions in MongoDB</h1>
//
// <p><strong>Transactions</strong> in MongoDB allow multiple operations on one or more documents to be executed as a single atomic unit, ensuring data consistency and integrity. Introduced in MongoDB 4.0 for replica sets and extended to sharded clusters in 4.2, transactions support ACID properties (Atomicity, Consistency, Isolation, Durability).</p>
//
// <h2>Why Use Transactions?</h2>
// <ul>
//   <li>Ensures <strong>all-or-nothing</strong> execution for multi-document operations</li>
//   <li>Maintains data consistency in complex operations across multiple collections</li>
//   <li>Supports applications requiring strict data integrity, like financial systems</li>
// </ul>
//
// <h2>How Transactions Work</h2>
// <p>Transactions in MongoDB are managed using a <strong>session</strong>. Operations within a transaction are executed sequentially, and changes are only committed if the transaction completes successfully. If any operation fails, the transaction is aborted, and all changes are rolled back.</p>
//
// <p style="background-color: #e3f2fd; padding: 10px; border-left: 5px solid #2196f3;">
// Transactions are ideal for scenarios where multiple operations must succeed together, such as transferring funds between accounts.
// </p>
//
// <h2>Transaction Example</h2>
// <p>Below is an example of a MongoDB transaction in JavaScript using the MongoDB Node.js driver:</p>
// <pre><code>
// const client = new MongoClient(uri);
// async function run() {
//   const session = client.startSession();
//   try {
//     await session.withTransaction(async () => {
//       const accounts = client.db("bank").collection("accounts");
//       await accounts.updateOne(
//         { accountId: "A1" },
//         { \$inc: { balance: -100 } },
//         { session }
//       );
//       await accounts.updateOne(
//         { accountId: "A2" },
//         { \$inc: { balance: 100 } },
//         { session }
//       );
//     });
//   } finally {
//     await session.endSession();
//   }
// }
// run().catch(console.dir);
// </code></pre>
//
// <h2>Key Features of Transactions</h2>
// <ul>
//   <li><strong>Atomicity:</strong> All operations in a transaction are applied as a single unit, or none are applied.</li>
//   <li><strong>Consistency:</strong> Transactions maintain database consistency, even across multiple documents or collections.</li>
//   <li><strong>Isolation:</strong> Operations within a transaction are isolated from other operations until committed.</li>
//   <li><strong>Durability:</strong> Committed transactions are permanently saved, even in case of a crash.</li>
// </ul>
//
// <h2>Transactions in Sharded Clusters</h2>
// <ul>
//   <li>Supported since MongoDB 4.2</li>
//   <li>Coordinates operations across multiple shards using a two-phase commit</li>
//   <li>Ensures data consistency across distributed systems</li>
// </ul>
//
// <h2>Best Practices</h2>
// <ul>
//   <li>Keep transactions short to minimize locking and improve performance.</li>
//   <li>Use transactions only when multi-document atomicity is required.</li>
//   <li>Monitor transaction metrics using <code>db.currentOp()</code> to identify long-running transactions.</li>
//   <li>Ensure proper error handling to avoid uncommitted transactions.</li>
//   <li>Test transaction behavior under failure scenarios to ensure reliability.</li>
// </ul>
//
// <p style="font-style: italic; color: gray;">
// MongoDB transactions provide robust support for complex, multi-document operations while maintaining ACID compliance.
// </p>
// ''';
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           "Transactions in MongoDB",
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
//               colors: [Colors.red, Colors.pink],
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
//               BoxShadow(
//               color: Colors.grey.shade200,
//                 blurRadius: 6,
//                 offset: const Offset(0 ,3),
//               ),
//               ],
//             ),
//             child: Padding(
//               padding: const EdgeInsets.all(10),
//               child: Html(
//                 data: data,
//                 style: {
//                   "h1": Style(
//                     fontSize: FontSize(28),
//                     fontWeight: FontWeight.bold,
//                     color: const Color(0xFF4B39EF),
//                     fontFamily: GoogleFonts.poppins().fontFamily,
//                     margin: Margins.only(bottom: 16),
//                   ),
//                   "h2": Style(
//                     fontSize: FontSize(22),
//                     fontWeight: FontWeight.w600,
//                     color: const Color(0xFF6B46C1),
//                     fontFamily: GoogleFonts.poppins().fontFamily,
//                     margin: Margins.only(top: 20, bottom: 12),
//                   ),
//                   "h3": Style(
//                     fontSize: FontSize(18),
//                     fontWeight: FontWeight.w600,
//                     color: const Color(0xFF6B46C1),
//                     fontFamily: GoogleFonts.poppins().fontFamily,
//                     margin: Margins.only(top: 16, bottom: 10),
//                   ),
//                   "p": Style(
//                     fontSize: FontSize(16),
//                     color: Colors.grey.shade800,
//                     lineHeight: const LineHeight(1.5),
//                     fontFamily: GoogleFonts.openSans().fontFamily,
//                     margin: Margins.only(bottom: 12),
//                   ),
//                   "ul": Style(
//                     padding: HtmlPaddings.only(left: 20, bottom: 12),
//                   ),
//                   "ol": Style(
//                     padding: HtmlPaddings.only(left: 20, bottom: 12),
//                   ),
//                   "li": Style(
//                     fontSize: FontSize(16),
//                     color: Colors.grey.shade800,
//                     fontFamily: GoogleFonts.openSans().fontFamily,
//                     margin: Margins.only(bottom: 8),
//                   ),
//                   "code": Style(
//                     backgroundColor: const Color(0xFFECEFF1),
//                     padding: HtmlPaddings.symmetric(horizontal: 8, vertical: 4),
//                     fontFamily: 'RobotoMono',
//                     fontSize: FontSize(14),
//                     color: const Color(0xFF2F855A),
//                   ),
//                   "pre": Style(
//                     backgroundColor: const Color(0xFFECEFF1),
//                     padding: HtmlPaddings.all(10),
//                     fontFamily: 'RobotoMono',
//                     fontSize: FontSize(14),
//                     color: const Color(0xFF2F855A),
//                   ),
//                 },
//               ),
//             ),
//           ),
//         ),
//       ),
//     ),
//     );
//   }
// }





import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../../../services/api_services.dart';

class TransactionsPage extends StatefulWidget {
  final int moduleId;

  const TransactionsPage({super.key, required this.moduleId});

  @override
  _TransactionsPageState createState() => _TransactionsPageState();
}

class _TransactionsPageState extends State<TransactionsPage> {
  late Future<Map<String, dynamic>> _topicFuture;

  @override
  void initState() {
    super.initState();
    print("Initializing TransactionsPage with moduleId: ${widget.moduleId}");
    _topicFuture = ApiService().getTopicsById(widget.moduleId);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Transactions in MongoDB",
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
              colors: [Colors.red, Colors.pink],
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
                        "h3": Style(
                          fontSize: FontSize(18),
                          fontWeight: FontWeight.w600,
                          color: const Color(0xFF6B46C1),
                          fontFamily: GoogleFonts.poppins().fontFamily,
                          margin: Margins.only(top: 16, bottom: 10),
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
                        "ol": Style(
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
        ),
      ),
    );
  }
}