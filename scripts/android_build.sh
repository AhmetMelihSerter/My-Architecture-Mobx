if [[ $1 != "" && $1 == "bundle" ]]
then
flutter build appbundle
open build/app/outputs/bundle/release
echo "App Bundle Successfully!"
else
flutter build apk
open build/app/outputs/flutter-apk
echo "Apk Successfully!"
fi