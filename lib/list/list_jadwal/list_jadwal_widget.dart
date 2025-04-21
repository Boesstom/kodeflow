import '/component/card_list/card_list_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'list_jadwal_model.dart';
export 'list_jadwal_model.dart';

class ListJadwalWidget extends StatefulWidget {
  const ListJadwalWidget({super.key});

  @override
  State<ListJadwalWidget> createState() => _ListJadwalWidgetState();
}

class _ListJadwalWidgetState extends State<ListJadwalWidget> {
  late ListJadwalModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ListJadwalModel());

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
              iconButton: 'open',
            ),
          ),
        ].divide(SizedBox(height: 8.0)),
      ),
    );
  }
}
