
# KireiWebView
Simple and Clean design WebViewController.

# Simple usage

```
let url = "http://twitter.com"
let kireiWebView = KireiWebViewController(url: url)
self.presentViewController(kireiWebView, animated: true, completion: nil)
```


# Custom parameter
```
kireiWebView.enablePcUserAgent = true

kireiWebView.enableOpenInSafari = true

kireiWebView.openInSafariText = "Safariでみる"

kireiWebView.shareButtonAction = { url, title in
    yourShareView.open(url, title)
}
```
