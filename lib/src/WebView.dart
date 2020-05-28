import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class WebView extends StatelessWidget {
  final String iframeUrl;

  const WebView({Key key, this.iframeUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme.of(context).platform == TargetPlatform.android
        ? null
        : UiKitView(
            viewType: 'EmbedWebView',
            creationParams: {
              'iframeURL': '<html><style>iframe{width:100%;}</style><body>$iframeUrl</body></html>'
            },
            creationParamsCodec: StandardMessageCodec(),
          );
  }
}