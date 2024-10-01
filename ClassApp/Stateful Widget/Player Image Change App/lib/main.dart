import 'package:flutter/material.dart';

void main() {
  runApp(const PlayersApp());
}

class PlayersApp extends StatefulWidget {
  const PlayersApp({super.key});

  @override
  State<PlayersApp> createState() => _PlayersAppState();
}

class _PlayersAppState extends State<PlayersApp> {
  int count = 0;

  List<String> playerName = <String>[
    "https://i3.wp.com/cdn.britannica.com/25/222725-050-170F622A/Indian-cricketer-Mahendra-Singh-Dhoni-2011.jpg?strip=all",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQp5IMvU5mzUNUAVtUPVexkzgt3cDPUE6113Q&s",
    "https://www.hindustantimes.com/static-content/1y/cricket-logos/players/virat-kohli.png",
    "https://static.india.com/wp-content/uploads/2024/09/Yuvraj-Singh-IPL-Auction.jpg?impolicy=Medium_Widthonly&w=450",
    "https://upload.wikimedia.org/wikipedia/commons/thumb/0/02/Jasprit_Bumrah_in_PMO_New_Delhi.jpg/220px-Jasprit_Bumrah_in_PMO_New_Delhi.jpg",
  ];

  List<String> playerInfo = <String>[
    "Name: MSD, he is the Reknown Batsman",
    "Name: Rohit, he is the Reknown Batsman",
    "Name: Virat, he is the Reknown Batsman",
    "Name: Yuvi, he is the Reknown Batsman",
    "Name: Bumrah, he is the Reknown Baller",
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Players App"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.network(
                playerName[count],
                height: 300,
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                height: 100,
                width: 280,
                child: Text("${playerInfo[count]}"),
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            if (count < playerName.length - 1) {
              count++;
            } else {
              count = 0;
            }
            setState(() {});
          },
          tooltip: 'Increament',
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
