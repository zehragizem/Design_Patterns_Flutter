import 'package:flutter/material.dart';
import 'package:flutter_yeni/Model/Patterns.dart';
import 'package:flutter_yeni/Model/kategori.dart';
import 'package:flutter_yeni/icerikPage.dart';

class KategoriPage extends StatefulWidget {
  final int kategori_index;
  final List<Patterns> pattern;
  final List<Kategori> kategoriler;
  KategoriPage({required this.kategori_index, required this.kategoriler, required this.pattern});

  @override
  State<KategoriPage> createState() => _KategoriPageState();
}

class _KategoriPageState extends State<KategoriPage> {
  void initState() {
    _controller = ScrollController();
    super.initState();
  }
  late final ScrollController _controller;
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _controller.animateTo(
        0.0,
        duration: Duration(milliseconds:4),
        curve: Curves.easeInOut,
      );
    });
    
    // Kategori id'sine göre kategori adını ve ilgili içerikleri bulma
    List<Kategori> kategorilerListesi = [];

    for (var kategori in widget.kategoriler) {
      if (kategori.kategoriId == widget.kategori_index) {
        kategorilerListesi.add(kategori);
      }
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Center(
          child: Text(
            widget.pattern[widget.kategori_index].kategoriAdi!,
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        controller: _controller,
        child: Column(
          children: [
            SizedBox(height: 10),
            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // You can change the number of columns here
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
                childAspectRatio: 1.0, // You can adjust the aspect ratio according to your UI design
              ),
              itemCount: kategorilerListesi.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => IcerikDetaySayfasi(
                          kategori: kategorilerListesi[index],
                        ),
                      ),
                    );
                  },
       
                  child: Card(
                   color: Colors.white,
                    elevation: 2.0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(kategorilerListesi[index].altKategoriResim!),
                       
                        Text(
                          kategorilerListesi[index].altKategoriAdi!,
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize:17),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
