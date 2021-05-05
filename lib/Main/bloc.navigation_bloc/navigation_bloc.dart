import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:saadoptionsystem/Main/pages/AdoptChild.dart';
import 'package:saadoptionsystem/Main/pages/GiveUpAChild.dart';
import 'package:saadoptionsystem/Main/pages/NearbyCentres.dart';
import 'package:saadoptionsystem/Main/pages/ReportAbondonedChild.dart';
import 'package:saadoptionsystem/Main/pages/ReportMissingChild.dart';
import 'package:saadoptionsystem/Main/pages/TermsAndConditions.dart';

enum NavigationEvents {
  AdoptChildClickedEvent,
  GiveUpChildClickedEvent,
  ReportChildClickedEvent,
  AbondonedChildClickedEvent,
  NearbyCentresChildClickedEvent,
}

abstract class NavigationStates {}

class NavigationBloc extends Bloc<NavigationEvents,NavigationStates>{
  NavigationBloc(NavigationStates initialState) : super(initialState);


  @override
  NavigationStates get initialState => Terms();

  @override
  Stream<NavigationStates> mapEventToState(NavigationEvents event) async* {
    switch (event) {
      case NavigationEvents.AdoptChildClickedEvent:
        yield AdopterPage();
        break;
      case NavigationEvents.GiveUpChildClickedEvent:
        yield GiveUpPage();
        break;
      case NavigationEvents.ReportChildClickedEvent:
        yield ReportChildPage();
        break;
      case NavigationEvents. AbondonedChildClickedEvent:
        yield AbondonedChildPage();
        break;
      case NavigationEvents.NearbyCentresChildClickedEvent:
        yield NearbyCentresPage();
        break;
    }
  }
}
