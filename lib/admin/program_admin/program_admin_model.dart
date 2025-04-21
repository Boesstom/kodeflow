import '/component/card_program/card_program_widget.dart';
import '/component/header/header_widget.dart';
import '/component/menu/menu_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'program_admin_widget.dart' show ProgramAdminWidget;
import 'package:flutter/material.dart';

class ProgramAdminModel extends FlutterFlowModel<ProgramAdminWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Menu component.
  late MenuModel menuModel;
  // Model for Header component.
  late HeaderModel headerModel;
  // Model for Card_program component.
  late CardProgramModel cardProgramModel1;
  // Model for Card_program component.
  late CardProgramModel cardProgramModel2;
  // Model for Card_program component.
  late CardProgramModel cardProgramModel3;
  // Model for Card_program component.
  late CardProgramModel cardProgramModel4;
  // Model for Card_program component.
  late CardProgramModel cardProgramModel5;
  // Model for Card_program component.
  late CardProgramModel cardProgramModel6;
  // Model for Card_program component.
  late CardProgramModel cardProgramModel7;

  @override
  void initState(BuildContext context) {
    menuModel = createModel(context, () => MenuModel());
    headerModel = createModel(context, () => HeaderModel());
    cardProgramModel1 = createModel(context, () => CardProgramModel());
    cardProgramModel2 = createModel(context, () => CardProgramModel());
    cardProgramModel3 = createModel(context, () => CardProgramModel());
    cardProgramModel4 = createModel(context, () => CardProgramModel());
    cardProgramModel5 = createModel(context, () => CardProgramModel());
    cardProgramModel6 = createModel(context, () => CardProgramModel());
    cardProgramModel7 = createModel(context, () => CardProgramModel());
  }

  @override
  void dispose() {
    menuModel.dispose();
    headerModel.dispose();
    cardProgramModel1.dispose();
    cardProgramModel2.dispose();
    cardProgramModel3.dispose();
    cardProgramModel4.dispose();
    cardProgramModel5.dispose();
    cardProgramModel6.dispose();
    cardProgramModel7.dispose();
  }
}
