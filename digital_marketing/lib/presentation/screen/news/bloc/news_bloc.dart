import 'package:digital_marketing/domain/entity/news_model.dart';
import 'package:digital_marketing/presentation/base/base_bloc.dart';
import 'package:meta/meta.dart';

part 'news_event.dart';

part 'news_state.dart';

class NewsBloc extends BaseBloc<NewsEvent, NewsState> {
  NewsBloc() : super(NewsInitial());

  @override
  void init() {
    emit(
      NewsLoaded(
        [
          NewsModel(
            title: 'Super Bowl LVIII: Tracking every ad',
            imageUrl: 'https://www.marketingdive.com/imgproxy/r3EzwXH2RvvyLWAJxbwhYoGiZzH1lJCmAIjBcXqfVYQ/g:ce/rs:fill:2000:1125:1/bG9jYWw6Ly8vZGl2ZWltYWdlL2RlcmVrYS1hYmVsbGEtbWFya2V0aW5nLWFkLXN1cGVyYm93bC0yMDIzLmpwZw.jpg',
            author: 'Marketing Dive staff ',
            content: 'Despite the ongoing impact of tightened budgets, marketers haven’t been hesitant in their plans to show up for Super Bowl LVIII, which is scheduled for Feb. 11, 2024. CBS had nearly sold out of all its Super Bowl advertising inventory by the start of November, with a 30-second ad reportedly going for between 6.5 and 7 million. The reported price tag hasn’t increased compared to the cost of an ad for 2023’s game, a possible reflection of the state of the TV advertising marketplace, which has been underwhelming.\nAdvertisers’ eagerness around the big game stems from the fact that consumer interest remains strong. The 2023 Super Bowl, broadcast by Fox, attracted a record-breaking audience of over 115 million viewers, up 2% from the year prior. The Super Bowl LVIII Halftime Show, which will be headlined by Usher, is sponsored by Apple Music for a second consecutive year following a decade-run by Pepsi. ',
            deeplinkUrl: 'https://www.marketingdive.com/news/ad-tracker-super-bowl-lviii-marketing-campaigns/697268/',
          ),
          NewsModel(
            title: ' How multichannel brands can turn views into revenue on YouTube ',
            imageUrl: 'https://www.marketingdive.com/imgproxy/Ztie-i2APbcLDaWHAA-hBUUsKaWgvV9xLYCHGf40c9o/g:ce/rs:fill:1600:900:1/bG9jYWw6Ly8vZGl2ZWltYWdlL01pa01ha19Zb3VUdWJlX0d1aWRlX1N0b2NrX0ltYWdlX1N0b3J5X0ltYWdlLnBuZw.jpg',
            author: 'MikMak',
            content: 'In the vast landscape of YouTube, where over 2 billion users engage with diverse content daily, eCommerce brands are discovering a goldmine of opportunities. With a staggering 68 percent of YouTube users citing the platform as a key influencer in their purchasing decisions, the potential for eCommerce success is unparalleled. This is your roadmap to navigating the latest YouTube shopping trends and maximizing your brand’s presence.',
            deeplinkUrl: 'https://www.marketingdive.com/spons/how-multichannel-brands-can-turn-views-into-revenue-on-youtube/700773/',
          ),
          NewsModel(
            title: 'State Farm takes inside look at NFL players and ‘at-home teammates’',
            imageUrl: 'https://www.marketingdive.com/imgproxy/-V8JR88TYMFSPyFcQtgsqxW_hZuZ8_iQPJqzWnR8FW4/g:ce/rs:fill:1600:900:1/bG9jYWw6Ly8vZGl2ZWltYWdlL3RodW1ibmFpbF9vcmlnaW5hbC1GQUY3MzYxOS1DMjIwLTRDMDktQTVBRC0xMDg3QUI4REU1NjEuanBn.jpg',
            author: 'Chris Kelly',
            content: 'State Farm, sports media company Team Whistle and agency Optimum Sports have teamed for three episodes of a football-focused series titled “Home Team.” The program will air on Team Whistle’s YouTube and social platforms beginning Dec. 7, per details shared with Marketing Dive.\n“Home Team” pairs football players with “at-home teammates” for competitions and Q&A segments that provide insight into their personal lives and relationships. The episodes include messaging about bundling home and auto insurance and State Farm’s Personal Price Plan. This marks the third year of collaboration with Team Whistle around original NFL-focused content, explained Alyson Griffin, vice president of marketing at State Farm.',
            deeplinkUrl: 'https://www.marketingdive.com/news/state-farm-team-whistle-football-content-series/701728/',
          ),
        ],
      ),
    );
  }

  @override
  void initUseCases() {}
}
