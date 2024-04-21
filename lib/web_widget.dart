import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

enum LoadingState {loaded ,isLoading, failed}

//Screen with WebView, inserted to mainWidget
class WebWidget extends StatefulWidget {

  final String serverUrl;

  const WebWidget({Key? key, required this.serverUrl}) : super(key: key);

  @override
  State<WebWidget> createState() => _WebWidgetState();
  }

  class _WebWidgetState extends State<WebWidget> {
    LoadingState loadingState = LoadingState.isLoading;

    @override
    void initState() {
      super.initState();
    }

    void errorHandler(InAppWebViewController controller,
        WebResourceRequest request,
        WebResourceError error) {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: const Text("Try again later!"),
                content: Text("Message: ${error.description}"),
                actions: [
                  TextButton(
                    child: const Text("OK"),
                    onPressed: () => Navigator.pop(context),
                  )
                ],
              ));
      setState(() => loadingState = LoadingState.failed);
    }

    void errorHandler2(InAppWebViewController controller,
        WebResourceRequest request,
        WebResourceResponse response) {
      // showDialog(
      //     context: context,
      //     builder: (context) => AlertDialog(
      //           title: const Text("Try again later!"),
      //           content: Text("Code: ${response.statusCode}"),
      //           actions: [
      //             TextButton(
      //               child: const Text("OK"),
      //               onPressed: () => Navigator.pop(context),
      //             )
      //           ],
      //         ));
      // setState(() => loadingState = LoadingState.failed);
    }

    @override
    Widget build(BuildContext context) {
      return Stack(
        children: [
          Visibility(
            maintainAnimation: true,
            maintainSize: true,
            maintainState: true,
            visible: loadingState == LoadingState.loaded,
            child: InAppWebView(
              initialUrlRequest: URLRequest(url: WebUri.uri(Uri.parse(widget.serverUrl))),
              initialSettings: InAppWebViewSettings
              (
                javaScriptEnabled: true,
                clearCache: true,
              ),
              onReceivedError: errorHandler,
              onReceivedHttpError: errorHandler2,
              onLoadStop: (InAppWebViewController controller, Uri? url) => {
                if (loadingState != LoadingState.failed)
                  setState(() => loadingState = LoadingState.loaded)
              },
            ),
          ),
          (() {
            switch (loadingState) {
              case LoadingState.loaded:
                return const Stack();
              case LoadingState.isLoading:
                return Container(
                    color: Theme.of(context).colorScheme.background,
                    child: const Center(
                      child: CircularProgressIndicator(),
                    ));
              case LoadingState.failed:
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Server is temporarily unreachable",
                          style: Theme.of(context).textTheme.titleLarge),
                      Text("ZGS", style: Theme.of(context).textTheme.titleLarge),
                    ],
                  ),
                );
            }
          }())
        ],
      );
    }
  }