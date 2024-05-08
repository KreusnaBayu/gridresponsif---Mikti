import 'package:flutter/material.dart';
import 'package:gallery/components/GridItem.dart';
import 'package:gallery/const/data.dart';
import 'package:gallery/screen/informasi.dart';

class GridPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Galeri Anime',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold, 
          ),
        ),
        centerTitle: true,
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          final maxWidth = constraints.maxWidth;
          int crossAxisCount = 2;

          if (maxWidth >= 1200) {
            crossAxisCount = 7;
          } else if (maxWidth >= 600) {
            crossAxisCount = 5;
          } else if (maxWidth >= 400) {
            crossAxisCount = 3;
          } else {
            crossAxisCount = 2;
          }

          return GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: crossAxisCount,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 10.0,
            ),
            itemCount: items.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailPage(
                          item: items[
                              index]), // Kirim data item ke halaman detail
                    ),
                  );
                },
                child: GridItem(
                  image: items[index].image,
                  title: items[index].title,
                ),
              );
            },
          );
        },
      ),
    );
  }
}
