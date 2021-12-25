import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:my_wallet/app/core/data/moor_database.dart';
import 'package:my_wallet/app/modules/home/presentation/widgets/new_share_widget.dart';

import '../mobx/home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Observer(
            builder: (_) {
              return Expanded(
                child: StreamBuilder<List<Share>>(
                  stream: controller.shares,
                  builder: (BuildContext context,
                      AsyncSnapshot<List<Share>> snapshot) {
                    if (snapshot.data == null) {
                      return CircularProgressIndicator();
                    }
                    List<Share> shares = snapshot.data;
                    return ListView.builder(
                        itemCount: shares.length,
                        itemBuilder: (BuildContext context, int index) {
                          return ListTile(
                            title: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                    "${shares[index].codeName}${shares[index].isFractionary ? 'F' : ''}"),
                                IconButton(
                                    icon: Icon(Icons.delete),
                                    onPressed: () {
                                      controller.deleteShare(
                                          share: shares[index]);
                                    })
                              ],
                            ),
                          );
                        });
                  },
                ),
              );
            },
          ),
          NewShareWidget(
            controller: controller,
          )
        ],
      ),
    );
  }
}
