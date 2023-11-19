import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Home({Key? key});

  final List<Map<String, String>> images = [
    {
      'url':
          'https://images.unsplash.com/photo-1682687982204-f1a77dcc3067?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      'size': '635x953',
      'routeTo': '/screen2',
      'author': 'Nurdaulet',
      'isSaved': 'false',
    },
    {
      'url':
          'https://images.unsplash.com/photo-1699893062191-6ac866d4bf60?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      'size': '635x953',
      'routeTo': '/screen3',
      'author': 'Damir',
      'isSaved': 'false',
    },
    {
      'url':
          'https://plus.unsplash.com/premium_photo-1680902988910-e04dc05c21ce?q=80&w=2032&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      'size': '635x953',
      'routeTo': '/screen4',
      'author': 'Donyior',
      'isSaved': 'false',
    },
    {
      'url':
          'https://images.unsplash.com/photo-1699378630318-605c08102c3b?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxMHx8fGVufDB8fHx8fA%3D%3D',
      'size': '635x953',
      'routeTo': '/screen5',
      'author': 'Nursultan',
      'isSaved': 'false',
    },
  ];

  final List<Map<String, String>> savedImages = [
    {
      'url':
          'https://images.unsplash.com/photo-1682687982204-f1a77dcc3067?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      'size': '635x953',
      'routeTo': '/screen2',
      'author': 'Nurdaulet',
      'isSaved': 'false',
    },
    {
      'url':
          'https://images.unsplash.com/photo-1699893062191-6ac866d4bf60?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      'size': '635x953',
      'routeTo': '/screen3',
      'author': 'Damir',
      'isSaved': 'false',
    },
  ];

  final List<String> authors = ['Nurdaulet', 'Damir', 'Nursultan', 'Dony'];

  final List<Map<String, String>> buttons = [
    {
      'title': 'All images',
      'routeTo': '/AllImages',
    },
    {
      'title': 'Authors',
      'routeTo': '/Authors',
    },
    {
      'title': 'Saved images',
      'routeTo': '/SavedImages',
    },
    {
      'title': 'Add new image',
      'routeTo': '/AddNewImage',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Beverages'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Welcome to the Home Screen'),
            const SizedBox(height: 30),
            ListView.builder(
              shrinkWrap: true,
              itemCount: buttons.length,
              itemBuilder: (context, index) {
                return ElevatedButton(
                  onPressed: () {
                    if (buttons[index]['routeTo'] == '/AllImages') {
                      Navigator.pushNamed(
                        context,
                        buttons[index]['routeTo']!,
                        arguments: images,
                      );
                    } else if (buttons[index]['routeTo'] == '/SavedImages') {
                      Navigator.pushNamed(
                        context,
                        buttons[index]['routeTo']!,
                        arguments: savedImages,
                      );
                    } else if (buttons[index]['routeTo'] == '/Authors') {
                      Navigator.pushNamed(
                        context,
                        buttons[index]['routeTo']!,
                        arguments: authors,
                      );
                    } else {
                      Navigator.pushNamed(context, buttons[index]['routeTo']!);
                    }
                  },
                  child: Text(buttons[index]['title']!),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
