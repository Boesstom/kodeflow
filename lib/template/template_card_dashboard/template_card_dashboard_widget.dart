import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'template_card_dashboard_model.dart';
export 'template_card_dashboard_model.dart';

class TemplateCardDashboardWidget extends StatefulWidget {
  const TemplateCardDashboardWidget({
    super.key,
    required this.widget,
    this.icon,
    required this.title,
  });

  final Widget Function()? widget;
  final Widget? icon;
  final String? title;

  @override
  State<TemplateCardDashboardWidget> createState() =>
      _TemplateCardDashboardWidgetState();
}

class _TemplateCardDashboardWidgetState
    extends State<TemplateCardDashboardWidget> {
  late TemplateCardDashboardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TemplateCardDashboardModel());

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
      width: double.infinity,
      constraints: BoxConstraints(
        maxWidth: 458.0,
      ),
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
        boxShadow: [
          BoxShadow(
            blurRadius: 1.0,
            color: Color(0x33000000),
            offset: Offset(
              0.0,
              2.0,
            ),
          )
        ],
        borderRadius: BorderRadius.circular(12.0),
        border: Border.all(
          color: FlutterFlowTheme.of(context).primary100,
          width: 1.0,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(24.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 24.0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  widget.icon!,
                  Text(
                    valueOrDefault<String>(
                      widget.title,
                      'Title',
                    ),
                    style: FlutterFlowTheme.of(context).headlineSmall.override(
                          fontFamily: 'Plus Jakarta Sans',
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ].divide(SizedBox(width: 12.0)),
              ),
            ),
            Container(
              height: 300.0,
              decoration: BoxDecoration(),
              child: Builder(builder: (_) {
                return widget.widget != null
                    ? widget.widget!()
                    : SizedBox.shrink();
              }),
            ),
          ],
        ),
      ),
    );
  }
}
