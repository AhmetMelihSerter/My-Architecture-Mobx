import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:vexana/vexana.dart';

import '../../../core/base/service/no_service.dart';
import '../../../core/base_init/local/i_local_manager.dart';
import '../../../core/base_init/logger/i_logger_manager.dart';
import '../../../core/base_init/navigation/i_navigation_service.dart';
import '../../../core/base_init/network/i_core_network_manager.dart';
import '../../../core/base_init/secure/i_secure_manager.dart';
import '../../../core/constants/app/application_constants.dart';
import '../../../core/constants/enums/app_enum.dart';
import '../../../feature/home/service/fake_home_service.dart';
import '../../../feature/home/service/home_service.dart';
import '../../../feature/home/service/i_home_service.dart';
import '../../../feature/home/view_model/home_view_model.dart';
import '../../../feature/login/service/fake_login_service.dart';
import '../../../feature/login/service/i_login_service.dart';
import '../../../feature/login/service/login_service.dart';
import '../../../feature/login/view_model/login_view_model.dart';
import '../../../feature/onboard/view_model/onboard_view_model.dart';
import '../../../product/init/theme/theme_manager.dart';
import '../language/language_manager.dart';
import '../local/hive_manager.dart';
import '../logger/logger_manager.dart';
import '../navigation/navigation_router.dart';
import '../navigation/navigation_service.dart';
import '../network/vexana_manager.dart';
import '../secure/secure_storage.dart';
import '../theme/i_theme_manager.dart';

part 'startup.dart';
