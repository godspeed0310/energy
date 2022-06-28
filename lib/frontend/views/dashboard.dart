import 'package:energy/backend/viewmodels/dashboard_view_model.dart';
import 'package:energy/frontend/shared/shared_constants.dart';
import 'package:energy/frontend/views/tabs/history.dart';
import 'package:energy/frontend/views/tabs/map.dart';
import 'package:energy/frontend/views/tabs/menu.dart';
import 'package:energy/frontend/widgets/navbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:stacked/stacked.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DashboardViewModel>.reactive(
      viewModelBuilder: () => DashboardViewModel(),
      builder: (context, model, child) {
        return AnnotatedRegion<SystemUiOverlayStyle>(
          value: defaultSystemOverlay,
          child: Scaffold(
            body: PageView(
              controller: model.pageController,
              children: const [
                MapTab(),
                HistoryTab(),
                MenuTab(),
              ],
            ),
            bottomNavigationBar: NavBar(
              onTap: (value) => model.updatePage(value),
              currentIndex: model.currentPage,
            ),
          ),
        );
      },
    );
  }
}
