import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Flutter Course'), backgroundColor: Colors.teal),
      body: Container(
        width: 200.0,
        //color: Colors.orange,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 10.0),
                child: Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(20.0)),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  width: 200.0,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      const Image(
                        image: NetworkImage(
                            'https://cdn-prod.medicalnewstoday.com/content/images/articles/322/322868/golden-retriever-puppy.jpg'),
                        height: 200.0,
                        width: 200.0,
                        fit: BoxFit.cover,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        width: double.infinity,
                        color: Colors.black.withOpacity(.7),
                        child: const Text(
                          'Nutella',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 20.0, color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
