# TRCustomViews - Setup and Usage
TRCustomViews sizlere projelerinizde kullanmak isteyeceğiniz özellikler katar. Örneğin, özelleştirilebilen bir yükleniyor animasyonu, uyarılar (yakında) gibi
TRCustomViews offers you the views you would like to use in your project, such as loading and alert (coming soon).
# CocoaPods Install
sudo gem install cocoapods
pod init
pod 'TRCustomViews'

# Usage 
In your ViewController

        CustomLoader.customLoaderInstance.mainView = self.view
        CustomLoader.customLoaderInstance.loadingImage.image = UIImage(named: "loading")
        CustomLoader.customLoaderInstance.loadingImage.rotate()
        CustomLoader.customLoaderInstance.loadingLabel.text = "Loading..."
        CustomLoader.customLoaderInstance.showCustomLoader()
