import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mvvm_app/presentation/resources/assets_manager.dart';
import 'package:mvvm_app/presentation/resources/color_manager.dart';
import 'package:mvvm_app/presentation/resources/string_manager.dart';
import 'package:mvvm_app/presentation/resources/values_manager.dart';

class OnBoardingView extends StatefulWidget {
  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  late final List<SliderObject> _list = _getSliderData();
  final PageController _controller = PageController(initialPage: 0);
  int _cuurentIndex = 0;
  List<SliderObject> _getSliderData() => [
        SliderObject(AppString.onBoardingTitle1, AppString.onBoardingSubTitle1,
            ImageAssets.onboardingLogo1),
        SliderObject(AppString.onBoardingTitle2, AppString.onBoardingSubTitle2,
            ImageAssets.onboardingLogo2),
        SliderObject(AppString.onBoardingTitle3, AppString.onBoardingSubTitle3,
            ImageAssets.onboardingLogo3),
        SliderObject(AppString.onBoardingTitle4, AppString.onBoardingSubTitle4,
            ImageAssets.onboardingLogo4),
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 0,
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: ColorManager.white,
            statusBarBrightness: Brightness.dark,
            statusBarIconBrightness: Brightness.dark),
      ),
      body: PageView.builder(
        controller: _controller,
        itemBuilder: (context, index) {
          return onBoardingWidget(_list[index]);
        },
      ),
      bottomSheet: Container(
        color: Colors.white,
        height: AppSize.s100,
        child: Column(
          children: [
            Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      AppString.skip,
                      style: Theme.of(context).textTheme.subtitle2,
                      textAlign: TextAlign.end,
                    ))),
                    _getBottomSheetWidget()
          ],
        ),
      ),
    );
  }

  Widget _getBottomSheetWidget() {
    return Container(
      color: ColorManager.primary,

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [Padding(
            padding: EdgeInsets.all(AppPadding.p14),
            child: GestureDetector(
              child: SizedBox(
                height: AppPadding.p20,
                width: AppPadding.p20,
                child: SvgPicture.asset(ImageAssets.leftArrowIc),
              ),
              onTap: () {
                _controller.animateToPage(_getPreviousIndex(),
                    duration: Duration(milliseconds: DurationConstant.d300),
                    curve: Curves.bounceInOut);
              },
            ),
          ),
          Row(
            children: [
              for (int i = 0; i < _list.length; i++)
                Padding(
                  padding: EdgeInsets.all(AppPadding.p8),
                  child: _getPoperCircle(i),
                )
            ],
          ),
          
          Padding(
            padding: EdgeInsets.all(AppPadding.p14),
            child: GestureDetector(
              child: SizedBox(
                height: AppPadding.p20,
                width: AppPadding.p20,
                child: SvgPicture.asset(ImageAssets.rightarrowIc),
              ),
              onTap: () {
                _controller.animateToPage(_getNextIndex(),
                    duration: Duration(milliseconds: DurationConstant.d300),
                    curve: Curves.bounceInOut);
              },
            ),
          ),
        ],
      ),
    );
  }

  int _getPreviousIndex() {
    int previousindex = _cuurentIndex--;
    if (previousindex == -1) {
      _cuurentIndex = _list.length--;
    }
     setState(() {
      
    });
    return _cuurentIndex;
  }

  int _getNextIndex() {

    int nextindex = _cuurentIndex++;
    if (nextindex == _list.length) {
      _cuurentIndex = 0;
    }
     setState(() {
      
    });
    return _cuurentIndex;
   
  }

  Widget _getPoperCircle(int index) {
   
    if (index == _cuurentIndex) {
      return SvgPicture.asset(ImageAssets.hollowCircleIc);
    } else {
      return SvgPicture.asset(ImageAssets.solidCircleIc);
    }
  }
}

class onBoardingWidget extends StatelessWidget {
  final SliderObject _sliderObject;

  onBoardingWidget(this._sliderObject);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          height: AppSize.s40,
        ),
        Padding(
          padding: EdgeInsets.all(AppPadding.p8),
          child: Text(
            _sliderObject.title,
            style: Theme.of(context).textTheme.headline1,
            textAlign: TextAlign.center,
          ),
        ),
        Padding(
          padding: EdgeInsets.all(AppPadding.p8),
          child: Text(
            _sliderObject.subTitle,
            style: Theme.of(context).textTheme.subtitle1,
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(
          height: AppSize.s60,
        ),
        SvgPicture.asset(
          _sliderObject.image,
        )
      ],
    );
  }
}

class SliderObject {
  String title;
  String subTitle;
  String image;
  SliderObject(this.title, this.subTitle, this.image);
}
