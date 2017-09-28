# build hello-world project

# cd hello-world
# xcodebuild -project hello-world.xcodeproj -scheme hello-worldTests -sdk iphonesimulator -destination 'platform=iOS Simulator,name=iPhone 7,OS=10.3.1' test
xcodebuild clean build test -project hello-world/hello-world.xcodeproj -scheme "hello-world" -configuration Debug -sdk iphonesimulator

# xcodebuild test -project URLHelpers/URLHelper.xcodeproj -scheme "URLHelper" -sdk iphonesimulator -destination 'platform=iOS Simulator,name=iPhone 6,OS=latest'


