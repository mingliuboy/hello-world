# build hello-world project

cd hello-world
xcodebuild -project hello-world.xcodeproj -scheme hello-world -configuration Debug -sdk iphonesimulator ONLY_ACTIVE_ARCH=NO clean build
