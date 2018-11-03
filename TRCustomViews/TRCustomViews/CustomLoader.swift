//
//  CustomLoader.swift
//  TRCustomViews
//
//  Created by kerimcaglar on 3.11.2018.
//  Copyright © 2018 kerimcaglar. All rights reserved.
//

import UIKit

public class CustomLoader: UIView {
    
    public static let customLoaderInstance = CustomLoader()
    
    public var mainView:UIView!
    public var alfaValueOfLoaderView:CGFloat! = 0.4
    public var alphaValueOfLabel:CGFloat! = 0.7
    public var viewWidth: CGFloat! = 200
    public var viewHeight: CGFloat! = 200
    public var imageWidth:CGFloat! = 100
    public var imageHeight:CGFloat! = 100
    
    //if you want to show a text (optional)
    public var loadingText:String? = ""
    
    //    loader view:
    public lazy var loaderView:UIView = {
        let view = UIView()
        view.isUserInteractionEnabled = false
        view.backgroundColor = UIColor.black.withAlphaComponent(alfaValueOfLoaderView)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    //    loader image:
    public lazy var loadingImage:UIImageView = {
        let image = UIImageView()
        image.center = loaderView.center
        image.image = UIImage(named: "loading")
        image.contentMode = .scaleAspectFit
        image.isUserInteractionEnabled = false
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    //    loader labelText:
    public lazy var loadingLabel: UILabel = {
        
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.isUserInteractionEnabled = false
        label.text = loadingText
        label.textColor = UIColor.white.withAlphaComponent(alphaValueOfLabel!)
        return label
    }()
    public func showCustomLoader(){
        self.loaderView.layer.masksToBounds = true
        self.loaderView.layer.cornerRadius = 4
        
        self.mainView.addSubview(self)
        self.addSubview(loaderView)
        
        loaderView.addSubview(loadingImage)
        loaderView.bringSubviewToFront(loadingImage)
        
        
        self.loaderView.centerXAnchor.constraint(equalTo: mainView.centerXAnchor).isActive = true
        self.loaderView.centerYAnchor.constraint(equalTo: mainView.centerYAnchor).isActive = true
        self.loaderView.widthAnchor.constraint(equalToConstant: viewWidth).isActive = true
        self.loaderView.heightAnchor.constraint(equalToConstant: viewHeight).isActive = true
        
        self.loaderView.addSubview(loadingLabel)
        self.loaderView.bringSubviewToFront(loadingLabel)
        
        loadingLabel.topAnchor.constraint(equalTo: loadingImage.bottomAnchor, constant: 3).isActive = true
        loadingLabel.centerXAnchor.constraint(equalTo: loaderView.centerXAnchor).isActive = true
        
        loadingImage.centerXAnchor.constraint(equalTo: loaderView.centerXAnchor).isActive = true
        loadingImage.centerYAnchor.constraint(equalTo: loaderView.centerYAnchor).isActive = true
        loadingImage.widthAnchor.constraint(equalToConstant: imageWidth).isActive = true
        loadingImage.heightAnchor.constraint(equalToConstant: imageHeight).isActive = true
        
        self.mainView.addSubview(loaderView)
        
    }
    
    public func removeCustomLoader() {
        self.loaderView.removeFromSuperview()
    }
    
}


