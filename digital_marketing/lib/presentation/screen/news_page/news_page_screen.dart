import 'package:digital_marketing/domain/entity/news_model.dart';
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class NewsPageScreen extends StatelessWidget {
  final NewsModel newsModel;

  const NewsPageScreen({super.key, required this.newsModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(newsModel.title),
        actions: [
          InkWell(
            onTap: () {
              showModalBottomSheet(
                context: context,
                builder: (_) => Scaffold(
                  body: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    child: Column(
                      children: [
                        Text('Отсканируйте QR-код для перехода на новость'),
                        QrImageView(
                          data: newsModel.deeplinkUrl,
                        ),
                        const SizedBox(height: 12),
                      ],
                    ),
                  ),
                ),
              );
            },
            child: Icon(Icons.share, size: 24),
          ),
        ],
      ),
      body: Column(
        children: [
          const SizedBox(height: 12),
          Image.network(newsModel.imageUrl),
          const SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(newsModel.content),
          ),
        ],
      ),
    );
  }
}
