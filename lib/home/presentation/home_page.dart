import 'package:flutter/material.dart';
import 'package:iotapp/core/domain/mqtt_service.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final clientMqtt = MqttService();

    return StreamBuilder<Object>(
        stream: clientMqtt.mqttStream,
        builder: (context, snapshot) {
          if (snapshot.data == null) {
            return Center(
              child: RaisedButton(
                onPressed: () {
                  clientMqtt.mqqtClient();
                },
                child: Text('Conectar'),
              ),
            );
          } else {
            return Center(
              child: Column(
                children: <Widget>[
                  Text(
                    snapshot.data,
                    style: TextStyle(fontSize: 50),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                ],
              ),
            );
          }
        });
  }
}
