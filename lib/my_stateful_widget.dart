import 'package:flutter/material.dart';

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  @override
  void initState() {
    super.initState();
    debugPrint('initState');
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    debugPrint('from didChangeDependencies');
  }

  @override
  void didUpdateWidget(covariant MyStatefulWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    debugPrint('from didUpdateWidget');
  }

  @override
  void dispose() {
    super.dispose();
    debugPrint('from dispose');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(
        builder: (context) {
          return Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: const RoundedRectangleBorder(
                  side: BorderSide(
                    color: Colors.black,
                    width: 2,
                  ),
                ),
              ),
              onPressed: () {
                showBottomSheet(
                  context: context,
                  builder: (context) {
                    return const Wrap(
                      children: [
                        ListTile(
                          leading: Icon(Icons.share),
                          title: Text('Share'),
                        ),
                        ListTile(
                          leading: Icon(Icons.copy),
                          title: Text('Copy'),
                        ),
                        ListTile(
                          leading: Icon(Icons.edit),
                          title: Text('Edit'),
                        ),
                      ],
                    );
                  },
                );
              },
              child: const Text(
                'Click Me',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
