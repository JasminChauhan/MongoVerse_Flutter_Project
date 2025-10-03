// import 'package:flutter/material.dart';
// import 'package:flutter_html/flutter_html.dart';
// import 'package:google_fonts/google_fonts.dart';
//
// class ReplicaSets extends StatelessWidget {
//   ReplicaSets({super.key});
//
//   final String replicaSetHtml = '''
// <h1>Replica Sets in MongoDB</h1>
//
// <p>A <strong>Replica Set</strong> is a group of MongoDB servers that maintain the same dataset, providing <strong>automatic failover</strong>, <strong>data redundancy</strong>, and enhanced read scalability. Replica sets are the foundation of MongoDB's replication system, ensuring high availability and fault tolerance.</p>
//
// <h2>Components of a Replica Set</h2>
// <ul>
//   <li><strong>Primary:</strong> Handles all write operations and coordinates replication. Only one primary is active at a time.</li>
//   <li><strong>Secondary:</strong> Replicates data from the primary asynchronously. Can serve read operations based on read preference settings.</li>
//   <li><strong>Arbiter:</strong> A lightweight node that participates in elections but does not store data. Used to ensure an odd number of voting members.</li>
// </ul>
//
// <h2>Replica Set Behavior</h2>
// <p>When the primary node becomes unavailable (e.g., due to a crash, network issue, or maintenance), an <strong>election</strong> process automatically promotes a secondary to become the new primary. This ensures continuous operation with minimal downtime.</p>
//
// <p style="background-color:#f1f1f1; padding:10px; border-left:4px solid #2196F3;">
// For example, if the primary fails, the replica set initiates an election, and a secondary with the most up-to-date data is promoted, ensuring high availability.
// </p>
//
// <h2>Key Features</h2>
// <ul>
//   <li><strong>Automatic Failover:</strong> Seamless transition to a new primary without manual intervention.</li>
//   <li><strong>Data Redundancy:</strong> Multiple copies of data across nodes prevent data loss.</li>
//   <li><strong>Read Scalability:</strong> Read operations can be distributed to secondaries to balance load.</li>
//   <li><strong>Election Process:</strong> Voting members elect a new primary based on priority and data freshness.</li>
//   <li><strong>Consistency Guarantees:</strong> Write concerns ensure data is replicated to a specified number of nodes before acknowledging writes.</li>
// </ul>
//
// <h2>Replica Set Configuration</h2>
// <p>A replica set is configured using a configuration document. Below is an example of initializing a replica set:</p>
// <pre><code>
// rs.initiate({
//   _id: "myReplicaSet",
//   members: [
//     { _id: 0, host: "mongodb0.example.com:27017", priority: 2 },
//     { _id: 1, host: "mongodb1.example.com:27017", priority: 1 },
//     { _id: 2, host: "mongodb2.example.com:27017", priority: 1 }
//   ]
// })
// </code></pre>
// <p><strong>Key Settings:</strong><br>
// - <code>_id</code>: Unique name for the replica set.<br>
// - <code>host</code>: Address of each member.<br>
// - <code>priority</code>: Higher values increase the likelihood of a member becoming primary.<br>
// - <code>arbiterOnly</code>: Set to true for arbiter nodes.</p>
//
// <h2>Use Cases</h2>
// <ul>
//   <li><strong>High-Availability Applications:</strong> Ensures 24/7 uptime for critical systems.</li>
//   <li><strong>Disaster Recovery:</strong> Maintains data copies for quick recovery after failures.</li>
//   <li><strong>Geo-Distributed Deployments:</strong> Places nodes in different regions for low-latency read access.</li>
//   <li><strong>Read-Heavy Workloads:</strong> Offloads read operations to secondaries for better performance.</li>
// </ul>
//
// <h2>Best Practices</h2>
// <ul>
//   <li>Deploy an odd number of voting nodes (e.g., 3, 5, 7) to avoid split-brain scenarios.</li>
//   <li>Use appropriate read preferences (e.g., <code>primaryPreferred</code>, <code>secondary</code>) for read operations.</li>
//   <li>Configure write concerns (e.g., <code>w: "majority"</code>) for critical operations to ensure data durability.</li>
//   <li>Monitor replica set status using <code>rs.status()</code> or MongoDB monitoring tools.</li>
//   <li>Test failover and recovery procedures regularly to ensure reliability.</li>
// </ul>
//
// <p style="color:gray;"><em>Tip:</em> Use <code>rs.status()</code> to monitor the health, state, and lag of replica set members.</p>
// ''';
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           "Replica Sets in MongoDB",
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
//                   data: replicaSetHtml,
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

class ReplicaSets extends StatefulWidget {
  final int moduleId;

  const ReplicaSets({super.key, required this.moduleId});

  @override
  _ReplicaSetsState createState() => _ReplicaSetsState();
}

class _ReplicaSetsState extends State<ReplicaSets> {
  late Future<Map<String, dynamic>> _topicFuture;

  @override
  void initState() {
    super.initState();
    print("Initializing ReplicaSets with moduleId: ${widget.moduleId}");
    _topicFuture = ApiService().getTopicsById(widget.moduleId);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Replica Sets in MongoDB",
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
        ),
      ),
    );
  }
}