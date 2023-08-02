import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<String> messages = [];                                            //we can use riverpod for this messages list with product id

  final TextEditingController _messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Mesaj Kutusu')),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: messages.length,
              itemBuilder: (BuildContext context, int index) {
                final message = messages[index];
                final isSentByUser = index % 2 == 0;              //for message action

                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                  child: Align(
                    alignment: isSentByUser ? Alignment.centerRight : Alignment.centerLeft,
                    child: Container(
                      padding: const EdgeInsets.all(12.0),
                      decoration: BoxDecoration(
                        color: isSentByUser ? Colors.blue : Colors.green,
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      child: Text(
                        message,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Container(                                                                    // message container
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            decoration: const BoxDecoration(
              border: Border(),
            ),
            child: Row(
              children: [
                Expanded(
                  child: TextField(                                                     //message box
                    controller: _messageController,
                    decoration: InputDecoration(hintText: 'Mesajınızı girin',border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16)
                    )),
                  ),
                ),
                IconButton(                                                              //message icon
                  icon: const Icon(Icons.send),
                  onPressed: () {
                    final message = _messageController.text;
                    setState(() {
                      messages.add(message);
                      _messageController.clear();
                    });
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: ChatPage(),
  ));
}
