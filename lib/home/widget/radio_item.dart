import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import '../model/Radios.dart';

class RadioItem extends StatefulWidget {
  const RadioItem({super.key, required this.radio, required this.player});
  final Radios radio;
  final AudioPlayer player;

  @override
  State<RadioItem> createState() => _RadioItemState();
}

class _RadioItemState extends State<RadioItem> {
  bool isClicked = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
            "${widget.radio.name??""}",
          style:Theme.of(context).textTheme.bodyLarge,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.arrow_circle_left_sharp,
                size: 40,
                color: Color(0xFF737610),
              ),
              IconButton(
                  onPressed:togglePlayBack,
                  icon: Icon(
                    isClicked == false? Icons.play_circle : Icons.pause,
                    size: 80,
                    color: const Color(0xFF737610),
                  )
              ),
              Icon(
                Icons.arrow_circle_right_sharp,
                size: 40,
                color: Color(0xFF737610),
              )
            ],
          ),
        ),
      ],
    );
  }

  void togglePlayBack()async{
    if(isClicked){
      await widget.player.pause();
    }
    else{
      await widget.player.play(UrlSource(widget.radio.url??""));
    }
    setState(() {
      isClicked = !isClicked;
    });

  }
}
