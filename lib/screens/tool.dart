// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';
import '../widget/searchbox.dart';

class ToolInfo extends StatelessWidget {
  const ToolInfo({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: SizedBox(
          width: 237,
          height: 45,
          child: Image.asset('assets/images/logo.png'),
        ),
        backgroundColor: const Color(0xff212121),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SearchBox(),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 100,
                          height: 100,
                          child: Image(
                            image: AssetImage('assets/images/chatgpt.png'),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Column(
                            children: [
                              Text(
                                "ChatGPT",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 5),
                                child: ElevatedButton(
                                  onPressed: () {
                                    launchUrlString('https://chat.openai.com');
                                  },
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStatePropertyAll(
                                      Color(0xff004F3A),
                                    ),
                                  ),
                                  child: Text(
                                    "Navigate to ChatGPT",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        "I am ChatGPT, an AI language model developed by OpenAI. With a vast knowledge base and advanced natural language processing capabilities, I can assist you in various tasks, answer questions...I am ChatGPT, an AI language model developed by OpenAI. With a vast knowledge base and advanced natural language processing capabilities, I can assist you in various tasks, answer questions...I am ChatGPT, an AI language model developed by OpenAI. With a vast knowledge base and advanced natural language processing capabilities, I can assist you in various tasks, answer questions...I am ChatGPT, an AI language model developed by OpenAI. With a vast knowledge base and advanced natural language processing capabilities, I can assist you in various tasks, answer questions...I am ChatGPT, an AI language model developed by OpenAI. With a vast knowledge base and advanced natural language processing capabilities, I can assist you in various tasks, answer questions...I am ChatGPT, an AI language model developed by OpenAI. With a vast knowledge base and advanced natural language processing capabilities, I can assist you in various tasks, answer questions...I am ChatGPT, an AI language model developed by OpenAI. With a vast knowledge base and advanced natural language processing capabilities, I can assist you in various tasks, answer questions...I am ChatGPT, an AI language model developed by OpenAI. With a vast knowledge base and advanced natural language processing capabilities, I can assist you in various tasks, answer questions...I am ChatGPT, an AI language model developed by OpenAI. With a vast knowledge base and advanced natural language processing capabilities, I can assist you in various tasks, answer questions...",
                        style: TextStyle(height: 1.5, fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
