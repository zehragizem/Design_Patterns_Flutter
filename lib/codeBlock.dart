import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/qtcreator_light.dart';


class CodeBlock extends StatelessWidget {
  final String codeFilePath;
  final String language;
  CodeBlock(this.codeFilePath,this.language);

  Future<String> _readCodeFromFile(String filePath) async {
    try {
      File file = File(filePath);
      return await file.readAsString();
    } catch (e) {
      print("Error reading file: $e");
      return "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              language+" Kodu",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      body: FutureBuilder<String>(
        future: _readCodeFromFile(codeFilePath),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text("Error: ${snapshot.error}"));
          } else {
            return SingleChildScrollView(
              child: Expanded(
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: HighlightView(
                  snapshot.data ?? "",
                  language: language,
                  theme: qtcreatorLightTheme,
                ),
              ),
              ),
            );
          }
        },
      ),
    );
  }
}
