import 'package:flutter/material.dart';
import 'package:qr_code_app/screens/create.dart';
import 'package:qr_code_app/screens/scan.dart';

class QrCode extends StatefulWidget {
  const QrCode({Key? key}) : super(key: key);

  @override
  State<QrCode> createState() => _QrCodeState();
}

class _QrCodeState extends State<QrCode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Qr Generator'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: ()
                {
                  Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>CreateQrCode()));
                },
                child: Text('Create Qr '),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: ()
                {
                  Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>ScanQr()));

                },
                child: Text('Scan Qr '),
            ),
          ],
        ),
      ),
    );
  }
}
