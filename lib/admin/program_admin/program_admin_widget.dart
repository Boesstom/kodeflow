import '/component/card_program/card_program_widget.dart';
import '/component/header/header_widget.dart';
import '/component/menu/menu_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pop_up/pop_up_program/pop_up_program_widget.dart';
import '/template/template_card_pop_up/template_card_pop_up_widget.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'program_admin_model.dart';
export 'program_admin_model.dart';

class ProgramAdminWidget extends StatefulWidget {
  const ProgramAdminWidget({super.key});

  static String routeName = 'ProgramAdmin';
  static String routePath = '/programAdmin';

  @override
  State<ProgramAdminWidget> createState() => _ProgramAdminWidgetState();
}

class _ProgramAdminWidgetState extends State<ProgramAdminWidget> {
  late ProgramAdminModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProgramAdminModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (responsiveVisibility(
                  context: context,
                  phone: false,
                  tablet: false,
                  tabletLandscape: false,
                ))
                  wrapWithModel(
                    model: _model.menuModel,
                    updateCallback: () => safeSetState(() {}),
                    child: MenuWidget(),
                  ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        wrapWithModel(
                          model: _model.headerModel,
                          updateCallback: () => safeSetState(() {}),
                          child: HeaderWidget(
                            pageName: 'Program',
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              24.0, 24.0, 24.0, 24.0),
                          child: Container(
                            width: double.infinity,
                            constraints: BoxConstraints(
                              maxWidth: 1200.0,
                            ),
                            decoration: BoxDecoration(),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 24.0, 24.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Builder(
                                        builder: (context) => FFButtonWidget(
                                          onPressed: () async {
                                            await showDialog(
                                              context: context,
                                              builder: (dialogContext) {
                                                return Dialog(
                                                  elevation: 0,
                                                  insetPadding: EdgeInsets.zero,
                                                  backgroundColor:
                                                      Colors.transparent,
                                                  alignment:
                                                      AlignmentDirectional(
                                                              0.0, 0.0)
                                                          .resolve(
                                                              Directionality.of(
                                                                  context)),
                                                  child: GestureDetector(
                                                    onTap: () {
                                                      FocusScope.of(
                                                              dialogContext)
                                                          .unfocus();
                                                      FocusManager
                                                          .instance.primaryFocus
                                                          ?.unfocus();
                                                    },
                                                    child:
                                                        TemplateCardPopUpWidget(
                                                      title: 'Tambah Program',
                                                      widget: () =>
                                                          PopUpProgramWidget(),
                                                    ),
                                                  ),
                                                );
                                              },
                                            );
                                          },
                                          text: 'Program',
                                          icon: Icon(
                                            Icons.add,
                                            size: 24.0,
                                          ),
                                          options: FFButtonOptions(
                                            height: 50.0,
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    24.0, 0.0, 24.0, 0.0),
                                            iconPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .override(
                                                      fontFamily:
                                                          'Plus Jakarta Sans',
                                                      color: Colors.white,
                                                      letterSpacing: 0.0,
                                                    ),
                                            elevation: 0.0,
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Wrap(
                                  spacing: 24.0,
                                  runSpacing: 24.0,
                                  alignment: WrapAlignment.start,
                                  crossAxisAlignment: WrapCrossAlignment.start,
                                  direction: Axis.horizontal,
                                  runAlignment: WrapAlignment.start,
                                  verticalDirection: VerticalDirection.down,
                                  clipBehavior: Clip.none,
                                  children: [
                                    InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        context.pushNamed(
                                            ModulAdminWidget.routeName);
                                      },
                                      child: wrapWithModel(
                                        model: _model.cardProgramModel1,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: CardProgramWidget(
                                          actionMasuk: () async {},
                                          actionEdit: () async {},
                                        ),
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.cardProgramModel2,
                                      updateCallback: () => safeSetState(() {}),
                                      child: CardProgramWidget(
                                        actionMasuk: () async {},
                                        actionEdit: () async {},
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.cardProgramModel3,
                                      updateCallback: () => safeSetState(() {}),
                                      child: CardProgramWidget(
                                        actionMasuk: () async {},
                                        actionEdit: () async {},
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.cardProgramModel4,
                                      updateCallback: () => safeSetState(() {}),
                                      child: CardProgramWidget(
                                        actionMasuk: () async {},
                                        actionEdit: () async {},
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.cardProgramModel5,
                                      updateCallback: () => safeSetState(() {}),
                                      child: CardProgramWidget(
                                        actionMasuk: () async {},
                                        actionEdit: () async {},
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.cardProgramModel6,
                                      updateCallback: () => safeSetState(() {}),
                                      child: CardProgramWidget(
                                        actionMasuk: () async {},
                                        actionEdit: () async {},
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.cardProgramModel7,
                                      updateCallback: () => safeSetState(() {}),
                                      child: CardProgramWidget(
                                        actionMasuk: () async {},
                                        actionEdit: () async {},
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
