import 'package:digital_marketing/domain/entity/news_model.dart';
import 'package:digital_marketing/presentation/app/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'bloc/news_bloc.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NewsScreen'),
      ),
      body: CustomScrollView(
        slivers: [
          BlocProvider(
            create: (context) => NewsBloc(),
            child: BlocBuilder<NewsBloc, NewsState>(
              builder: (context, state) {
                return switch (state) {
                  NewsInitial() => CircularProgressIndicator(),
                  NewsLoading() => CircularProgressIndicator(),
                  NewsLoaded(news: final news) => SliverList.separated(
                      separatorBuilder: (context, index) => const SizedBox(),
                      itemCount: news.length,
                      itemBuilder: (context, index) => _NewsViewItem(
                        model: news[index],
                      ),
                    ),
                  // TODO: Handle this case.
                  NewsState() => CircularProgressIndicator(),
                };
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _NewsViewItem extends StatelessWidget {
  final NewsModel model;

  const _NewsViewItem({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.push(AppRoutes.news.path, extra: model),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.symmetric(
            horizontal: BorderSide(color: Colors.grey, width: 2),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      model.title,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      model.content,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 24),
              const SizedBox(
                width: 24,
                height: 24,
                child: Icon(
                  Icons.arrow_right_alt_sharp,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
