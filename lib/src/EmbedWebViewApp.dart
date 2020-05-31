import 'package:flutter/material.dart';
import 'package:platform_view_sample/src/WebView.dart';

class EmbedWebViewApp extends StatelessWidget {

final iframeURLs = [
        '<iframe src="https://www.facebook.com/plugins/post.php?href=https%3A%2F%2Fwww.facebook.com%2Fprometheusmooc%2Fposts%2F2953436281372194&width=500" width="500" height="536" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowTransparency="true" allow="encrypted-media"></iframe>', 
        '<iframe src="https://www.facebook.com/plugins/post.php?href=https%3A%2F%2Fwww.facebook.com%2Fukrainecountry%2Fposts%2F1647148222117042&width=500" width="500" height="668" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowTransparency="true" allow="encrypted-media"></iframe>', 
        '<iframe src="https://www.facebook.com/plugins/post.php?href=https%3A%2F%2Fwww.facebook.com%2Fprometheusmooc%2Fposts%2F2972263049489517&width=500" width="500" height="578" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowTransparency="true" allow="encrypted-media"></iframe>',
        '<iframe src="https://www.facebook.com/plugins/post.php?href=https%3A%2F%2Fwww.facebook.com%2Fokeanelzyofficial%2Fposts%2F3807144929356176&width=500" width="500" height="488" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowTransparency="true" allow="encrypted-media"></iframe>',
       ];

Widget build(context){
  return MaterialApp(
    home: Scaffold(
      appBar : AppBar(
        title: Text('Facebook Embed'),
      ),
      body: ListView.builder(
        itemCount: iframeURLs.length,
        itemBuilder: (context, index) {
          return myItemView(context, index);
        },
      )
    )
  );
}

Widget myItemView(BuildContext context, int index) {

      final heightRegex = RegExp(r'height="(\d*)"');

      return Container(
              width: MediaQuery.of(context).size.width,
              height: double.parse(heightRegex.firstMatch(iframeURLs[index]).group(1)),
              child: WebView(
                        iframeUrl: iframeURLs[index],
                      ),
          );
    }

}