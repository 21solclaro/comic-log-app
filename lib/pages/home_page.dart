import 'package:comic_log_app/models/comic.dart';
import 'package:comic_log_app/pages/comic_page.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: comics.length,
          itemBuilder: ((context, index) {
            return ListTile(
              title: Text(comics[index].title),
              subtitle: Text(comics[index].author),
              leading: Container(
                height: 60,
                width: 40,
                color: Colors.grey,
              ),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) {
                    return ComicPage(comic: comics[index]);
                  }),
                );
              },
            );
          })),
    );
  }
}

final comics = [
  Comic(title: 'ONE PIECE', author: '尾田栄一郎', imgUrl: '', startYear: 1997),
  Comic(title: 'ジョジョの奇妙な冒険', author: '荒木飛呂彦', imgUrl: '', startYear: 1986),
  Comic(title: 'HUNTERxHUNTER', author: '冨樫義博', imgUrl: '', startYear: 1998),
  Comic(title: '嘘喰い', author: '迫稔雄', imgUrl: '', startYear: 2006)
];
