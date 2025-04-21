import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'menu_item_model.dart';
export 'menu_item_model.dart';

class MenuItemWidget extends StatefulWidget {
  const MenuItemWidget({
    super.key,
    bool? isActivePage,
    required this.text,
    required this.icon,
    bool? hasNumberTag,
    int? number,
    bool? hasSubMenu,
    bool? subMenuExpanded,
  })  : this.isActivePage = isActivePage ?? false,
        this.hasNumberTag = hasNumberTag ?? false,
        this.number = number ?? 0,
        this.hasSubMenu = hasSubMenu ?? false,
        this.subMenuExpanded = subMenuExpanded ?? false;

  final bool isActivePage;
  final String? text;
  final Widget? icon;
  final bool hasNumberTag;
  final int number;
  final bool hasSubMenu;
  final bool subMenuExpanded;

  @override
  State<MenuItemWidget> createState() => _MenuItemWidgetState();
}

class _MenuItemWidgetState extends State<MenuItemWidget> {
  late MenuItemModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MenuItemModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      opaque: false,
      cursor: MouseCursor.defer ?? MouseCursor.defer,
      child: Container(
        height: 50.0,
        decoration: BoxDecoration(
          color: valueOrDefault<Color>(
            () {
              if (widget.isActivePage) {
                return Color(0x4AEAD3F0);
              } else if (!widget.isActivePage && _model.mouseRegionHovered) {
                return Color(0x4AEAD3F0);
              } else {
                return Colors.transparent;
              }
            }(),
            Colors.transparent,
          ),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 50.0,
              height: 50.0,
              decoration: BoxDecoration(),
              alignment: AlignmentDirectional(0.0, 0.0),
              child: widget.icon!,
            ),
            if (responsiveVisibility(
              context: context,
              phone: false,
              tablet: false,
              tabletLandscape: false,
            ))
              Container(
                width: 200.0,
                height: 50.0,
                decoration: BoxDecoration(),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 4.0, 0.0),
                        child: Text(
                          valueOrDefault<String>(
                            widget.text,
                            'Text',
                          ),
                          style: FlutterFlowTheme.of(context)
                              .bodyLarge
                              .override(
                                fontFamily: 'Plus Jakarta Sans',
                                color: valueOrDefault<Color>(
                                  widget.isActivePage
                                      ? FlutterFlowTheme.of(context).primary
                                      : FlutterFlowTheme.of(context).primary100,
                                  FlutterFlowTheme.of(context).primary100,
                                ),
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w600,
                              ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
      onEnter: ((event) async {
        safeSetState(() => _model.mouseRegionHovered = true);
      }),
      onExit: ((event) async {
        safeSetState(() => _model.mouseRegionHovered = false);
      }),
    );
  }
}
