import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
void main()
{
  runApp(MaterialApp(
    home:Lottieanime(),
    debugShowCheckedModeBanner: false,
  ));
}
class Lottieanime extends StatefulWidget {
  const Lottieanime({super.key});

  @override
  State<Lottieanime> createState() => _LottieanimeState();
}

class _LottieanimeState extends State<Lottieanime> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ANIMATION"),
        backgroundColor: Colors.teal,
        automaticallyImplyLeading: false,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:
          [
            Lottie.network('https://assets1.lottiefiles.com/private_files/lf30_QLsD8M.json',
            height:200.0,
            repeat:true,
            reverse:true,
            animate:true,
      ),
            Lottie.network("https://lottiefiles.com/free-animation/the-winner-receives-gold-medal-pnDlDRP9I7",
            height:200.0,
            repeat:true,
            reverse:true,
            animate:true,
            ),
          ]
        ),
      ),
    );
  }
}
