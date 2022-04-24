import 'package:flutter/material.dart';
import 'package:responsive_screen/size_helpers.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sizes... tamanhos',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FullScrean'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              color: Colors.red,
              //TODO: Agora vamos ver um exemplo de como calcular a altura da tela deduzindo a altura da barra de status e a altura da AppBar.
              width: displayWidth(context) * 0.5,
              height: displayHeight(context) -
                  MediaQuery.of(context).padding.top -
                  kToolbarHeight,
              child: Text(
                'Agora vamos ver um exemplo de como calcular a altura da tela deduzindo a altura da barra de status e a altura da AppBar.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: displayWidth(context) * 0.10),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
