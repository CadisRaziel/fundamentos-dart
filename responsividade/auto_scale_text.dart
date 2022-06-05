// import 'package:flutter/material.dart';

// class RegrasLayout extends StatefulWidget {
//   const RegrasLayout({Key? key}) : super(key: key);

//   @override
//   _RegrasLayoutState createState() => _RegrasLayoutState();
// }

// class _RegrasLayoutState extends State<RegrasLayout> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text('Layout Builder'),
//         ),
//         body: Row(children: [
//           Container(
//               color: Colors.orange,
//               width: MediaQuery.of(context).size.width / 2,
//               // width: 300,
//               height: MediaQuery.of(context).size.height / 2,
//               child: LayoutBuilder(builder: (context, constraint) {
//                 var largura = constraint.maxWidth;
//                 var altura = constraint.maxHeight;
//                 print('Largura: $largura' ' Altura:' '$altura');
//                 return Center(
//                   child: Text('Salles',
//                     style: TextStyle(
//                       fontSize: ((altura * 2) + ( largura * 2)) * 0.01,
//                       // Perimetro: tamanho
//                     ),
//                   ),
//                 );

//               })),
//           Container(
//               color: Colors.green,
//               width: MediaQuery.of(context).size.width / 2,
//               // width: 300,
//               height: MediaQuery.of(context).size.height / 2,
//               child: LayoutBuilder(builder: (context, constraint) {
//                 var largura = constraint.maxWidth;
//                 var altura = constraint.maxHeight;
//                 print('Largura: $largura' ' Altura:' '$altura');
//                 return Center(
//                   child: Text('Salles',
//                     style: TextStyle(
//                       fontSize: MediaQuery.of(context).size.height * 0.02,
//                     ),
//                   ),
//                 );


//               }))
//         ]));
//   }
// }
