import 'package:comic_log_app/models/book.dart';
import 'package:comic_log_app/models/chapter.dart';
import 'package:comic_log_app/models/comic.dart';
import 'package:comic_log_app/pages/comic_page.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final isListViewProvider = StateProvider<bool>((ref) => true);

class Home extends ConsumerWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isListView = ref.watch(isListViewProvider);
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              icon: const Icon(Icons.list),
              onPressed: () {
                ref.read(isListViewProvider.notifier).state = true;
              },
            ),
            IconButton(
              icon: const Icon(Icons.grid_view),
              onPressed: () {
                ref.read(isListViewProvider.notifier).state = false;
              },
            ),
          ],
        ),
        body: isListView
            ? ListView.builder(
                itemCount: comics.length,
                itemBuilder: ((context, index) {
                  return ListTile(
                    title: Text(comics[index].title),
                    subtitle: Row(
                      children: [
                        for (int i = 0;
                            i < comics[index].author.length;
                            i++) ...{
                          if (i > 0) ...{
                            Text('・${comics[index].author[i]}')
                          } else
                            Text('${comics[index].author[i]}')
                        }
                      ],
                    ),
                    leading: comics[index].imgUrl == ''
                        ? Container(
                            height: 60,
                            width: 40,
                            color: Colors.grey,
                          )
                        : Image(image: NetworkImage(comics[index].imgUrl)),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) {
                          return ComicPage(comic: comics[index]);
                        }),
                      );
                    },
                  );
                }))
            : GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                ),
                itemCount: comics.length,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) {
                          return ComicPage(comic: comics[index]);
                        }),
                      );
                    },
                    child: SizedBox(
                        height: 200,
                        width: 100,
                        child: Column(
                          children: [
                            Container(
                              height: 90,
                              width: 60,
                              color: Colors.grey,
                            ),
                            Text(
                              comics[index].title,
                              style: const TextStyle(fontSize: 10),
                              overflow: TextOverflow.ellipsis,
                            )
                          ],
                        )),
                  );
                }));
  }
}

final comics = [
  Comic(
      title: 'ONE PIECE',
      author: ['尾田栄一郎'],
      imgUrl:
          'https://dosbg3xlm0x1t.cloudfront.net/images/items/9784088725093/240/9784088725093.jpg',
      publisher: '集英社',
      magazine: '週刊少年ジャンプ',
      startYear: 1997,
      books: [
        Book(
            volume: 1,
            imgUrl:
                'https://dosbg3xlm0x1t.cloudfront.net/images/items/9784088725093/240/9784088725093.jpg',
            publishedAt: DateTime(1997, 12, 24),
            bookReadState: BookReadState.finished),
        Book(
          volume: 2,
          imgUrl:
              'https://dosbg3xlm0x1t.cloudfront.net/images/items/9784088725444/240/9784088725444.jpg',
          publishedAt: DateTime(1998, 4, 3),
          bookReadState: BookReadState.read,
        ),
        Book(
          volume: 3,
          imgUrl:
              'https://dosbg3xlm0x1t.cloudfront.net/images/items/9784088725697/240/9784088725697.jpg',
          publishedAt: DateTime(1998, 6, 4),
          bookReadState: BookReadState.unread,
        ),
      ],
      chapters: [
        Chapter(
            volume: 1,
            chapterTitle: 'ROMANCE DAWN －冒険の夜明け－',
            chapterReadState: ChapterReadState.finished),
        Chapter(
            volume: 2,
            chapterTitle: 'その男〝麦わらのルフィ〟',
            chapterReadState: ChapterReadState.finished),
        Chapter(
            volume: 3,
            chapterTitle: '〝海賊狩りのゾロ〟登場',
            chapterReadState: ChapterReadState.finished),
      ],
      serializeState: SerializeState.serialize),
  Comic(
      title: 'ジョジョの奇妙な冒険 PART7 スティール・ボール・ラン',
      author: ['荒木飛呂彦'],
      imgUrl:
          'https://dosbg3xlm0x1t.cloudfront.net/images/items/9784088736013/240/9784088736013.jpg',
      publisher: '集英社',
      magazine: 'ウルトラジャンプ',
      startYear: 1986,
      books: [],
      chapters: [],
      serializeState: SerializeState.finished),
  Comic(
      title: 'DEATH NOTE',
      author: ['大場つぐみ', '小畑健'],
      imgUrl:
          'https://dosbg3xlm0x1t.cloudfront.net/images/items/9784088736211/240/9784088736211.jpg',
      publisher: '集英社',
      magazine: '週刊少年ジャンプ',
      startYear: 2003,
      books: [],
      chapters: [],
      serializeState: SerializeState.finished),
];
