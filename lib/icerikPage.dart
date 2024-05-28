import 'package:flutter/material.dart';
import 'package:flutter_yeni/Model/kategori.dart';
import 'package:flutter_yeni/codeBlock.dart';
import 'package:url_launcher/url_launcher.dart';

class IcerikDetaySayfasi extends StatelessWidget {
  final Kategori kategori;

  IcerikDetaySayfasi({required this.kategori});

  @override
  Widget build(BuildContext context) {
    String getLanguageLabel(String imagePath) {
      switch (imagePath) {
        case 'images/java.png':
          return 'Java';
        case 'images/python.png':
          return 'Python';
        case 'images/cpp.png':
          return 'C++';
        default:
          return '?';
      }
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                kategori.altKategoriAdi!.toUpperCase(),
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () => Navigator.pop(context),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  kategori.altKategoriAdi! + " Tasarım Deseni",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  kategori.altKategoriIcerik!,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                if (kategori.altKategoriAdiList != null &&
                    kategori.altKategoriIcerikList != null)
                  for (int i = 0; i < kategori.altKategoriAdiList!.length; i++)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          kategori.altKategoriAdiList![i],
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                        ),
                        kategori.altKategoriIcerikList![i].endsWith('.png') ||
                                kategori.altKategoriIcerikList![i]
                                    .endsWith('.jpg')
                            ? Image.asset(
                                kategori.altKategoriIcerikList![i],
                                width: 550,
                                height: 450,
                              )
                            : Text(kategori.altKategoriIcerikList![i]),
                      ],
                    ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: kategori.umlDiagram != null
                        ? kategori.umlDiagram!.map((uml) {
                            return Expanded(
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 4),
                                child: Image.asset(
                                  uml,
                                  width: 450,
                                  height: 500,
                                ),
                              ),
                            );
                          }).toList()
                        : [], // kategori.umlDiagram null ise, boş bir liste döndürür
                  ),
                ),
                Text(
                  "YOUTUBE KAYNAKLARI",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
                Column(
                  children: kategori.linkler!.map((url) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 1),
                      child: Expanded(
                        child: TextButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.transparent),
                          ),
                          onPressed: () async {
                            if (await canLaunch(url)) {
                              await launch(url, forceSafariVC: true);
                            }
                          },
                          child: Row(
                            children: [
                              Image.network(
                                "https://static.vecteezy.com/system/resources/previews/018/930/572/non_2x/youtube-logo-youtube-icon-transparent-free-png.png",
                                width: 40,
                                height: 40,
                              ),
                              SizedBox(width: 10),
                              Flexible(
                                child: Text(
                                  url,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(color: Colors.black),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "KOD ÖRNEKLERİ",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: kategori.kodlar!.entries.map((entry) {
                      String imagePath = entry.key;
                      String label = entry.value;
                      String languageLabel = getLanguageLabel(imagePath); 
                      return Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => CodeBlock(label,languageLabel),
                                ),
                              );
                            },
                            child: Image.asset(
                              imagePath,
                              width: 40,
                              height: 40,
                            ),
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
