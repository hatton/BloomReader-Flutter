# BloomReader

Just learning Flutter by making a pretend Flutter implementation of Bloom Reader.

The next step in this is to get fix the webview plugin that does not currently allow the bloom-player's iframe to have file access. In Bloom Reader (java), we have to enable
`setAllowFileAccess: true, setAllowFileAccessFromFileURLs: true, setAllowUniversalAccessFromFileURLs: true,`

There is a different plugin, https://pub.dev/packages/flutter_webview_plugin, which has an `allowFileURLs` setting. At the moment [that code](https://github.com/fluttercommunity/flutter_webview_plugin/blob/master/android/src/main/java/com/flutter_webview_plugin/WebviewManager.java) sets the `setAllowFileAccessFromFileURLs` and `setAllowUniversalAccessFromFileURLs`) but not `setAllowFileAccess`. Meanwhile Android API 30 deprecates all of this anyhow, so maybe we need a different approach (like spin up a little http server).
