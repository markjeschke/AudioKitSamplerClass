# AudioKitSamplerClass
This is an AudioKit project that demonstrates how to subclass the AKMidiSampler in response to the following Stack Overflow question:

https://stackoverflow.com/questions/61646533/audiokit-aksampler-as-a-aknode-akpolyphonicnode-in-a-separate-class

## Installation

1. Within Terminal, run `git clone git@github.com:markjeschke/AudioKitSamplerClass.git` in the command line, or download the [zip](https://github.com/markjeschke/AudioKitSamplerClass/archive/master.zip) to your local drive.
2. If you have CocoaPods already installed, run `pod install` to install the AudioKit framework.
3. Open the `AudioKit Sampler Class.xcworkspace` source, and build the app to your iPhone or iPad.

### If you don't have CocoaPods installed, please follow these directions:

1. Within Terminal, enter `$ sudo gem install cocoapods` in the command line.
2. Change directory, so that you'll be in the root directory of this "AudioKit Sampler Class" Xcode project. 
3. Run `pod install` to install the pods that are listed in the Podfile.
4. Once the installation has completed, open the project by clicking to open `AudioKit Sampler Class.xcworkspace` – not the `AudioKit Sampler Class.xcodeproj`.

If you're having trouble installing CocoaPods, please refer to their [installation instructions](https://cocoapods.org/#install).

## Project Specs
This project was built with Xcode 11.4.1 and AudioKit version 4.9.5

