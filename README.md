# TRCustomViews - Setup and Usage
TRCustomViews offers amazing view animations.
# CocoaPods Install
pod 'TRCustomViews'

# Usage 
In your ViewController

        CustomLoader.customLoaderInstance.mainView = self.view
        CustomLoader.customLoaderInstance.loadingImage.image = UIImage(named: "loading")
        CustomLoader.customLoaderInstance.loadingImage.rotate()
        CustomLoader.customLoaderInstance.loadingLabel.text = "Loading..."
        CustomLoader.customLoaderInstance.showCustomLoader()
