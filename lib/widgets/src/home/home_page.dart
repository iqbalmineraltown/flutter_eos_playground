import 'package:flutter/material.dart';
import 'package:flutter_eos_playground/router/app_router.gr.dart';
import 'package:get/get.dart';

import 'home_ctrl.dart';

class HomePage extends StatelessWidget {
  // Instantiate your class using Get.put() to make it available for all "child" routes there.
  final HomeCtrl _homeCtrl = Get.put(HomeCtrl());

  @override
  Widget build(context) {
    return Scaffold(
        // Use Obx(()=> to update Text() whenever count is changed.
        appBar: AppBar(title: Obx(() => Text("Clicks: ${_homeCtrl.count}"))),

        // Replace the 8 lines Navigator.push by a simple Get.to(). You don't need context
        body: Center(
            child: RaisedButton(
                child: Text("Go to Other"),
                onPressed: () => Get.toNamed(
                      Routes.otherPage,
                      arguments: {
                        'count': _homeCtrl.count,
                      },
                    ))),
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add), onPressed: _homeCtrl.increment));
  }
}

class OtherPage extends StatelessWidget {
  // OtherPage({
  //   @required this.count,
  // }){
  //   Get.arguments
  // };

  @override
  Widget build(context) {
    var count = (Get.arguments as Map)['count'];
    // Access the updated count variable
    return Scaffold(
      appBar: AppBar(title: Text('Other Page')),
      body: Center(
        child: Text('Thy hath pressed $count ${count > 1 ? 'times' : 'time'}'),
      ),
    );
  }
}
