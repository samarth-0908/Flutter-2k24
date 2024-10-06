import "package:flutter/material.dart";

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Netflix Demo',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w500,
              backgroundColor: Colors.blue,
            ),
          ),
        ),
        body: ListView.builder(
          itemCount: 10,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                const Text("Action Movies",style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                ),),

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(5),
                        width: 200,
                        height: 300,
                        child: Image.network("https://m.media-amazon.com/images/M/MV5BMjE0Nzg2MzI3MF5BMl5BanBnXkFtZTYwMjExODQ3._V1_.jpg"),
                      ),

                      Container(
                        padding: EdgeInsets.all(5),
                        width: 200,
                        height: 300,
                        child: Image.network("https://m.media-amazon.com/images/M/MV5BMjE0Nzg2MzI3MF5BMl5BanBnXkFtZTYwMjExODQ3._V1_.jpg"),
                      ),

                      Container(
                        padding: EdgeInsets.all(5),
                        width: 200,
                        height: 300,
                        child: Image.network("https://m.media-amazon.com/images/M/MV5BMjE0Nzg2MzI3MF5BMl5BanBnXkFtZTYwMjExODQ3._V1_.jpg"),
                      ),

                      Container(
                        padding: EdgeInsets.all(5),
                        width: 200,
                        height: 300,
                        child: Image.network("https://m.media-amazon.com/images/M/MV5BMjE0Nzg2MzI3MF5BMl5BanBnXkFtZTYwMjExODQ3._V1_.jpg"),
                      ),

                      Container(
                        padding: EdgeInsets.all(5),
                        width: 200,
                        height: 300,
                        child: Image.network("https://m.media-amazon.com/images/M/MV5BMjE0Nzg2MzI3MF5BMl5BanBnXkFtZTYwMjExODQ3._V1_.jpg"),
                      ),

                      Container(
                        padding: EdgeInsets.all(5),
                        width: 200,
                        height: 300,
                        child: Image.network("https://m.media-amazon.com/images/M/MV5BMjE0Nzg2MzI3MF5BMl5BanBnXkFtZTYwMjExODQ3._V1_.jpg"),
                      ),

                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
