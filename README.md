# BuckWiki
This repo contains collections of BUCK for cocoapods projects.

The goal of this repo is to have as many cocoapods projects to ease the migration to using Buck Build


### To Install

```sh
# Install Buck
make install_buck
```

Note: you may need to [install Java 8](https://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html) before `buck` will run for you locally.

### Generating an Xcode Project
To generate the project from the terminal, just run `make project`. You can then run in the simulator or press `Cmd + U` to run the tests.

You may also use breakpoints, just like normal when using the generated Xcode project.


### To Contribute
1. Fork the repo and create your branch from `master`.
2. Added the pod in podfile.
3. Added the newly added the rule into [BUCK](https://github.com/StevenArmandLee/BuckWiki/blob/master/Pods/BUCK).
4. Import the newly added pod into [ViewController](https://github.com/StevenArmandLee/BuckWiki/blob/master/BuckTest/ViewController.swift).
5. Make sure the project can run without any crash.



### References
1. https://github.com/airbnb/BuckSample
1. https://github.com/airbnb/BuckSample/blob/master/Pods/BUCK gives a few examples on how we build CocoaPods with Buck
1. https://github.com/airbnb/BuckSample/blob/master/App/BUCK is the main build file which shows how we setup resources/assets and build the final binary/ipa file.
1. https://www.youtube.com/watch?v=8OF7L3SdY5U "Fast reliable Swift builds with Buck" - Robbert van Ginkel
1. https://www.youtube.com/watch?v=uvNI_E0ZgZU "Ludicrously Fast Builds with Buck" - Simon Stewart


Buck Build channel https://buckbuild.slack.com.
