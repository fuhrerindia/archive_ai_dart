import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  const ListItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
          child: Column(
            children: [
              SizedBox(
                width: 120,
                height: 120,
                child: Image.asset('assets/images/chatgpt.png'),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('/tool');
                  },
                  style: const ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(Color(0xff004F3A)),
                  ),
                  child: const Text(
                    "Open ChatGPT",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "ChatGPT",
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              width: MediaQuery.of(context).size.width - 160,
              padding: EdgeInsets.fromLTRB(0, 10, 15, 0),
              child: const Text(
                "I am ChatGPT, an AI language model developed by OpenAI. With a vast knowledge base and advanced natural language processing capabilities, I can assist you in various tasks, answer questions...",
                style: TextStyle(color: Colors.white, height: 1.5),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
