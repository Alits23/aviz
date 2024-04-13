import 'package:aviz/DI/di.dart';
import 'package:aviz/Features/Home/bloc/home_bloc.dart';
import 'package:aviz/Features/Home/bloc/home_event.dart';
import 'package:aviz/Features/Home/bloc/home_state.dart';
import 'package:aviz/Features/Home/data/model/promotion.dart';
import 'package:aviz/Widgets/hot_promotion_card.dart';
import 'package:aviz/Widgets/normal_promotion_card.dart';
import 'package:aviz/constans/colors/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        var homeBloc = HomeBloc(locator.get());
        homeBloc.add(HomeRequestList());
        return homeBloc;
      },
      child: const HomeViewContainer(),
    );
  }
}

class HomeViewContainer extends StatelessWidget {
  const HomeViewContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          return state is HomeLoadingState
              ? const Center(
                  child: CircularProgressIndicator(
                    color: CustomColors.primaryColor1,
                  ),
                )
              : Directionality(
                  textDirection: TextDirection.rtl,
                  child: CustomScrollView(
                    slivers: [
                      const AppBar(),
                      const HotPromotionTitle(),
                      if (state is HomeResponseState) ...{
                        state.hotPromotionList.fold(
                          (l) {
                            return SliverToBoxAdapter(
                              child: Center(child: Text(l)),
                            );
                          },
                          (hotPromotionList) {
                            return HotPromotionList(hotPromotionList);
                          },
                        )
                      },
                      const RecentPromotionTitle(),
                      if (state is HomeResponseState) ...{
                        state.recentPromotionList.fold(
                          (l) {
                            return SliverToBoxAdapter(
                              child: Text(l),
                            );
                          },
                          (recentPromotionList) {
                            return RecentPromotionList(recentPromotionList);
                          },
                        )
                      },
                    ],
                  ),
                );
        },
      ),
    );
  }
}

class RecentPromotionList extends StatelessWidget {
  final List<Promotion> recentPromotionList;
  const RecentPromotionList(
    this.recentPromotionList, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: recentPromotionList.length,
        (context, index) {
          return Padding(
            padding: const EdgeInsets.only(
              left: 16.0,
              right: 16.0,
            ),
            child: GestureDetector(
              child: NormalPromotionCard(recentPromotionList[index]),
            ),
          );
        },
      ),
    );
  }
}

class RecentPromotionTitle extends StatelessWidget {
  const RecentPromotionTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SliverToBoxAdapter(
      child: Padding(
        padding:
            EdgeInsets.only(left: 16.0, right: 16.0, top: 32.0, bottom: 24.0),
        child: Row(
          children: [
            Text(
              'آویزهای اخیر',
              style: TextStyle(
                fontFamily: 'sb',
                fontSize: 16.0,
                color: CustomColors.textGery700,
              ),
            ),
            Spacer(),
            Text(
              'مشاهده همه',
              style: TextStyle(
                fontFamily: 'sm',
                fontSize: 14.0,
                color: CustomColors.textGery300,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HotPromotionList extends StatelessWidget {
  final List<Promotion> hotPromotionList;
  const HotPromotionList(
    this.hotPromotionList, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 267.0,
        child: ListView.builder(
          padding: const EdgeInsets.only(right: 16.0, left: 16.0),
          scrollDirection: Axis.horizontal,
          itemCount: hotPromotionList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(left: 16.0, bottom: 8.0),
              child: GestureDetector(
                onTap: () {
                  //print('tapped');
                },
                child: HotPromotionCard(hotPromotionList[index]),
              ),
            );
          },
        ),
      ),
    );
  }
}

class HotPromotionTitle extends StatelessWidget {
  const HotPromotionTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.only(left: 16.0, right: 16.0, bottom: 24.0),
        child: Row(
          children: [
            Text(
              'آویزهای داغ',
              style: TextStyle(
                fontFamily: 'sb',
                fontSize: 16.0,
                color: CustomColors.textGery700,
              ),
            ),
            Spacer(),
            Text(
              'مشاهده همه',
              style: TextStyle(
                fontFamily: 'sm',
                fontSize: 14.0,
                color: CustomColors.textGery300,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AppBar extends StatelessWidget {
  const AppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.only(
          bottom: 32.0,
          top: 20.0,
        ),
        child: SizedBox(
          height: 42.0,
          child: Image.asset(
            "assets/images/logo_with_not_background.png",
          ),
        ),
      ),
    );
  }
}
