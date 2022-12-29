import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: CupertinoContextSheets(),
    );
  }
}

class CupertinoContextSheets extends StatefulWidget {
  const CupertinoContextSheets({super.key});

  @override
  State<CupertinoContextSheets> createState() => _CupertinoContextSheetsState();
}

class _CupertinoContextSheetsState extends State<CupertinoContextSheets> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        backgroundColor: Colors.green,
        middle: Text('CupertinoContextMenu',style: TextStyle(color: Colors.white,fontWeight: FontWeight.normal,fontSize: 15),),
      ),
      child: Center(
        child: SizedBox(
          width: 200,
          height: 200,
          child: CupertinoContextMenu(
            // previewBuilder: (context, animation, child) {
            //   return
            // },
            actions: <Widget>[
              CupertinoContextMenuAction(
                onPressed: () {
                  Navigator.pop(context);
                },
                isDefaultAction: true,
                trailingIcon: CupertinoIcons.doc_on_clipboard_fill,
                child: const Text('Copy'),
              ),
              CupertinoContextMenuAction(
                onPressed: () {
                  Navigator.pop(context);
                },
                trailingIcon: CupertinoIcons.share,
                child: const Text('Share'),
              ),
              CupertinoContextMenuAction(
                onPressed: () {
                  Navigator.pop(context);
                },
                trailingIcon: CupertinoIcons.heart,
                child: const Text('Favorite'),
              ),
              CupertinoContextMenuAction(
                onPressed: () {
                  Navigator.pop(context);
                },
                isDestructiveAction: true,
                trailingIcon: CupertinoIcons.delete,
                child: const Text('Delete'),
              ),
            ],
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: SizedBox(
                height: 100,
                width: 100,
                child: Image.network("https://images.pexels.com/photos/3850526/pexels-photo-3850526.jpeg",fit: BoxFit.cover,height: 100,)
              ),
            ),
          ),
        ),
      ),
    );
  }
}

