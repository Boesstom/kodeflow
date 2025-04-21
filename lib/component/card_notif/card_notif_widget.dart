import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'card_notif_model.dart';
export 'card_notif_model.dart';

class CardNotifWidget extends StatefulWidget {
  const CardNotifWidget({
    super.key,
    required this.content,
    bool? sukses,
  }) : this.sukses = sukses ?? false;

  final String? content;
  final bool sukses;

  @override
  State<CardNotifWidget> createState() => _CardNotifWidgetState();
}

class _CardNotifWidgetState extends State<CardNotifWidget>
    with TickerProviderStateMixin {
  late CardNotifModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CardNotifModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await Future.delayed(const Duration(milliseconds: 4000));
      Navigator.pop(context);
    });

    animationsMap.addAll({
      'containerOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 300.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 100.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0.0, 1.0),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 40.0),
        child: Container(
          width: MediaQuery.sizeOf(context).width * 1.0,
          height: 100.0,
          constraints: BoxConstraints(
            maxWidth: 450.0,
          ),
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).success,
            boxShadow: [
              BoxShadow(
                blurRadius: 12.0,
                color: Color(0x34000000),
                offset: Offset(
                  -2.0,
                  5.0,
                ),
              )
            ],
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 12.0, 8.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: 4.0,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryBackground,
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Flexible(
                          child: Text(
                            valueOrDefault<String>(
                              widget.content,
                              'Content',
                            ),
                            textAlign: TextAlign.center,
                            style:
                                FlutterFlowTheme.of(context).bodyLarge.override(
                                      fontFamily: 'Plus Jakarta Sans',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      fontSize: 14.0,
                                      letterSpacing: 0.0,
                                    ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ].divide(SizedBox(width: 12.0)),
            ),
          ),
        ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation']!),
      ),
    );
  }
}
