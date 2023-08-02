import 'package:flutter/material.dart';

class BottomNavigationWidget extends StatefulWidget {
  @override
  _BottomNavigationWidgetState createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  final _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade300,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: TextField(
                controller: _textController,
                decoration: const InputDecoration(
                  hintText: 'Mesajınızı yazın',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blue, // Set the border color here
                      width: 2.0, // Set the border width here
                    ),
                  ),
                ),
              ),
            ),
            IconButton(
              icon: const Icon(Icons.send),
              onPressed: () {
                // Gonder butonu ile ne yapmak istediginizi bu fonksiyonun icine yazabilirsiniz.
                // Ornek olarak mesaji yazdirabiliriz:
                print(_textController.text);
                // TextBox'i temizlemek icin
                _textController.clear();
              },
            ),
            SizedBox(width: 10,),
            IconButton(
              icon: const Icon(Icons.message),
              onPressed: () {
                Navigator.pushNamed(context, '/chatPage');
                print(_textController.text);
                // TextBox'i temizlemek icin
                _textController.clear();
              },
            ),
            const SizedBox(width: 10,),
          ],
        ),
      ),
    );
  }
}
