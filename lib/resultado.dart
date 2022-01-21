import 'package:flutter/cupertino.dart';

class Resultado extends StatelessWidget {
  final String text;
  const Resultado({ Key? key, required this.text  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(text, style: const TextStyle(fontSize: 28)),
    );
  }
}