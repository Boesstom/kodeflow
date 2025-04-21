import '/component/card_list/card_list_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'list_free_class_model.dart';
export 'list_free_class_model.dart';

class ListFreeClassWidget extends StatefulWidget {
  const ListFreeClassWidget({super.key});

  @override
  State<ListFreeClassWidget> createState() => _ListFreeClassWidgetState();
}

class _ListFreeClassWidgetState extends State<ListFreeClassWidget> {
  late ListFreeClassModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ListFreeClassModel());

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
      decoration: BoxDecoration(),
      child: ListView(
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        children: [
          wrapWithModel(
            model: _model.cardListModel,
            updateCallback: () => safeSetState(() {}),
            child: CardListWidget(
              icon: Icon(
                Icons.notifications_none,
                color: FlutterFlowTheme.of(context).primary,
                size: 32.0,
              ),
              title: 'Judul',
              date: '-',
              hour: '-',
              link: '-',
              iconButton: 'message',
            ),
          ),
        ].divide(SizedBox(height: 8.0)),
      ),
    );
  }
}
