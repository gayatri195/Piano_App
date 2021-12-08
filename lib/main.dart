import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';

void main() => 
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: PianoApp(),
  ));


class PianoApp extends StatelessWidget {
  List<Widget> getWhiteButton(){
    List<Widget> whitebutton =[];

    for(int i=0; i<36; i++){
      whitebutton.add( Expanded(
            child: TextButton(
                  onPressed: (){
                    AssetsAudioPlayer.newPlayer().open(
                      Audio("assets/note$i.mp3"),

                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0)
                  )),
                )
              
            ),
          );
    }

    return whitebutton;
  }

  List<Widget> getBlackButton(){
    List<Widget> blackbutton =[];

    for(int i=0; i<25; i++){
      blackbutton.add( Expanded(
            child: TextButton(
                  onPressed: (){
                    AssetsAudioPlayer.newPlayer().open(
                      Audio("assets/flat$i.mp3"),

                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(20.0)
                  )),
                )
              
            ),
          );
    }

    return blackbutton;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            child: Column(
              children: getWhiteButton(),
            ), ),
          Expanded(
            child: Column(
              children: getBlackButton(),
            ),
          ),
        ],
      ),
      
    );
  }
}
