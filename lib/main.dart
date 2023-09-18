import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: const ColorScheme(
          brightness: Brightness.dark,
          primary: Color(0xff004F3A),
          onPrimary: Colors.white,
          secondary: Color(0xff4F4F4F),
          onSecondary: Colors.white,
          error: Colors.red,
          onError: Colors.white,
          background: Color(0xff111111),
          onBackground: Color(0xff212121),
          surface: Color(0xff4F4F4F),
          onSurface: Colors.white,
        ),
      ),
      routes: {
        '/': (context) => HomePageWidget(),
        '/tool': (context) => ToolInfo(),
      },
    );
  }
}

class HeaderMain extends StatelessWidget {
  const HeaderMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        HeaderWidget(),
        SearchBox(),
      ],
    );
  }
}

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
      body: Container(
          child: Column(
            children: [
              const SearchBox(),
              Expanded(
                child: Column(
                  children: [
                    const Image(
                      image: AssetImage('assets/images/chatgpt.png'),
                    ),
                    const Text(
                      "ChatGPT",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const ElevatedButton(
                      onPressed: null,
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
                    Container(
                      child: const Text(
                          "I am ChatGPT, an AI language model developed by OpenAI. With a vast knowledge base and advanced natural language processing capabilities, I can assist you in various tasks, answer questions...I am ChatGPT, an AI language model developed by OpenAI. With a vast knowledge base and advanced natural language processing capabilities, I can assist you in various tasks, answer questions...I am ChatGPT, an AI language model developed by OpenAI. With a vast knowledge base and advanced natural language processing capabilities, I can assist you in various tasks, answer questions...I am ChatGPT, an AI language model developed by OpenAI. With a vast knowledge base and advanced natural language processing capabilities, I can assist you in various tasks, answer questions...I am ChatGPT, an AI language model developed by OpenAI. With a vast knowledge base and advanced natural language processing capabilities, I can assist you in various tasks, answer questions...I am ChatGPT, an AI language model developed by OpenAI. With a vast knowledge base and advanced natural language processing capabilities, I can assist you in various tasks, answer questions...I am ChatGPT, an AI language model developed by OpenAI. With a vast knowledge base and advanced natural language processing capabilities, I can assist you in various tasks, answer questions...I am ChatGPT, an AI language model developed by OpenAI. With a vast knowledge base and advanced natural language processing capabilities, I can assist you in various tasks, answer questions...I am ChatGPT, an AI language model developed by OpenAI. With a vast knowledge base and advanced natural language processing capabilities, I can assist you in various tasks, answer questions..."),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      
    );
  }
}

class HomePageWidget extends StatelessWidget {
  const HomePageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const HeaderMain(),
          // LIST ITEM BELOW
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: ((context, index) {
                return const ListItem();
              }),
            ),
          ),
          // LIST ITEM ABOVE
        ],
      ),
    );
  }
}

class SearchBox extends StatelessWidget {
  const SearchBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 15),
      decoration: const BoxDecoration(color: Color(0xff4F4F4F)),
      child: const Center(
        child: TextField(
          textAlign: TextAlign.center,
          decoration: InputDecoration(
            enabledBorder: InputBorder.none,
            border: InputBorder.none,
            prefixIcon: Icon(Icons.search),
            suffixIcon: Icon(Icons.clear),
            prefixIconColor: Colors.white,
            suffixIconColor: Colors.white,
            hintText: "Type a keyword for AI tool",
            hintStyle: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: const BoxDecoration(color: Color(0xff212121)),
      child: Center(
        child: SizedBox(
          width: 237,
          height: 45,
          child: Image.asset('assets/images/logo.png'),
        ),
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  const ListItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(15),
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
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
