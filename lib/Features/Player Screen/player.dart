import 'package:flutter/material.dart';
import 'package:mood_fix/Constants/colors.dart';
import 'package:audioplayers/audioplayers.dart';

class PlayerScreen extends StatefulWidget {
  const PlayerScreen({super.key});

  @override
  State<PlayerScreen> createState() => _PlayerScreenState();
}

class _PlayerScreenState extends State<PlayerScreen> {

  final player = AudioPlayer();
  @override
  Widget build(BuildContext context) {

    player.setSourceUrl("https://file-examples.com/storage/fed001dfc36547d0292f8e5/2017/11/file_example_MP3_700KB.mp3");
    
    return Scaffold(
      backgroundColor: appBlue,
      body:  SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
            // Song Title
            const Text(
              'Believer',
              style: TextStyle(color: Colors.white, fontSize: 22),
            ),
            // Song Auther Or Singer
            const Text(
              'Imagine Dragons',
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.w200, fontSize: 18),
            ),
            ElevatedButton(onPressed: () async {
              print(player.state);

              

            if(player.state == PlayerState.stopped || player.state == PlayerState.paused || player.state == PlayerState.completed){

             player.resume();
             
             }
              
             if(player.state == PlayerState.playing){
              player.pause();

             
             }
              
            }, child: const Text('Play'))

            
                  ],
                ),
          )),
    );
  }
}
