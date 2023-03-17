import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:video_ui/screen/provider/video_provider.dart';
import 'package:video_ui/screen/view/video_screen.dart';

void main()
{
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (context) => Videoprovider(),
      )
    ],
    child: MaterialApp(
     debugShowCheckedModeBanner: false,
     routes: {
       '/':(context) => videoscreen(),
     },
    ),
  ));
}
