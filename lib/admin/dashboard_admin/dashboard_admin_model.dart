import '/component/card_statistic/card_statistic_widget.dart';
import '/component/header/header_widget.dart';
import '/component/menu/menu_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/template/template_card_dashboard/template_card_dashboard_widget.dart';
import 'dashboard_admin_widget.dart' show DashboardAdminWidget;
import 'package:flutter/material.dart';

class DashboardAdminModel extends FlutterFlowModel<DashboardAdminWidget> {
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
  // Model for Template_card_dashboard component.
  late TemplateCardDashboardModel templateCardDashboardModel1;
  // Model for Template_card_dashboard component.
  late TemplateCardDashboardModel templateCardDashboardModel2;

  @override
  void initState(BuildContext context) {
    menuModel = createModel(context, () => MenuModel());
    headerModel = createModel(context, () => HeaderModel());
    cardStatisticModel1 = createModel(context, () => CardStatisticModel());
    cardStatisticModel2 = createModel(context, () => CardStatisticModel());
    cardStatisticModel3 = createModel(context, () => CardStatisticModel());
    templateCardDashboardModel1 =
        createModel(context, () => TemplateCardDashboardModel());
    templateCardDashboardModel2 =
        createModel(context, () => TemplateCardDashboardModel());
  }

  @override
  void dispose() {
    menuModel.dispose();
    headerModel.dispose();
    cardStatisticModel1.dispose();
    cardStatisticModel2.dispose();
    cardStatisticModel3.dispose();
    templateCardDashboardModel1.dispose();
    templateCardDashboardModel2.dispose();
  }
}
