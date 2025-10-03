// import 'package:flutter/material.dart';
// import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
// import 'package:html/dom.dart' as dom;
//
// void main() {
//   runApp(const MaterialApp(home: HtmlTestPage()));
// }
//
// class HtmlTestPage extends StatelessWidget {
//   const HtmlTestPage({super.key});
//
//   final String content = '''
//     <h1>Hello, World!</h1>
//     <p><i>flutter_widget_from_html</i> supports HTML rendering.</p>
//     <p><flutter></flutter></p>
//     <p class="fancy">Styled paragraph here!</p>
//   ''';
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text("Custom HTML Styling")),
//       body: SingleChildScrollView(
//         padding: const EdgeInsets.all(16),
//         child: HtmlWidget(
//           content,
//           customWidgetBuilder: (element) {
//             // Handle <flutter> tag
//             if (element.localName == 'flutter') {
//               return const FlutterLogo(size: 50);
//             }
//
//             // Handle <p class="fancy"> styling
//             if (element.localName == 'p' && element.classes.contains('fancy')) {
//               return Container(
//                 padding: const EdgeInsets.all(12),
//                 margin: const EdgeInsets.symmetric(vertical: 8),
//                 decoration: BoxDecoration(
//                   color: Colors.blue.shade100,
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//                 child: Text(
//                   element.text,
//                   textAlign: TextAlign.center,
//                   style: const TextStyle(
//                     fontWeight: FontWeight.bold,
//                     fontSize: 16,
//                   ),
//                 ),
//               );
//             }
//
//             return null; // fallback to default rendering
//           },
//         ),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';


class FileView extends StatelessWidget {
  const FileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("flutter_html test")),
      body: SingleChildScrollView(
        child: Html(
          data: """<div>
                        <h1>Hello, World!</h1>
            <p><i>flutter_html</i> supports HTML rendering.</p>
            <p class="fancy">Fancy paragraph with custom style.</p>
                  </div>
            
          """,
          style: {
            "p.fancy": Style(
              // backgroundColor: Colors.pink.shade100,
              padding: HtmlPaddings.all(16),
              textAlign: TextAlign.center,
              fontWeight: FontWeight.bold,
            ),
            "h1": Style(
              // backgroundColor: Colors.blueAccent,
              fontWeight: FontWeight.bold,
              fontSize: FontSize(45),
              padding: HtmlPaddings.all(60)
            ),
            "body":Style(
              backgroundColor: Colors.black87,
              color: Colors.white
            )
          },
          
        ),
      ),
    );
  }
}
