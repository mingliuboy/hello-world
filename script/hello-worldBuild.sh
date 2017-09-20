# build hello-world project

cd hello-world
xcodebuild -project hello-world.xcodeproj -scheme hello-worldTests -sdk iphonesimulator -destination 'platform=iOS Simulator,name=iPhone 7,OS=10.3.1' test
# xcodebuild -project hello-world.xcodeproj -scheme hello-world -configuration Debug -sdk iphonesimulator ONLY_ACTIVE_ARCH=NO clean build
