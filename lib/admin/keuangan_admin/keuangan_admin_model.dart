import '/component/card_statistic/card_statistic_widget.dart';
import '/component/header/header_widget.dart';
import '/component/menu/menu_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'keuangan_admin_widget.dart' show KeuanganAdminWidget;
import 'package:flutter/material.dart';

class KeuanganAdminModel extends FlutterFlowModel<KeuanganAdminWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Menu component.
  late MenuModel menuModel;
  // Model for Header component.
  late HeaderModel headerModel;
  // Model for Card_statistic component.
  late CardStatisticModel cardStatisticModel1;
  // Model for Card_statistic component.
  late CardStatisticModel cardStatisticModel2;
  // Model for Card_statistic component.
  late CardStatisticModel cardStatisticModel3;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController = FlutterFlowDataTableController<String>();

  @override
  void initState(BuildContext context) {
    menuModel = createModel(context, () => MenuModel());
    headerModel = createModel(context, () => HeaderModel());
    cardStatisticModel1 = createModel(context, () => CardStatisticModel());
    cardStatisticModel2 = createModel(context, () => CardStatisticModel());
    cardStatisticModel3 = createModel(context, () => CardStatisticModel());
  }

  @override
  void dispose() {
    menuModel.dispose();
    headerModel.dispose();
    cardStatisticModel1.dispose();
    cardStatisticModel2.dispose();
    cardStatisticModel3.dispose();
    paginatedDataTableController.dispose();
  }
}
