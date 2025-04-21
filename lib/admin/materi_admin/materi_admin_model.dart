import '/component/header/header_widget.dart';
import '/component/menu/menu_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'materi_admin_widget.dart' show MateriAdminWidget;
import 'package:flutter/material.dart';

class MateriAdminModel extends FlutterFlowModel<MateriAdminWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Menu component.
  late MenuModel menuModel;
  // Model for Header component.
  late HeaderModel headerModel;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController = FlutterFlowDataTableController<String>();

  @override
  void initState(BuildContext context) {
    menuModel = createModel(context, () => MenuModel());
    headerModel = createModel(context, () => HeaderModel());
  }

  @override
  void dispose() {
    menuModel.dispose();
    headerModel.dispose();
    paginatedDataTableController.dispose();
  }
}
