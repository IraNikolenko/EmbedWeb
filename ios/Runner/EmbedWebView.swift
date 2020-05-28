import Foundation

class EmbedWebViewFactory : NSObject, FlutterPlatformViewFactory {
    
    public func create(withFrame frame: CGRect, viewIdentifier viewId: Int64, arguments args: Any?) -> FlutterPlatformView {
        return EmbedWebView(frame, viewId:viewId, args:args)
    }

    func createArgsCodec() -> FlutterMessageCodec & NSObjectProtocol {
        FlutterStandardMessageCodec.sharedInstance()
    }
    
}

public class EmbedWebView : NSObject, FlutterPlatformView {
    
    let frame : CGRect
    let viewId : Int64
    let iframeURL: String

    init(_ frame:CGRect, viewId:Int64, args: Any?){
        self.frame = frame
        self.viewId = viewId
        let arguments = args as? [String: Any]

        self.iframeURL = arguments?["iframeURL"] as? String ?? ""
    }
    
    public func view() -> UIView {
        let webView = UIWebView(frame: frame)
        webView.loadHTMLString(iframeURL, baseURL: nil)
        return webView
    }
    
}
