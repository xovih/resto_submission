import 'package:flutter/foundation.dart';
import 'package:resto_app_sora/models/resto_model.dart';
import 'package:resto_app_sora/services/resto_list_service.dart';

enum ResultState { Loading, NoData, HasData, Error }

class RestolistProvider extends ChangeNotifier {
  final RestolistService restolistService;

  RestolistProvider({required this.restolistService}) {
    _fetchResto();
  }

  RestoModel? _restoResult;
  String? _message;
  ResultState? _state;

  void kunciPencarian(String q) {
    RestolistService.q = q;
    _fetchResto();
  }

  String? get message => _message;

  RestoModel? get result => _restoResult;

  ResultState? get state => _state;

  Future<dynamic> _fetchResto() async {
    try {
      _state = ResultState.Loading;
      notifyListeners();
      final resto = await restolistService.listResto();
      if (resto.restaurants.isEmpty) {
        _state = ResultState.NoData;
        notifyListeners();
        return _message = 'Empty Data';
      } else {
        _state = ResultState.HasData;
        notifyListeners();
        return _restoResult = resto;
      }
    } catch (e) {
      _state = ResultState.Error;
      notifyListeners();
      return _message = 'Error --> $e';
    }
  }
}
