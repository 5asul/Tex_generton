//-----------------------------------------------------------------------------------------

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:http/http.dart' as http;

import 'Explore.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage>with ChangeNotifier {
  final List<types.Message> _messages = [];
  final _user = const types.User(id: '82091008-a484-4a89-ae75-a22bf8d6f3ac');
  bool translate_state = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => Explpre()));
            },
            icon: Icon(
              Icons.keyboard_backspace,
              color: Color(0xFFB03CFC),
              size: 30,
            )),
        title: Center(
          child: Row(
            children: [
              SizedBox(
                width: 40,
              ),
              Container(
                width: 50,
                height: 30,
                child: Image.asset("assets/images/light_logo.png",
                  fit: BoxFit.contain,
                ),
              ),

              Container(
                width: 70,
                height: 25,
                child: Image.asset("assets/images/icon2.png",
                  fit: BoxFit.fill,
                ),
              ),
            ],
          ),
        ),
        centerTitle: true,
        actions: [
          translate_state?SizedBox() :Padding(
            padding: const EdgeInsets.all(8.0),
            child: SpinKitThreeBounce(
              color: Colors.deepPurple.shade100,
              size: 30.0,
            ),
          ),
        ],
      ),
      body: Chat(
        messages: _messages,
        onSendPressed: _handleSendPressed,
        user: _user,
      ),
    );
  }

  void _handleSendPressed(types.PartialText message) async {
    try {
      translate_state=false;
      notifyListeners();
      final textMessage = types.TextMessage(
        author: _user,
        createdAt: DateTime.now().millisecondsSinceEpoch,
        id: 'id-${DateTime.now().millisecondsSinceEpoch}', // Unique ID
        text: message.text,
      );

      // * Add the message to the chat UI before sending to the API
      _addMessage(textMessage);
      print(textMessage.text);

      // * Send the message text to API endpoint
      final response = await http.post(
        Uri.parse('http://192.168.137.1:5000/chat'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({'query_text': textMessage.text}),
      ).timeout(Duration(minutes: 10));
      print('Sending message: ${textMessage.text}');//....
      // * Handle the API response
      if (response.statusCode == 200) {
        // * API call successful, extract the response text
        final responseText = jsonDecode(response.body);
        translate_state = true;
        notifyListeners();
        print("${responseText["result"]}");

        // print(responseText);
        // * Create a new TextMessage object for the response
        final responseMessage = types.TextMessage(
          author:
          const types.User(id: 'api_response'), // Unique ID for API response
          createdAt: DateTime.now().millisecondsSinceEpoch,
          id: 'id-${DateTime.now().millisecondsSinceEpoch}', // Unique ID
          text: responseText["result"],
        );

        // * Add the response message to the chat
        print(responseMessage);
        _addMessage(responseMessage);
      } else {
        // * Handle API error (e.g., display an error message to the user)
        print('API error: ${response.statusCode}');
      }

    }catch(e) {
      print('Connection reset by peer: $e');
    }

  }

  void _addMessage(types.Message message) {
    setState(() {
      _messages.insert(0, message);
    });
  }
}
