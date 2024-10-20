import 'package:flutter/material.dart';

class SebhaTab extends StatefulWidget {

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> with TickerProviderStateMixin{
  String text = "سبحان الله";
  int counter = 0;
  late AnimationController controller;
  late Animation <double> animation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = AnimationController(vsync: this , duration: Duration(seconds: 3),);
    animation = CurvedAnimation(parent: controller, curve: Curves.easeIn);

    controller.repeat();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Center(
          child: Stack(
            clipBehavior: Clip.none,// wrap with RotationTransition
            children: [
              Positioned(
                top: -70,
                left: 70,
                child: Image.asset(
                  "assets/images/head_sebha_logo.png",
                ),
              ),
              RotationTransition(
                turns: animation,
                child: Image.asset(
                  "assets/images/body_sebha_logo.png",
                ),
              ),

            ],
          ),
        ),
        Text(
          "عدد التسبيحات",
          style: Theme.of(context).textTheme.titleMedium,
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Text(
            counter.toString(),
            style: Theme.of(context).textTheme.bodySmall,
          ),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.secondary,
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        InkWell(
          onTap: onClick,
          child: Container(
            padding: EdgeInsets.all(10),
            child: Text(
              text,
              style: Theme.of(context).textTheme.bodySmall,
            ),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.onPrimaryContainer,
              borderRadius: BorderRadius.circular(30),
            ),
          ),
        ),

      ],
    );
  }


  onClick(){
    setState(() {
      counter++;
      if(counter == 30) {
        if (text == "سبحان الله") {
          counter = 0;
          text = "الحمد لله";
        }
        else if (text == "الحمد لله"){
          counter = 0;
          text = "لا إله إلا الله";
        }
        else if (text == "لا إله إلا الله"){
          counter = 0;
          text = "الله أكبر";
        }
        else if (text == "الله أكبر"){
          counter = 0;
          text ="سبحان الله";
        }

      }
    });

  }
}
