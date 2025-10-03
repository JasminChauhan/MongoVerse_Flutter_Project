// import 'package:flutter/material.dart';
// import 'package:flutter_html/flutter_html.dart';
// import 'package:google_fonts/google_fonts.dart';
//
// class AuthPage extends StatelessWidget {
//   const AuthPage({super.key});
//
//   final String data = '''
// <h1>Authentication & Authorization in MongoDB</h1>
//
// <p><strong>Authentication</strong> verifies user identity, while <strong>Authorization</strong> controls access to resources in MongoDB, ensuring secure data management.</p>
//
// <h2>Authentication Mechanisms</h2>
// <ul>
//   <li><strong>SCRAM:</strong> Default method using username/password.</li>
//   <li><strong>x.509 Certificates:</strong> For client and server authentication.</li>
//   <li><strong>LDAP/Kerberos:</strong> Enterprise-grade external authentication.</li>
// </ul>
//
// <h2>Authorization with RBAC</h2>
// <p>Role-Based Access Control (RBAC) assigns roles to users for specific permissions.</p>
// <pre><code>
// use admin
// db.createUser({
//   user: "appUser",
//   pwd: "password",
//   roles: [{ role: "readWrite", db: "myDB" }]
// })
// </code></pre>
//
// <p style="background-color: #e3f2fd; padding: 10px; border-left: 5px solid #2196f3;">
// Enable authentication with <code>--auth</code> or security settings in config.
// </p>
//
// <h2>Best Practices</h2>
// <ul>
//   <li>Use strong passwords and rotate regularly.</li>
//   <li>Assign least privilege roles to users.</li>
//   <li>Enable TLS/SSL for secure connections.</li>
//   <li>Monitor access with auditing (<code>auditLog</code>).</li>
// </ul>
//
// <p style="font-style: italic; color: gray;">
// Strong authentication and RBAC ensure secure, controlled access to MongoDB.
// </p>
// ''';
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           "Authentication & Authorization",
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
//                     "h3": Style(
//                       fontSize: FontSize(18),
//                       fontWeight: FontWeight.w600,
//                       color: const Color(0xFF6B46C1),
//                       fontFamily: GoogleFonts.poppins().fontFamily,
//                       margin: Margins.only(top: 16, bottom: 10),
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
//                     "ol": Style(
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

class AuthPage extends StatefulWidget {
  final int moduleId;

  const AuthPage({super.key, required this.moduleId});

  @override
  _AuthPageState createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  late Future<Map<String, dynamic>> _topicFuture;

  @override
  void initState() {
    super.initState();
    print("Initializing AuthPage with moduleId: ${widget.moduleId}");
    _topicFuture = ApiService().getTopicsById(widget.moduleId);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Authentication & Authorization",
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
            final topicContent = data != null && data.isNotEmpty ? data[11]['topic_Content'] : null;
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