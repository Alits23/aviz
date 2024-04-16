import 'package:aviz/constans/colors/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: CustomScrollView(
            slivers: [
              AppBar(),
              SearchField(),
              ProfileTitle(),
              ProfileContainer(),
              Divider(),
              MyAviz(),
              MyCard(),
              RecentView(),
              SavedAviz(),
              Setting(),
              Support(),
              AboutAviz(),
              Version()
            ],
          ),
        ),
      ),
    );
  }
}

class Version extends StatelessWidget {
  const Version({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.only(bottom: 32.0, top: 32.0),
        child: SizedBox(
          child: Column(
            children: [
              Text(
                'نسخه',
                style: TextStyle(
                  color: CustomColors.textGery400,
                  fontFamily: 'sm',
                  fontSize: 14.0,
                ),
              ),
              Text(
                '1.5.9',
                style: TextStyle(
                  color: CustomColors.textGery400,
                  fontFamily: 'sm',
                  fontSize: 14.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AboutAviz extends StatelessWidget {
  const AboutAviz({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.only(
          right: 16,
          left: 16.0,
          bottom: 16.0,
        ),
        child: Container(
          height: 40.0,
          decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: CustomColors.borderGery200,
            ),
            borderRadius: BorderRadius.circular(4.0),
          ),
          child: Row(
            children: [
              const SizedBox(
                width: 16.0,
              ),
              Image.asset('assets/images/aviz_info_icon.png'),
              const SizedBox(
                width: 12.0,
              ),
              const Text(
                'درباره آویز',
                style: TextStyle(
                  color: CustomColors.textGery700,
                  fontFamily: 'sm',
                  fontSize: 16.0,
                ),
              ),
              const Spacer(),
              Image.asset('assets/images/red_arrow_left_icon.png'),
              const SizedBox(
                width: 16.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Support extends StatelessWidget {
  const Support({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.only(
          right: 16,
          left: 16.0,
          bottom: 16.0,
        ),
        child: Container(
          height: 40.0,
          decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: CustomColors.borderGery200,
            ),
            borderRadius: BorderRadius.circular(4.0),
          ),
          child: Row(
            children: [
              const SizedBox(
                width: 16.0,
              ),
              Image.asset('assets/images/support_icon.png'),
              const SizedBox(
                width: 12.0,
              ),
              const Text(
                'پشتیبانی و قوانین',
                style: TextStyle(
                  color: CustomColors.textGery700,
                  fontFamily: 'sm',
                  fontSize: 16.0,
                ),
              ),
              const Spacer(),
              Image.asset('assets/images/red_arrow_left_icon.png'),
              const SizedBox(
                width: 16.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Setting extends StatelessWidget {
  const Setting({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.only(
          right: 16,
          left: 16.0,
          bottom: 16.0,
        ),
        child: Container(
          height: 40.0,
          decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: CustomColors.borderGery200,
            ),
            borderRadius: BorderRadius.circular(4.0),
          ),
          child: Row(
            children: [
              const SizedBox(
                width: 16.0,
              ),
              Image.asset('assets/images/setting_2_icon.png'),
              const SizedBox(
                width: 12.0,
              ),
              const Text(
                'تنظیمات',
                style: TextStyle(
                  color: CustomColors.textGery700,
                  fontFamily: 'sm',
                  fontSize: 16.0,
                ),
              ),
              const Spacer(),
              Image.asset('assets/images/red_arrow_left_icon.png'),
              const SizedBox(
                width: 16.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SavedAviz extends StatelessWidget {
  const SavedAviz({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.only(
          right: 16,
          left: 16.0,
          bottom: 16.0,
        ),
        child: Container(
          height: 40.0,
          decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: CustomColors.borderGery200,
            ),
            borderRadius: BorderRadius.circular(4.0),
          ),
          child: Row(
            children: [
              const SizedBox(
                width: 16.0,
              ),
              Image.asset('assets/images/save_2_icon.png'),
              const SizedBox(
                width: 12.0,
              ),
              const Text(
                'ذخیره شده ها',
                style: TextStyle(
                  color: CustomColors.textGery700,
                  fontFamily: 'sm',
                  fontSize: 16.0,
                ),
              ),
              const Spacer(),
              Image.asset('assets/images/red_arrow_left_icon.png'),
              const SizedBox(
                width: 16.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RecentView extends StatelessWidget {
  const RecentView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.only(
          right: 16,
          left: 16.0,
          bottom: 16.0,
        ),
        child: Container(
          height: 40.0,
          decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: CustomColors.borderGery200,
            ),
            borderRadius: BorderRadius.circular(4.0),
          ),
          child: Row(
            children: [
              const SizedBox(
                width: 16.0,
              ),
              Image.asset('assets/images/view_icon.png'),
              const SizedBox(
                width: 12.0,
              ),
              const Text(
                'بازدید های اخیر',
                style: TextStyle(
                  color: CustomColors.textGery700,
                  fontFamily: 'sm',
                  fontSize: 16.0,
                ),
              ),
              const Spacer(),
              Image.asset('assets/images/red_arrow_left_icon.png'),
              const SizedBox(
                width: 16.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  const MyCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.only(
          right: 16,
          left: 16.0,
          bottom: 16.0,
        ),
        child: Container(
          height: 40.0,
          decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: CustomColors.borderGery200,
            ),
            borderRadius: BorderRadius.circular(4.0),
          ),
          child: Row(
            children: [
              const SizedBox(
                width: 16.0,
              ),
              Image.asset('assets/images/card_icon.png'),
              const SizedBox(
                width: 12.0,
              ),
              const Text(
                'پرداخت های من',
                style: TextStyle(
                  color: CustomColors.textGery700,
                  fontFamily: 'sm',
                  fontSize: 16.0,
                ),
              ),
              const Spacer(),
              Image.asset('assets/images/red_arrow_left_icon.png'),
              const SizedBox(
                width: 16.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyAviz extends StatelessWidget {
  const MyAviz({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.only(
          top: 16,
          right: 16,
          left: 16.0,
          bottom: 16.0,
        ),
        child: Container(
          height: 40.0,
          decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: CustomColors.borderGery200,
            ),
            borderRadius: BorderRadius.circular(4.0),
          ),
          child: Row(
            children: [
              const SizedBox(
                width: 16.0,
              ),
              Image.asset('assets/images/my_aviz_icon.png'),
              const SizedBox(
                width: 12.0,
              ),
              const Text(
                'آگهی های من',
                style: TextStyle(
                  color: CustomColors.textGery700,
                  fontFamily: 'sm',
                  fontSize: 16.0,
                ),
              ),
              const Spacer(),
              Image.asset('assets/images/red_arrow_left_icon.png'),
              const SizedBox(
                width: 16.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Divider extends StatelessWidget {
  const Divider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 16.0,
        ),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border.all(
              color: CustomColors.borderGery200,
              width: 1,
            ),
          ),
        ),
      ),
    );
  }
}

class ProfileContainer extends StatelessWidget {
  const ProfileContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.only(
          left: 16.0,
          right: 16.0,
          bottom: 16.0,
        ),
        child: Container(
          height: 95.0,
          decoration: BoxDecoration(
            border: Border.all(
              color: CustomColors.borderGery200,
            ),
            borderRadius: BorderRadius.circular(4.0),
          ),
          child: Center(
            child: Row(
              children: [
                const SizedBox(
                  width: 16.0,
                ),
                SizedBox(
                  height: 56.0,
                  width: 56.0,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(18.0),
                    child: Image.asset('assets/images/avatar.jpg'),
                  ),
                ),
                const SizedBox(
                  width: 16.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'علی تشکری',
                      style: TextStyle(
                        color: CustomColors.textGery700,
                        fontSize: 16.0,
                        fontFamily: 'dana',
                      ),
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    Row(
                      children: [
                        const Text(
                          '99154028',
                          style: TextStyle(
                            color: CustomColors.textGery700,
                            fontSize: 14.0,
                            fontFamily: 'dana',
                          ),
                        ),
                        const SizedBox(
                          width: 8.0,
                        ),
                        Container(
                          width: 66,
                          height: 26,
                          decoration: BoxDecoration(
                            color: CustomColors.primaryColor1,
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                          child: const Center(
                            child: Text(
                              'تایید شده',
                              style: TextStyle(
                                color: CustomColors.white,
                                fontSize: 12.0,
                                fontFamily: 'dana',
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 16.0,
                    top: 16.0,
                    bottom: 57.0,
                  ),
                  child: Image.asset(
                    'assets/images/edit_profile_icon.png',
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ProfileTitle extends StatelessWidget {
  const ProfileTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.only(top: 32, right: 16, bottom: 24),
        child: Row(
          children: [
            Image.asset('assets/images/profile.png'),
            const SizedBox(
              width: 8.0,
            ),
            const Text(
              'حساب کاربری',
              style: TextStyle(
                color: CustomColors.textGery700,
                fontFamily: 'sb',
                fontSize: 16.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SearchField extends StatelessWidget {
  const SearchField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: SizedBox(
          height: 40.0,
          child: TextField(
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(4),
                borderSide: const BorderSide(
                  color: CustomColors.borderGery200,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(4),
                borderSide: const BorderSide(
                  color: CustomColors.primaryColor1,
                ),
              ),
              hintText: 'جستجو ...',
              hintStyle: const TextStyle(
                fontFamily: 'dana',
                fontSize: 16.0,
                color: CustomColors.textGery300,
              ),
              prefixIcon: Image.asset('assets/images/inactive_search_icon.png'),
              contentPadding: const EdgeInsets.symmetric(vertical: 8.0),
            ),
          ),
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
        ),
        child: SizedBox(
          height: 42.0,
          child: Image.asset(
            "assets/images/my_aviz_appbar.png",
          ),
        ),
      ),
    );
  }
}
