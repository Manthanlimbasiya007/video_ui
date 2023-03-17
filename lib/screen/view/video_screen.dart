import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:video_player/video_player.dart';
import 'package:video_ui/screen/provider/video_provider.dart';

class videoscreen extends StatefulWidget {
  const videoscreen({Key? key}) : super(key: key);

  @override
  State<videoscreen> createState() => _videoscreenState();
}

class _videoscreenState extends State<videoscreen> {
  Videoprovider? videoproviderFalse;
  Videoprovider? videoproviderTrue;

  @override
  void initState() {
    super.initState();
    Provider.of<Videoprovider>(context,listen: false).initVideo();
  }


  @override
  Widget build(BuildContext context) {
    videoproviderFalse = Provider.of<Videoprovider>(context,listen: false);
    videoproviderTrue = Provider.of<Videoprovider>(context,listen: true);


    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("Video Player"),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Container(
              height: 200,
              width: double.infinity,
              child: Chewie(
                controller: videoproviderTrue!.chewieController!,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
