import 'package:crick11/core/app_export.dart';
import 'package:crick11/presentation/points_page/widgets/points_item_widget.dart';
import 'package:crick11/presentation/points_page/widgets/scorecard_item_widget.dart';
import 'package:crick11/presentation/points_page/widgets/summary_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/points_bloc.dart';

// ignore_for_file: must_be_immutable
class PointsPage extends StatefulWidget {
  @override
  State<PointsPage> createState() => _PointsPageState();
}

class _PointsPageState extends State<PointsPage> with TickerProviderStateMixin {
  late TabController _controller;
  final PointsBloc _pointsBloc = PointsBloc();

  tab_backgroundcolor() {
    if (Theme.of(context).appBarTheme.backgroundColor == ColorConstant.red800) {
      return Colors.white;
    } else {
      return const Color.fromARGB(255, 18, 12, 25);
    }
  }

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PointsBloc, PointsState>(
      bloc: _pointsBloc,
      listener: (context, state) {
        if (state is NavigateToBack) {
          Navigator.pop(context);
        }
      },
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            appBar: PreferredSize(
                preferredSize: Size.fromHeight(getVerticalSize(110)),
                child: AppBar(
                  elevation: 0,
                  toolbarHeight: height,
                  automaticallyImplyLeading: false,
                  leading: GestureDetector(
                      onTap: () {
                        _pointsBloc.add(BackNavigation());
                      },
                      child: const Icon(Icons.arrow_back)),
                  title: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'RCB VS HYD',
                        style: TextStyle(
                          fontSize: getFontSize(
                            20,
                          ),
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.circle,
                            color: Colors.green,
                            size: getSize(11),
                          ),
                          Text(
                            'Live',
                            style: TextStyle(
                              color: Colors.green,
                              fontSize: getFontSize(
                                17,
                              ),
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  titleSpacing: 0,
                  centerTitle: false,
                )),
            body: Column(
              children: [
                Container(
                  height: getVerticalSize(10),
                  color: tab_backgroundcolor(),
                ),
                Stack(children: [
                  Container(
                    decoration: BoxDecoration(
                      color: tab_backgroundcolor(),
                    ),
                    height: getVerticalSize(47),
                  ),
                  SizedBox(
                    height: getVerticalSize(35),
                    child: TabBar(
                      controller: _controller,
                      tabs: [
                        Tab(
                          child: Text(
                            ' Points',
                            style: TextStyle(
                              fontSize: getFontSize(
                                15,
                              ),
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        Tab(
                          child: Text(
                            ' ScoreCard',
                            style: TextStyle(
                              fontSize: getFontSize(
                                15,
                              ),
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        Tab(
                          child: Text(
                            ' Summary',
                            style: TextStyle(
                              fontSize: getFontSize(
                                15,
                              ),
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ],
                      labelColor: Theme.of(context)
                          .bottomNavigationBarTheme
                          .backgroundColor,
                      unselectedLabelColor:
                          Theme.of(context).secondaryHeaderColor,
                      indicatorColor: Theme.of(context)
                          .bottomNavigationBarTheme
                          .backgroundColor,
                      indicatorSize: TabBarIndicatorSize.label,
                    ),
                  ),
                ]),
                Expanded(
                  child: Padding(
                    padding: getPadding(bottom: 10),
                    child: SizedBox(
                      //height: getVerticalSize(600),
                      width: getHorizontalSize(390),
                      child: TabBarView(controller: _controller, children: [
                        PointsItemWidget(),
                        ScoreCardItemWidget(),
                        SummaryItemWidget(),
                      ]),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
