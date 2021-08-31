import 'package:flutter/cupertino.dart';
import 'package:mcuapp/common/constants/route_constants.dart';
import 'package:mcuapp/presentation/journeys/favorite/favorite_screen.dart';
import 'package:mcuapp/presentation/journeys/home/home_screen.dart';
import 'package:mcuapp/presentation/journeys/movie_detail/movie_detail_screen.dart';
import 'package:mcuapp/presentation/journeys/watch_video/watch_video_screen.dart';

import 'journeys/login/login_screen.dart';

class Routes {
  static Map<String, WidgetBuilder> getRoutes(RouteSettings setting) => {
    RouteList.initial: (context) => LoginScreen(),
    RouteList.home: (context) => HomeScreen(),
    RouteList.movieDetail: (context) => MovieDetailScreen(movieDetailArguments: setting.arguments),
    RouteList.watchTrailer: (context) => WatchVideoScreen(watchVideoArguments: setting.arguments),
    RouteList.favorite: (context) => FavoriteScreen(),
  };
}