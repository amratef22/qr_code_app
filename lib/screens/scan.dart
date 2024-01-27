import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class ScanQr extends StatefulWidget {
  const ScanQr({Key? key}) : super(key: key);

  @override
  State<ScanQr> createState() => _ScanQrState();
}

class _ScanQrState extends State<ScanQr> {
  var qrstr = "Scan Now";
  var height,width;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Scanning QR code'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:
          [
            Text(
              qrstr,
              style: const TextStyle(
                  color: Colors.deepOrange,
                  fontSize: 30),
            ),
            ElevatedButton(
                onPressed: scanQr,
                child: Text(('Scanner')),
            ),
            SizedBox(
              height: width,
            ),
          ],
        ),
      ),
    );

  }
  Future <void>scanQr()async{
    try{
      FlutterBarcodeScanner.scanBarcode('#2A99CF', 'cancel', true, ScanMode.QR).then((value){
        setState(() {
          qrstr=value;
        });
      });
    }catch(e){
      setState(() {
        qrstr='unable to read this';
      });
    }
  }
}

