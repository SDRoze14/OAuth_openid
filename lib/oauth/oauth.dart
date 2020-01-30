import 'package:flutter/material.dart';
import 'package:openid_client/openid_client.dart';
import 'package:openid_client/openid_client_io.dart';
import 'package:url_launcher/url_launcher.dart';

final openId = Uri.parse("https://mconnecttest-idp.teda.th/px");

final identifier = "farung";
final secret = "bZPy50WBgTKbwBMuRET3ebKt";
final scopes = ["openid", "profile"];

var test = null;

authenticate() async {
  // create the client
  var issuer = await Issuer.discover(openId);
  var client = new Client(issuer, identifier, secret);

  print(client);

  // create a function to open a browser with an url
  urlLauncher(String url) async {
    

    if (await canLaunch(url)) {
      // test = url;
      await launch(url);
    } else {
      throw 'Could not launch $url';   
    }
  }

  // create an authenticator
  var authenticator = new Authenticator(client,
      scopes: scopes, port: 4000, urlLancher: urlLauncher);

  // start the authentication
  var c = await authenticator.authorize();

  // close the webview when finished
  closeWebView();

  // get the user info
  var user = await c.getUserInfo();

  print("TEST : $user");
  test = user;

}

class Test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('$test'),
      ),
    );
  }
}