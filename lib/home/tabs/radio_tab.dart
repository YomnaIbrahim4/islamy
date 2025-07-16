import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:islami_project/home/view_model/radio_view_model.dart';
import 'package:islami_project/home/widget/radio_item.dart';

class RadioTab extends StatelessWidget {

  RadioTab({super.key});
  AudioPlayer player = AudioPlayer();


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 16,),
        Image.asset("assets/images/radio_image.png"),
        FutureBuilder(future:RadioViewModel.getRadioData(), builder: (context, snapshot) {

          if(snapshot.connectionState == ConnectionState.waiting){
            return const Center(child: CircularProgressIndicator(),);
          }
          else if(snapshot.hasError){
            return Text("Error ${snapshot.error}");
          }
          else if(snapshot.hasData){
            var radios = snapshot.data!;
            return  Expanded(
              child: ListView.builder(
                physics: PageScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  var radioData = radios[index];
                  return RadioItem(radio:radioData,player: player,);
                },
              ),
            );
          }
          return Text(
            "Something went wrong",
            style: TextStyle(
              color: Colors.black,
            ),
          );



        },
        )

      ],
    );
  }
}
