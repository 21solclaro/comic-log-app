import 'package:comic_log_app/models/comic.dart';
import 'package:flutter/material.dart';

class ComicPage extends StatelessWidget {
  const ComicPage({Key? key, required this.comic}) : super(key: key);
  final Comic comic;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 4,
      child: Scaffold(
          body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 60, 10, 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 140,
                  width: 100,
                  color: Colors.grey,
                ),
                SizedBox(
                  width: 20,
                ),
                Flexible(
                  child: Text(
                    comic.title,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 45,
            decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(25.0)),
            child: TabBar(
              indicator: BoxDecoration(
                  color: Colors.green[300],
                  borderRadius: BorderRadius.circular(25.0)),
              labelColor: Colors.white,
              unselectedLabelColor: Colors.black,
              tabs: const [
                Tab(
                  text: '詳細',
                ),
                Tab(
                  text: '巻',
                ),
                Tab(
                  text: '話',
                ),
                Tab(
                  text: '関連作品',
                )
              ],
            ),
          ),
          const Expanded(
              child: TabBarView(
            children: [
              Center(
                child: Text('詳細'),
              ),
              Center(
                child: Text('巻'),
              ),
              Center(
                child: Text('話'),
              ),
              Center(
                child: Text('関連作品'),
              )
            ],
          ))
        ],
      )),
    );
  }
}
