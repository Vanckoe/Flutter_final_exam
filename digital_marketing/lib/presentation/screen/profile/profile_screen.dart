import 'package:digital_marketing/di/locator.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/profile_bloc.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ProfileBloc>(
      create: (context) => ProfileBloc(locator.get()),
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              title: Text('Profile'),
              centerTitle: false,
              pinned: false,
              titleTextStyle: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            BlocBuilder<ProfileBloc, ProfileState>(
              builder: (context, state) {
                return switch (state) {
                  ProfileInitial() => SliverToBoxAdapter(
                      child: CircularProgressIndicator(),
                    ),
                  ProfileLoading() => SliverToBoxAdapter(
                      child: CircularProgressIndicator(),
                    ),
                  ProfileLoaded(mappedProfileInfo: final mappedProfileInfo) =>
                    SliverPadding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      sliver: SliverList.separated(
                        itemBuilder: (_, index) => _ProfileInfoViewItem(
                          title: mappedProfileInfo.entries.elementAt(index).key,
                          value:
                              mappedProfileInfo.entries.elementAt(index).value,
                        ),
                        separatorBuilder: (_, index) => const Divider(),
                        itemCount: mappedProfileInfo.length,
                      ),
                    ),
                  ProfileState() => SliverToBoxAdapter(
                      child: CircularProgressIndicator(),
                    ),
                };
              },
            ),
            SliverFillRemaining(
              hasScrollBody: false,
              fillOverscroll: false,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding:
                      const EdgeInsets.only(bottom: 16, left: 16, right: 16),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      fixedSize: MaterialStateProperty.all(
                        Size(
                          double.maxFinite,
                          50,
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: Text('Edit'),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ProfileInfoViewItem extends StatelessWidget {
  final String title;
  final String value;

  const _ProfileInfoViewItem({
    super.key,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title),
        Expanded(
          child: DottedLine(
            alignment: WrapAlignment.end,
            dashColor: Colors.grey,
            dashRadius: 10,
            dashGapRadius: 10,
          ),
        ),
        Text(value),
      ],
    );
  }
}
