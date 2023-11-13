import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'new_page_model.dart';
export 'new_page_model.dart';

class NewPageWidget extends StatefulWidget {
  const NewPageWidget({Key? key}) : super(key: key);

  @override
  _NewPageWidgetState createState() => _NewPageWidgetState();
}

class _NewPageWidgetState extends State<NewPageWidget> {
  late NewPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NewPageModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 200,
                child: Stack(
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                      child: Image.network(
                        'https://images.unsplash.com/photo-1498603911539-01ce6c9ad8f5?w=1280&h=720',
                        width: double.infinity,
                        height: 340,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.90, -0.40),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                        child: FlutterFlowIconButton(
                          borderRadius: 30,
                          buttonSize: 40,
                          fillColor: Color(0x7F0F1113),
                          icon: Icon(
                            Icons.close_rounded,
                            color: Colors.white,
                            size: 20,
                          ),
                          onPressed: () {
                            print('IconButton pressed ...');
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                child: Text(
                  'Product Name',
                  style: FlutterFlowTheme.of(context).headlineSmall,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(24, 8, 24, 0),
                child: Text(
                  'Description of the product',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).labelMedium,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(24, 16, 24, 0),
                child: Container(
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Text(
                          'Seller',
                          style: FlutterFlowTheme.of(context).labelLarge,
                        ),
                      ),
                      Text(
                        'John Doe',
                        style: FlutterFlowTheme.of(context).bodyLarge,
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(8, 0, 4, 0),
                        child: Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: 24,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(24, 1, 24, 0),
                child: Container(
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Text(
                          'Contact Details',
                          style: FlutterFlowTheme.of(context).labelLarge,
                        ),
                      ),
                      Text(
                        'john.doe@example.com',
                        style: FlutterFlowTheme.of(context).bodyLarge,
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(8, 0, 4, 0),
                        child: Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: 24,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(24, 1, 24, 0),
                child: Container(
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Text(
                          'Payment',
                          style: FlutterFlowTheme.of(context).labelLarge,
                        ),
                      ),
                      Text(
                        'Credit Card',
                        style: FlutterFlowTheme.of(context).bodyLarge,
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(8, 0, 4, 0),
                        child: Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: 24,
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
    );
  }
}
