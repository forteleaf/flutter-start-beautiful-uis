import 'package:flutter/material.dart';

void main() {
  runApp(new FriendlychatApp());
}

class FriendlychatApp extends StatelessWidget {
  @override
  Widget build(BuildContext context)
  {
    return new MaterialApp(
      title: "Friendlychat",
      home:  new ChatScreen(),
    );
  }
}

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Friendlychat"),
      ),
    );
  }

  @override
  State createState() => new ChatScreenState();
}

class ChatScrrenState extends State<ChatScreen>{
  final TextEditingController _textController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("Friendlycat"),),
      body: _buildTextComposer(),
    );
  }

  Widget _buildTextComposer() {
    return new Container(
      child: new TextField(
        controller: _textController,
        onSubmitted: _handleSubmitted,
        decoration: new InputDecoration.collapsed(hintText: "Send a message"),
      ),
    );
  }

  void _handleSubmitted(String text) {
    _textController.clear();
  }
}