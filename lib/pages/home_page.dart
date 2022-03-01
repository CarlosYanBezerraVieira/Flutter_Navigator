import 'package:flutter/material.dart';
import 'package:flutter_navigator/pages/detalhe_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Column(
          children: [
            TextButton(
              child: Text("ir para Detalhe "),
              onPressed: () {
                Navigator.of(context).pushNamed(
                  "/detalhe",
                  arguments: "Parametro X",
                );
              },
            ),
            TextButton(
              child: Text("ir para Detalhe PageRouter "),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (_) => DetalhePage(
                    parametro: 'Parametro pelo PageRoute',
                  ),
                  settings: RouteSettings(
                    name: "/detalhe",

                    // arguments: "Parametro pelo PageRouter",
                  ),
                ));
              },
            ),
          ],
        ),
      ),
    );
  }
}
