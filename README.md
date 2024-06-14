# Flutter Mobile : Clean and Modular Architecture

### Author : James Brel

### Alias : The Coder

### Contact : thecoder38@gmail.com
---

<img src="img/flutter.png" alt="logo" width="200" height="200">

---
## Architecture 
   the architecture of each feature is based on the clean architecture of Uncle Bob which is constituted mainly of 3 layers :
   - Data
   - Domain
   - States Holder

```
📦features
 ┗ 📂fetch_hello_world
 ┃ ┣ 📂states_holder
 ┃ ┣ 📂data
 ┃ ┗ 📂domain
```

## General Folder Structure Tree 
```
📦project
 ┣ 📂.env
 ┃ ┣ 📜dev.json
 ┃ ┣ 📜prod.json
 ┃ ┗ 📜staging.json
 ┣ 📂.vscode
 ┃ ┗ 📜launch.json
 ┣ 📂android
 ┃ ┣ 📂app
 ┃ ┃ ┣ 📂src
 ┃ ┃ ┃ ┗ 📜AndroidManifest.xml
 ┃ ┃ ┣ 📜build.gradle
 ┃ ┃ ┗ 📜proguard-rules.pro
 ┃ ┣ 📜key.properties
 ┃ ┗ 📜readme.md
 ┣ 📂assets
 ┃ ┣ 📂fonts
 ┃ ┃ ┗ 📜.gitkeep
 ┃ ┣ 📂images
 ┃ ┃ ┣ 📂jpg
 ┃ ┃ ┃ ┗ 📜.gitkeep
 ┃ ┃ ┣ 📂png
 ┃ ┃ ┃ ┗ 📜.gitkeep
 ┃ ┃ ┗ 📂svg
 ┃ ┃ ┃ ┗ 📜.gitkeep
 ┃ ┣ 📂languages
 ┃ ┃ ┣ 📜en.json
 ┃ ┃ ┗ 📜fr.json
 ┃ ┗ 📜readme.md
 ┣ 📂integration_test
 ┃ ┗ 📂views
 ┃ ┃ ┣ 📂screens
 ┃ ┃ ┃ ┗ 📜.gitkeep
 ┃ ┃ ┗ 📂widgets
 ┃ ┃ ┃ ┗ 📜.gitkeep
 ┣ 📂lib
 ┃ ┣ 📂src
 ┃ ┃ ┣ 📂core
 ┃ ┃ ┃ ┣ 📂configs
 ┃ ┃ ┃ ┃ ┣ 📂assets_config
 ┃ ┃ ┃ ┃ ┃ ┗ 📜.gitkeep
 ┃ ┃ ┃ ┃ ┣ 📂injectors_config
 ┃ ┃ ┃ ┃ ┃ ┣ 📜injector.config.dart
 ┃ ┃ ┃ ┃ ┃ ┗ 📜injector.dart
 ┃ ┃ ┃ ┃ ┣ 📂language_config
 ┃ ┃ ┃ ┃ ┃ ┣ 📜translations_delegate.dart
 ┃ ┃ ┃ ┃ ┃ ┗ 📜translator.dart
 ┃ ┃ ┃ ┃ ┗ 📂windows_config
 ┃ ┃ ┃ ┃ ┃ ┗ 📜window_config.dart
 ┃ ┃ ┃ ┣ 📂router
 ┃ ┃ ┃ ┃ ┣ 📜auto_routes.dart
 ┃ ┃ ┃ ┃ ┗ 📜auto_routes.gr.dart
 ┃ ┃ ┃ ┣ 📂themes
 ┃ ┃ ┃ ┃ ┣ 📜dark_theme.dart
 ┃ ┃ ┃ ┃ ┗ 📜light_theme.dart
 ┃ ┃ ┃ ┗ 📜init.dart
 ┃ ┃ ┣ 📂modules
 ┃ ┃ ┃ ┗ 📂hello_world_mod
 ┃ ┃ ┃ ┃ ┣ 📂features
 ┃ ┃ ┃ ┃ ┃ ┗ 📂fetch_hello_world
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂data
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂local_source
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂absts
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜say_the_hello_world_abst.dart
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂impls
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜say_the_hello_world_impl.dart
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂models
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜.gitkeep
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂remote_source
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂absts
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜.gitkeep
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂impls
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜.gitkeep
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂models
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜.gitkeep
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂reposit_impls
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜the_system_say_hello_world_reposit_impl.dart
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂domain
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂entities
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜.gitkeep
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂reposit_absts
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜the_system_say_hello_world_reposit_abst.dart
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂usecases
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜system_say_hello_world_usecase.dart
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂states_holder
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂hello_world_bloc
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜hello_world_bloc.dart
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜hello_world_event.dart
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜hello_world_state.dart
 ┃ ┃ ┃ ┃ ┗ 📂ui
 ┃ ┃ ┃ ┃ ┃ ┣ 📂screens
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜welcome_screen.dart
 ┃ ┃ ┃ ┃ ┃ ┗ 📂widgets
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜.gitkeep
 ┃ ┃ ┗ 📂shared
 ┃ ┃ ┃ ┣ 📂constants
 ┃ ┃ ┃ ┃ ┣ 📜colors_const.dart
 ┃ ┃ ┃ ┃ ┣ 📜double_const.dart
 ┃ ┃ ┃ ┃ ┣ 📜envs_const.dart
 ┃ ┃ ┃ ┃ ┣ 📜int_const.dart
 ┃ ┃ ┃ ┃ ┣ 📜lang_const.dart
 ┃ ┃ ┃ ┃ ┣ 📜routes_const.dart
 ┃ ┃ ┃ ┃ ┗ 📜string_const.dart
 ┃ ┃ ┃ ┣ 📂extensions
 ┃ ┃ ┃ ┃ ┗ 📜.gitkeep
 ┃ ┃ ┃ ┣ 📂global
 ┃ ┃ ┃ ┃ ┗ 📜string_variable.dart
 ┃ ┃ ┃ ┣ 📂helpers
 ┃ ┃ ┃ ┃ ┗ 📜.gitkeep
 ┃ ┃ ┃ ┣ 📂services
 ┃ ┃ ┃ ┃ ┣ 📂cache
 ┃ ┃ ┃ ┃ ┃ ┣ 📂configs
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜cache_instance.dart
 ┃ ┃ ┃ ┃ ┃ ┣ 📂enums
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜shared_preference_enum.dart
 ┃ ┃ ┃ ┃ ┃ ┗ 📂requests
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂shared_preference_requests
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜shared_delete_request.dart
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜shared_get_request.dart
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜shared_put_request.dart
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂shared_preference_streaming_requests
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜stream_delete_request.dart
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜stream_get_request.dart
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜stream_put_request.dart
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂storage_requests
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜storage_delete_request.dart
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜storage_get_request.dart
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜storage_put_request.dart
 ┃ ┃ ┃ ┃ ┣ 📂connection
 ┃ ┃ ┃ ┃ ┃ ┣ 📂configs
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜connection_instance.dart
 ┃ ┃ ┃ ┃ ┃ ┗ 📂requests
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜connection_checker_request.dart
 ┃ ┃ ┃ ┃ ┣ 📂firebase
 ┃ ┃ ┃ ┃ ┃ ┣ 📂configs
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜firebase_config.dart
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜firebase_instance.dart
 ┃ ┃ ┃ ┃ ┃ ┣ 📂database
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜user_model.dart
 ┃ ┃ ┃ ┃ ┃ ┣ 📂options
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂dev
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜firebase_emulators_dev.dart
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂staging
 ┃ ┃ ┃ ┃ ┃ ┣ 📂requests
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂analytics_requests
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜analytic_get_event_request.dart
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜analytic_observer_request.dart
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂auth_requests
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜phone_auth_request.dart
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂firebase_storage_requests
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜firebase_storage_get_request.dart
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜firebase_storage_post_request.dart
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂firestore_requests
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜firestore_delete_request.dart
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜firestore_get_request.dart
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜firestore_post_request.dart
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜firestore_update_request.dart
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂firestore_stream_requests
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜firestore_stream_get_request.dart
 ┃ ┃ ┃ ┃ ┃ ┗ 📂utils
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜convert_util.dart
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜root_util.dart
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜status_util.dart
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜string_util.dart
 ┃ ┃ ┃ ┃ ┣ 📂http
 ┃ ┃ ┃ ┃ ┃ ┣ 📂apis
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜account_api.dart
 ┃ ┃ ┃ ┃ ┃ ┣ 📂configs
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜dio_instance.dart
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜http_overrides_helper.dart
 ┃ ┃ ┃ ┃ ┃ ┣ 📂requests
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜http_delete_request.dart
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜http_get_request.dart
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜http_post_request.dart
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜http_update_request.dart
 ┃ ┃ ┃ ┃ ┃ ┗ 📜api_version.dart
 ┃ ┃ ┃ ┃ ┣ 📂image
 ┃ ┃ ┃ ┃ ┃ ┣ 📂configs
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜image_instance.dart
 ┃ ┃ ┃ ┃ ┃ ┣ 📂messages
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜note_message.dart
 ┃ ┃ ┃ ┃ ┃ ┗ 📂requests
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜image_camera_request.dart
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜image_compress_request.dart
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜image_copper_request.dart
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜image_gallery_request.dart
 ┃ ┃ ┃ ┃ ┣ 📂isar
 ┃ ┃ ┃ ┃ ┃ ┣ 📂configs
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜isar_config.dart
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜isar_instance.dart
 ┃ ┃ ┃ ┃ ┃ ┣ 📂database
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂user_models
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜.gitkeep
 ┃ ┃ ┃ ┃ ┃ ┣ 📂requests
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂isar_requests
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜isar_delete_request.dart
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜isar_get_request.dart
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜isar_post_request.dart
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜isar_update_request.dart
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂isar_stream_requests
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜isar_get_stream_request.dart
 ┃ ┃ ┃ ┃ ┃ ┗ 📂utils
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜statuts_util.dart
 ┃ ┃ ┃ ┃ ┣ 📂jwt
 ┃ ┃ ┃ ┃ ┃ ┗ 📂requests
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜jwt_decode_request.dart
 ┃ ┃ ┃ ┃ ┗ 📂security
 ┃ ┃ ┃ ┃ ┃ ┗ 📂requests
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜decrypt_request.dart
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜encrypt_request.dart
 ┃ ┃ ┃ ┗ 📂ui
 ┃ ┃ ┃ ┃ ┣ 📂screens
 ┃ ┃ ┃ ┃ ┃ ┗ 📜.gitkeep
 ┃ ┃ ┃ ┃ ┗ 📂widgets
 ┃ ┃ ┃ ┃ ┃ ┗ 📜.gitkeep
 ┃ ┗ 📜main.dart
 ┣ 📂test
 ┃ ┗ 📜.gitkeep
 ┣ 📜.gitignore
 ┣ 📜analysis_options.yaml
 ┗ 📜flutter_native_splash.yaml
```

## Usage and Configuration

Once you have created your application or flutter project, you clone the architecture from Github, to start on a good basis

Note: 
the predefined files, such as welcome.dart in the front end and other folders, as well as example_test file, are only files that will allow you to be on the right track and to get a good understanding of the architecture.

 - <span style="color:yellow">step_1</span>: Installation of pre_packages for pre-launch
    Inside the pubspec.yaml file, you must integrate firstly the following dependencies : 

   ```yaml
   -----------StartUp Dependencies------------
   flutter_localizations:
      sdk: flutter
   intl: ^0.18.0
   flutter_native_splash: ^2.3.2
   auto_route: ^7.8.4
   equatable: ^2.0.5
   get_it: ^7.6.2
   injectable: ^2.3.2
   flutter_bloc: ^8.1.3
   bloc: ^8.1.2
   multiple_result: ^5.1.0
   fluttertoast: ^8.2.2
   ----------------------------
   ```
 - <span style="color:yellow">step_1</span>: Installation of dev_dependencies
    Inside the pubspec.yaml file, you must integrate firstly the following packages :

   ```yaml
   auto_route_generator: ^7.3.2 
   injectable_generator: ^2.4.1
   build_runner: ^2.4.6
   ```
    these packages will allow you to easily activate the various files imported into the architecture.
    then, you just have to follow, the readme.md in the folder **assets**

- <span style="color:yellow">step_2</span>: Integration of the architecture
   once in the Clean and Modular Architecture folder, you copy all its content to paste it in your project.

- <span style="color:yellow">Bonus</span>: The dependencies you need for the various services and config

   - ### Cache
   ```yaml
   flutter_secure_storage: ^9.0.0
   shared_preferences: ^2.2.1
   streaming_shared_preferences: ^2.0.0
   ```
   - ### Connexion
   ```yaml
   internet_connection_checker_plus: ^2.4.1
   ```
   - ### Firebase
   ```yaml
   firebase_core: ^2.15.0
   firebase_app_check: ^0.1.5+2
   firebase_auth: ^4.7.2
   cloud_firestore: ^4.8.4
   firebase_storage: ^11.2.5
   firebase_messaging: ^14.6.5
   firebase_crashlytics: ^3.3.5
   firebase_analytics: ^10.4.5
   cloud_functions: ^4.4.0
   ```
   - ### Http
   ```yaml
   dio: ^5.4.3+1
   ```
   - ### Image
   ```yaml
   image_picker: ^1.0.0
   flutter_native_image: ^0.0.6+1
   image_cropper: ^5.0.0
   ```
   - ### Isar
   ```yaml
   isar: ^3.1.0+1
   isar_flutter_libs: ^3.1.0+1
   isar_generator: ^3.1.0+1
   ```
   - ### Jwt
   ```yaml
   jwt_decoder: ^2.0.1
   ```
   - ### assets_gen
   ```yaml
   flutter_svg: ^2.0.7
   flutter_gen: ^5.5.0+1
   flutter_gen_runner: ^5.5.0+1
   ```
   add this following line in 
   pubspec.yaml
   ```yaml
   flutter_gen:
      # Optional
      output: lib/src/core/configs/assets_config
      # Optional
      line_length: 80
      # Optional
      parse_metadata: false

      # Optional
      integrations:
         flutter_svg: true
         flare_flutter: true
         rive: true
         lottie: false

      assets:
         # Optional
         enabled: true
         # Optional
         outputs:
            # Optional
            # Set to true if you want this package to be a package dependency
            # See: https://flutter.dev/docs/development/ui/assets-and-images#from-packages
            package_parameter_enabled: true
            # Optional
            # Available values:
            # - camel-case
            # - snake-case
            # - dot-delimiter
            style: dot-delimiter
            class_name: Assets
         exclude: []

      fonts:
         # Optional
         enabled: true
         # Optional
         outputs:
            class_name: FontFamily
   ```
   after you read the doc : https://pub.dev/packages/flutter_gen

   - ### test
   add in dev_dependencies
   ```yaml
   bloc_test: ^9.1.1
   mocktail: ^0.3.0
   integration_test:
      sdk: flutter
   ```

---
<p style="text-align: center"> Copyright &copy; 2024 James Brel All Rights Reserved</p>      