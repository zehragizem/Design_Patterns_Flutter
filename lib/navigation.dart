import 'package:flutter/material.dart';
import 'package:flutter_yeni/Model/Patterns.dart';
import 'package:flutter_yeni/Model/kategori.dart';


import 'package:flutter_yeni/home.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter_yeni/kategoriPage.dart';



class Navigation extends StatefulWidget {
  final List<Patterns> pattern;
  final List<Kategori> kategoriler;
  Navigation(this.pattern,this.kategoriler);

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  Widget getWidget({required int index,required List<Kategori> kategoriler,required List<Patterns>pattern}){
      Widget widget;
      
      switch(index){
        case 0:
          widget=HomePage(pattern);
          break;
        default:
          widget=KategoriPage(kategori_index: index, kategoriler: kategoriler,pattern: pattern,);

      }
      return widget;

    }
  int index=0;
  final items=[
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.home, color: Colors.white, size: 28),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Ana Sayfa', style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.bold)),
          ],
        ),
      ],
    ),
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.work, color: Colors.white, size: 28),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Creational', style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.bold)),
          ],
        ),
      ],
    ),
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.build, color: Colors.white, size: 28),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Structural', style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.bold)),
          ],
        ),
      ],
    ),
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.psychology, color: Colors.white, size: 28),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Behavioral', style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.bold)),
          ],
        ),
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {

    return Container(
      color: Colors.green.shade300,
      child: SafeArea(
        top:false,
        child: Scaffold(
           bottomNavigationBar: CurvedNavigationBar(
            animationDuration: Duration(milliseconds:600),
            height: 60,
            backgroundColor: Colors.green,
            buttonBackgroundColor: Colors.green,
             color: Colors.green.shade300,
            items: items,
            index: index,
               onTap: (index) {
              // setState kullanarak index değerini güncelle
              setState(() {
                this.index = index;
              });
             
              // Kullanıcının konumunu sıfırla
              
            },
            
          ),

          body:getWidget(index: index, kategoriler: widget.kategoriler, pattern: widget.pattern)



    ),),
    );

 
  }
     
}