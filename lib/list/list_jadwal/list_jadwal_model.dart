import '/component/card_list/card_list_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'list_jadwal_widget.dart' show ListJadwalWidget;
import 'package:flutter/material.dart';

class ListJadwalModel extends FlutterFlowModel<ListJadwalWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for Card_list component.
  late CardListModel cardListModel;

  @override
  void initState(BuildContext context) {
    cardListModel = createModel(context, () => CardListModel());
  }

  @override
  void dispose() {
    cardListModel.dispose();
  }
}
