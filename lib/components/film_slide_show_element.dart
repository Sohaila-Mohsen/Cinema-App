import 'package:cinema/blocs/imageIndex/cubit/imageindex_cubit.dart';
import 'package:cinema/models/films.dart';
import 'package:cinema/views/details_page.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FilmSlideShowElement extends StatelessWidget {
  const FilmSlideShowElement({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ImageindexCubit active = ImageindexCubit.get(context);
    return BlocConsumer<ImageindexCubit, ImageindexState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Column(
            children: [
              CarouselSlider.builder(
                  options: CarouselOptions(
                      height: 250,
                      autoPlay: true,
                      autoPlayAnimationDuration: Duration(seconds: 2),
                      enlargeCenterPage: true,
                      onPageChanged: (index, reson) {
                        active.setIndex(index);
                      }),
                  itemCount: films.length,
                  itemBuilder: (context, index, realIndex) {
                    final assetImage = films[index].image;

                    return GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              print(
                                  "${films[index].name}  ${films[index].rating}");
                              return DetailsPage(films[index]);
                            },
                          ));
                        },
                        child: BuildImage(assetImage, index));
                  }),
              SizedBox(
                height: 20,
              ),
              buildIndecator(active.activeIndex),
            ],
          );
        });
  }

  BuildImage(AssetImage assetImage, int index) {
    return Container(
      width: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.grey,
      ),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Image(
        image: assetImage,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget buildIndecator(int activeIndex) {
    return AnimatedSmoothIndicator(
      activeIndex: activeIndex,
      count: films.length,
      effect: SlideEffect(
        dotHeight: 8,
        dotWidth: 8,
        activeDotColor: Colors.cyan,
        dotColor: Color.fromARGB(255, 79, 79, 79),
      ),
    );
  }
}
