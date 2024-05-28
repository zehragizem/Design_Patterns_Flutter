import 'package:flutter/material.dart';
import 'package:flutter_yeni/Model/Patterns.dart';

class HomePage extends StatefulWidget {
  final List<Patterns> pattern;
  HomePage(this.pattern);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(

        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Center(
            child: Text(
              widget.pattern[0].kategoriAdi!.toUpperCase(),
              style:TextStyle(fontWeight: FontWeight.bold,fontSize: 25),
            ),
          ),
        ),
        body:SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                       mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          widget.pattern[0].kategoriAdi!.toUpperCase()+" NEDİR?",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      widget.pattern[0].kategoriIcerik!
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Image.asset(
                      widget.pattern[0].patternResim!,
                      width: 420,
                      height: 400,
                    ),
                  ),

                  ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: widget.pattern.length,
                    itemBuilder: (BuildContext context, int index) {
                      if (index == 0) {
                        // Skip displaying the data at index 0
                        return SizedBox.shrink(); // Return an empty SizedBox
                      }
                      return ListTile(
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              widget.pattern[index].kategoriAdi! + " NEDİR?",
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                            ),
                          ],
                        ),
                        subtitle: Text(
                          widget.pattern[index].kategoriIcerik!,
                        ),
                        
                        
                  
                      );
                    },
                  ),
                  SizedBox(height: 15),
                ],
              ),
            ),
      

      ),
    );
  }
}
// ------------------------------------------------
// Function: initState()
// Return Value: None
// Parameters: None
// Description: Initializes db
// ------------------------------------------------
