// import 'package:flutter/material.dart';
// import 'package:flutter_html/flutter_html.dart';
// import 'package:google_fonts/google_fonts.dart';
//
// class MongoDBInstallation extends StatelessWidget {
//   MongoDBInstallation({super.key});
//
//   final String data = '''
//   <h1>🔧 MongoDB Installation & Setup</h1>
//
//   <p><strong>MongoDB</strong> is a NoSQL database that's easy to install and set up for local or cloud development. Follow these steps to get started quickly.</p>
//
//   <h2>📌 Installation Steps</h2>
//   <ul>
//     <li><strong>Download MongoDB</strong>: Visit <a href="https://www.mongodb.com/try/download/community">MongoDB Community Edition</a> and select your OS (Windows, macOS, Linux).</li>
//     <li><strong>Install MongoDB</strong>: Run the installer and follow the prompts. Choose "Complete" setup for default settings.</li>
//     <li><strong>Add to PATH</strong>: Ensure MongoDB's <code>bin</code> folder (e.g., <code>C:\\Program Files\\MongoDB\\Server\\7.0\\bin</code>) is in your system's PATH for CLI access.</li>
//     <li><strong>Start MongoDB</strong>: Run <code>mongod</code> in terminal to start the server. Use <code>mongo</code> or <code>mongosh</code> to access the MongoDB shell.</li>
//     <li><strong>Verify Installation</strong>: In the shell, type <code>db.version()</code> to check the MongoDB version.</li>
//   </ul>
//
//   <h2>🧩 MongoDB Atlas (Cloud Option)</h2>
//   <ul>
//     <li><strong>Sign Up</strong>: Create an account at <a href="https://www.mongodb.com/cloud/atlas">MongoDB Atlas</a>.</li>
//     <li><strong>Create Cluster</strong>: Choose a cloud provider (AWS, GCP, Azure) and set up a free-tier cluster.</li>
//     <li><strong>Connect</strong>: Get the connection string from Atlas and use it in your app or MongoDB Compass.</li>
//   </ul>
//
//   <h2>📄 Example: Start MongoDB Locally</h2>
//   <pre><code># Create data directory (if needed)
// mkdir -p ~/data/db
//
// # Start MongoDB server
// mongod --dbpath ~/data/db
//
// # Connect via MongoDB shell
// mongosh
//
// # Test database creation
// use myDB
// db.myCollection.insertOne({ name: "Jasmin", age: 22 })
// </code></pre>
//
//   <h2>⚙️ Tools to Use</h2>
//   <ul>
//     <li><strong>MongoDB Compass</strong>: GUI for managing databases.</li>
//     <li><strong>MongoDB Shell (mongosh)</strong>: CLI for queries and admin tasks.</li>
//     <li><strong>Drivers</strong>: Use MongoDB drivers for languages like Node.js, Python, or Dart for app integration.</li>
//   </ul>
//
//   <blockquote>
//     <em>MongoDB's setup is straightforward, whether running locally or in the cloud with Atlas.</em>
//   </blockquote>
//
//   <h2>🧠 Quick Summary</h2>
//   <ul>
//     <li>Download and install MongoDB Community Edition for local use.</li>
//     <li>Use MongoDB Atlas for cloud-based setup with minimal effort.</li>
//     <li>Connect via shell, Compass, or app drivers for development.</li>
//   </ul>
//   ''';
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           "MongoDB Installation",
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

class MongoDBInstallation extends StatefulWidget {
  final int moduleId;

  const MongoDBInstallation({super.key, required this.moduleId});

  @override
  _MongoDBInstallationState createState() => _MongoDBInstallationState();
}

class _MongoDBInstallationState extends State<MongoDBInstallation> {
  late Future<Map<String, dynamic>> _topicFuture;

  @override
  void initState() {
    super.initState();
    print("Initializing MongoDBInstallation with moduleId: ${widget.moduleId}");
    _topicFuture = ApiService().getTopicsById(widget.moduleId);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "MongoDB Installation",
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
            final topicContent = data != null && data.isNotEmpty ? data[7]['topic_Content'] : null;
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