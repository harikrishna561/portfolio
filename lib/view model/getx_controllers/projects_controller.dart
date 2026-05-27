import 'package:get/get.dart';
import '../../model/project_model.dart';

class ProjectController extends GetxController {

  // Dynamic hover list
  RxList<bool> hovers = <bool>[].obs;

  @override
  void onInit() {
    super.onInit();

    // Generate hover states based on project list length
    hovers.value =
        List.generate(projectList.length, (index) => false);
  }

  // Hover function
  void onHover(int index, bool value) {
    if (index < hovers.length) {
      hovers[index] = value;
    }
  }
}