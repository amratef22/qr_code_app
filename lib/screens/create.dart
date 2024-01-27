import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreateQrCode extends StatefulWidget {
  const CreateQrCode({Key? key}) : super(key: key);

  @override
  State<CreateQrCode> createState() => _CreateQrCodeState();
}

class _CreateQrCodeState extends State<CreateQrCode> {
  var qrstr = 'Enter Data';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Creating Qr'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children:
        [
          BarcodeWidget(
              data: qrstr,
              barcode: Barcode.qrCode(),
            color: Colors.deepOrange,
            height: 250,
            width: 250,
          ),
          Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width * .8,
            child: TextField(
              onChanged: (value)
              {
                setState(()
                {
                  qrstr=value;
                });
              },
              decoration: const InputDecoration(
                hintText: 'Enter Your Data Please',
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.deepOrange,
                    width: 2,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
          )
        ],
      ),
    );
  }
}
