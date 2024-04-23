import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main(List<String> args) {
  runApp(MyApp()); // kendi widgetimizi çalıştırıyoruz
}

String _img1 =
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4Kod9Cna7cUfciQYDYsL5lYkEj6_wuD1mEH_8ixaHtA&s";

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //override yapmalıyız
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Colors
              .orange), // theme kendi altındaki yapıların genel temasını ayarlar
      // MaterialApp hazır bir yapıdır
      home: Scaffold(
        backgroundColor: Colors.white,
        // scaffold hazır bir yapıdır
        appBar: AppBar(
          title: Text("Başlık"),
          backgroundColor: Colors.blue,
        ),
        body: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: expanded
          ),
        ),
        /* body: Container(
          color: Colors.green,    // centerın kapladığı yeri göstermek için container ile wraplayıp renk verdik
          child: Center(    // center widgeti bütün sayfayı kaplar
            // heightFactor: 2,  // çocuğunun girilen katı kadar yükseklik kaplar
            // widthFactor: 2,   // çocugunun girilen katı kadar genişlik kaplar
            // center ortalar
            child: Container(
              // ctrl noktaya basıp wrap with center dedik ve centerın childı yaptı
              width: 200,
              height: 200,
              color: Colors.red,
              alignment: Alignment.center,
              child: Container(
                width: 50,
                height: 50,
                color: Colors.blue,
              ),
            ),
          ),
        ), */
        /* body: Container(
          // alignment: Alignment.center,    // içindekilerin yerini ayarlar bunu kullanıp width belirlemez veya max sınır koymazsak parentının her yerini kaplar
          width: 500,
          height: 300,
          color: Colors.orange,
          child: Text("SELAM HERKESE" * 10),
          margin: EdgeInsets.all(
              20), // margin diğer widgetlar ile olan mesafeyi ayarlar
          padding: EdgeInsets.all(
              10), // padding ise widgetin child'ı ile olan mesafeyi ayarlar

          constraints: BoxConstraints(
              minHeight: 100,
              minWidth: 100,
              maxHeight: 600,
              maxWidth: 600), // min max büyüklükler belirlenir
        ),  */
        /* body: Text(    // body bizden widget bekliyor
          "Merhaba arkadaşlar",
          style: TextStyle(fontSize: 20, color: Colors.amber),
        ), */ // stlye Text widgetinde vardır
        floatingActionButton: FloatingActionButton(
          // button widgetinde onPressed fonksiyonu zorunludur
          onPressed: () {
            debugPrint("Butona tıklandı.");
          },
          backgroundColor: Colors.red,
          child: Icon(
            // icon eklemek için child kullanmalıyız
            Icons.accessibility_outlined,
            color: Colors.black,
          ),
        ),
      ),
    );
  }

  List<Widget> get expanded {
    return [
      Expanded(
        flex: 3,
        child: Container(
          color: Colors.red,
          height: 75,
          width: 75,
        ),
      ),
      Expanded(
        // expanded ekrana sığmayan containerları eşit bir şekilde ekrana sığacak şekilde küçültür
        // expanded yerine Flexible da kullanılabilir farkları = expanded alanı kaplamaya çalışır kendi size'ının da üstüne çıkabilir alan küçülmesi gerekiyorsa küçülür flexible ise kendi size'ının üstüne çıkabilecek olsa bile çıkmaz sadece küçülme olduğunda devreye girer
        flex: 1, // flex ise yazdığımız sayı katı kadar oranda alan ayırır
        child: Container(
          color: Colors.yellow,
          height: 75,
          width: 75,
        ),
      ),
      Expanded(
        flex: 5,
        child: Container(
          color: Colors.blue,
          height: 75,
          width: 75,
        ),
      ),
      Expanded(
        flex: 2,
        child: Container(
          color: Colors.black,
          height: 75,
          width: 75,
        ),
      ),
      Expanded(
        child: Container(
          color: Colors.teal,
          height: 75,
          width: 75,
        ),
      ),
      Expanded(
        child: Container(
          color: Colors.green,
          height: 75,
          width: 75,
        ),
      ),
      Expanded(
        child: Container(
          color: Colors.black,
          height: 75,
          width: 75,
        ),
      ),
      Expanded(
        child: Container(
          color: Colors.teal,
          height: 75,
          width: 75,
        ),
      ),
      Expanded(
        child: Container(
          color: Colors.green,
          height: 75,
          width: 75,
        ),
      ),
    ];
  }

  Widget rowAndColumn() {
    return Container(
      height: 400,
      color: Colors.black,
      child: Row(
        // row yatay olarak column ise dikey olarak sıralama,genişleme vs. sağlar
        // row children içerir oda liste içerir ve birden şey ekleyebiliriz örneği iconlar
        mainAxisAlignment: MainAxisAlignment
            .spaceEvenly, // elemanların aralarını vs. ayarlamayı sağlar
        mainAxisSize: MainAxisSize
            .max, // containerin kaplayabileceği max alanı kaplamasını sağlar column ve rowa göre yatay veya dikey alana yayılır max olduğu zaman
        crossAxisAlignment:
            CrossAxisAlignment.center, // y ekseninde ortalamamızı sağlar
        children: [
          Icon(
            Icons.add_alarm_outlined,
            size: 64,
            color: Colors.red,
          ),
          Icon(
            Icons.add_alarm_outlined,
            size: 64,
            color: Colors.red,
          ),
          Icon(
            Icons.add_alarm_outlined,
            size: 64,
            color: Colors.red,
          ),
          Icon(
            Icons.add_alarm_outlined,
            size: 64,
            color: Colors.red,
          )
        ],
      ),
    );
  }

  Widget imageLogo() {
    return Center(
      child: Container(
        padding: EdgeInsets.all(10), // logoyu containerden uzaklaştırırız
        child: FlutterLogo(
          style: FlutterLogoStyle.horizontal, // flutter yazısını çıkarır
          textColor: Colors.red,
          size: 200,
        ),
        decoration: BoxDecoration(
            // box decoration içerisine image alabilir
            color: Colors.black,
            shape: BoxShape.circle,
            image:
                DecorationImage(image: NetworkImage(_img1), fit: BoxFit.cover),
            boxShadow: [
              // box shadowdan bir tane kullanacak bile olsak bir liste oluşturmalıyız
              BoxShadow(
                  color: Colors.orange, offset: Offset(10, 10), blurRadius: 10),
              BoxShadow(
                  color: Colors.red, blurRadius: 20, offset: Offset(-10, -10))
            ]),
      ),
    );
  }
}
