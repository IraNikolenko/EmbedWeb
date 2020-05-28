import 'package:flutter/material.dart';
import 'package:platform_view_sample/src/WebView.dart';

class EmbedWebViewApp extends StatelessWidget {

Widget build(context){
  return MaterialApp(
    home: Scaffold(
      appBar : AppBar(
        title: Text('Facebook Embed'),
      ),
      body: Center(
          child: WebView(
            iframeUrl: '<iframe src="https://www.facebook.com/plugins/post.php?href=https%3A%2F%2Fwww.facebook.com%2Fprometheusmooc%2Fposts%2F2953436281372194&width=500" width="500" height="536" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowTransparency="true" allow="encrypted-media"></iframe>',
            )
        ),
    ),
  );
}
}