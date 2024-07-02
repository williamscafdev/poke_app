ipa:
	fvm flutter build ipa -t lib/main_dev.dart  --flavor dev --dart-define=devTools=false

ipa_dev:
	fvm flutter build ipa -t lib/main_prod.dart  --flavor prod --dart-define=devTools=false

aab:
	fvm flutter build appbundle -t lib/main_prod.dart  --flavor dev --dart-define=devTools=false

aab.dev:
	fvm flutter build appbundle  -t lib/main_dev.dart  --flavor prod -dart-define=devTools=false

apk.dev:
	fvm flutter build apk -t lib/main_dev.dart --flavor dev --dart-define=devTools=false

apk.prod:
	fvm flutter build apk -t lib/main_prod.dart --flavor prod --dart-define=devTools=false

apk.release.dev:
	fvm flutter build apk --release -t lib/main_dev.dart  --flavor dev --dart-define=devTools=false
	
apk.release.prod:
	fvm flutter build apk --release -t lib/main_prod.dart  --flavor prod --dart-define=devTools=false

open.apk:
	open build/app/outputs/flutter-apk/

run.flavorize:
	fvm flutter pub run flutter_flavorizr

analyze:
	fvm flutter analyze

icon.app:
	fvm flutter pub run flutter_launcher_icons

b:
	fvm dart run build_runner build --delete-conflicting-outputs

clear:
	fvm dart run build_runner clean

init:
	fvm flutter clean && fvm flutter pub get packages && fvm flutter pub upgrade && fvm dart run build_runner clean && fvm dart run build_runner build --delete-conflicting-outputs
