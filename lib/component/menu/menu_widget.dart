import '/auth/supabase_auth/auth_util.dart';
import '/component/menu_item/menu_item_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'menu_model.dart';
export 'menu_model.dart';

class MenuWidget extends StatefulWidget {
  const MenuWidget({
    super.key,
    this.activePageName,
  });

  final String? activePageName;

  @override
  State<MenuWidget> createState() => _MenuWidgetState();
}

class _MenuWidgetState extends State<MenuWidget> {
  late MenuModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MenuModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      constraints: BoxConstraints(
        minWidth: 90.0,
        maxWidth: 280.0,
      ),
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primary,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  'assets/images/Artboard_36.png',
                  width: 50.0,
                  height: 50.0,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed(DashboardAdminWidget.routeName);
                          },
                          child: wrapWithModel(
                            model: _model.menuItemModel1,
                            updateCallback: () => safeSetState(() {}),
                            child: MenuItemWidget(
                              isActivePage: false,
                              text: 'Dashboard',
                              icon: Icon(
                                Icons.dashboard_outlined,
                                color: FlutterFlowTheme.of(context).primary100,
                              ),
                              hasNumberTag: false,
                              number: 12,
                              hasSubMenu: false,
                              subMenuExpanded: false,
                            ),
                          ),
                        ),
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed(ProgramAdminWidget.routeName);
                          },
                          child: wrapWithModel(
                            model: _model.menuItemModel2,
                            updateCallback: () => safeSetState(() {}),
                            child: MenuItemWidget(
                              isActivePage: false,
                              text: 'Program',
                              icon: Icon(
                                Icons.play_lesson_outlined,
                                color: FlutterFlowTheme.of(context).primary100,
                              ),
                              hasNumberTag: false,
                              number: 12,
                              hasSubMenu: false,
                              subMenuExpanded: false,
                            ),
                          ),
                        ),
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed(KelasAdminWidget.routeName);
                          },
                          child: wrapWithModel(
                            model: _model.menuItemModel3,
                            updateCallback: () => safeSetState(() {}),
                            child: MenuItemWidget(
                              isActivePage: false,
                              text: 'Kelas',
                              icon: Icon(
                                Icons.class_outlined,
                                color: FlutterFlowTheme.of(context).primary100,
                              ),
                              hasNumberTag: false,
                              number: 12,
                              hasSubMenu: false,
                              subMenuExpanded: false,
                            ),
                          ),
                        ),
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed(GuruAdminWidget.routeName);
                          },
                          child: wrapWithModel(
                            model: _model.menuItemModel4,
                            updateCallback: () => safeSetState(() {}),
                            child: MenuItemWidget(
                              isActivePage: false,
                              text: 'Guru',
                              icon: Icon(
                                Icons.person_outline,
                                color: FlutterFlowTheme.of(context).primary100,
                              ),
                              hasNumberTag: false,
                              number: 12,
                              hasSubMenu: false,
                              subMenuExpanded: false,
                            ),
                          ),
                        ),
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed(PesertaAdminWidget.routeName);
                          },
                          child: wrapWithModel(
                            model: _model.menuItemModel5,
                            updateCallback: () => safeSetState(() {}),
                            child: MenuItemWidget(
                              isActivePage: false,
                              text: 'peserta',
                              icon: Icon(
                                Icons.people_outline,
                                color: FlutterFlowTheme.of(context).primary100,
                              ),
                              hasNumberTag: false,
                              number: 12,
                              hasSubMenu: false,
                              subMenuExpanded: false,
                            ),
                          ),
                        ),
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed(KeuanganAdminWidget.routeName);
                          },
                          child: wrapWithModel(
                            model: _model.menuItemModel6,
                            updateCallback: () => safeSetState(() {}),
                            child: MenuItemWidget(
                              isActivePage: false,
                              text: 'Keuangan',
                              icon: Icon(
                                Icons.monetization_on_outlined,
                                color: FlutterFlowTheme.of(context).primary100,
                              ),
                              hasNumberTag: false,
                              number: 12,
                              hasSubMenu: false,
                              subMenuExpanded: false,
                            ),
                          ),
                        ),
                        Divider(
                          thickness: 2.0,
                          indent: 24.0,
                          endIndent: 24.0,
                          color: FlutterFlowTheme.of(context).primary400,
                        ),
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            GoRouter.of(context).prepareAuthEvent();
                            await authManager.signOut();
                            GoRouter.of(context).clearRedirectLocation();

                            context.goNamedAuth(
                                LoginPageWidget.routeName, context.mounted);
                          },
                          child: wrapWithModel(
                            model: _model.menuItemModel7,
                            updateCallback: () => safeSetState(() {}),
                            child: MenuItemWidget(
                              isActivePage: false,
                              text: 'Log Out',
                              icon: Icon(
                                Icons.login_rounded,
                                color: FlutterFlowTheme.of(context).primary100,
                              ),
                              hasNumberTag: false,
                              number: 12,
                              hasSubMenu: false,
                              subMenuExpanded: false,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ].divide(SizedBox(height: 24.0)).addToStart(SizedBox(height: 16.0)),
      ),
    );
  }
}
