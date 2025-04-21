import '/component/card_list/card_list_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'list_free_class_widget.dart' show ListFreeClassWidget;
import 'package:flutter/material.dart';

class ListFreeClassModel extends FlutterFlowModel<ListFreeClassWidget> {
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
