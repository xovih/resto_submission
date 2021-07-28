import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:resto_app_sora/common/size_config.dart';
import 'package:resto_app_sora/models/resto_model.dart';
import 'package:resto_app_sora/pages/components/card_list.dart';
import 'package:resto_app_sora/pages/components/category.dart';
import 'package:resto_app_sora/pages/components/content_title.dart';
import 'package:resto_app_sora/pages/components/search_box.dart';
import 'package:resto_app_sora/providers/resto_list_provider.dart';
import 'package:resto_app_sora/services/resto_list_service.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  // ignore: unused_field
  late Future<RestoModel> _fetchResto;

  @override
  void initState() {
    super.initState();
    _fetchResto = RestolistService().listResto();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(
        children: <Widget>[
          ContentTitle(),
          Category(),
          SearchBox(),
          SizedBox(
            height: getProportionateScreenHeight(8),
          ),
          Expanded(
            child: _buildListResto(),
          ),
        ],
      ),
    );
  }

  Widget _buildListResto() {
    return Consumer<RestolistProvider>(
      builder: (context, state, _) {
        if (state.state == ResultState.Loading) {
          return Center(child: CircularProgressIndicator());
        } else if (state.state == ResultState.HasData) {
          return ListView.builder(
            shrinkWrap: true,
            itemCount: state.result!.restaurants.length,
            itemBuilder: (context, index) {
              var resto = state.result!.restaurants[index];
              return CardList(
                restaurant: resto,
                // onPressed: () => Navigator.pushNamed(
                //   context,
                //   ArticleDetailPage.routeName,
                //   arguments: article,
                // ),
              );
            },
          );
        } else if (state.state == ResultState.NoData) {
          return Center(child: Text(state.message.toString()));
        } else if (state.state == ResultState.Error) {
          return Center(child: Text(state.message.toString()));
        } else {
          return Center(child: Text(''));
        }
      },
    );
  }
}
