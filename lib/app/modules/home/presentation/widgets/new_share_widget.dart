import 'package:flutter/material.dart';
import 'package:my_wallet/app/modules/home/data/models/share_model.dart';
import 'package:my_wallet/app/modules/home/presentation/mobx/home_controller.dart';

class NewShareWidget extends StatefulWidget {
  final HomeController controller;

  const NewShareWidget({Key key, this.controller}) : super(key: key);
  @override
  _NewShareWidgetState createState() => _NewShareWidgetState();
}

class _NewShareWidgetState extends State<NewShareWidget> {
  TextEditingController shareCodeName;
  HomeController _controller;
  ShareModel share;

  @override
  void initState() {
    super.initState();
    shareCodeName = TextEditingController();
    _controller = widget.controller;
  }

  @override
  Widget build(BuildContext context) {
    share = _controller.newShare;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              TextField(
                controller: shareCodeName,
                decoration:
                    InputDecoration(hintText: 'Nome da Ação (4 letras)'),
                onSubmitted: (shareName) {
                  _controller.addNewShare();
                  shareCodeName.clear();
                },
                onChanged: (codeName) {
                  _controller.changeCodeName(value: codeName);
                },
              ),
              Checkbox(
                  value: false,
                  onChanged: (fractionary) {
                    _controller.setFractionary(value: fractionary);
                  })
            ],
          ),
        ),
      ],
    );
  }
}
