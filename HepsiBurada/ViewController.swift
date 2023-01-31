//
//  ViewController.swift
//  HepsiBurada
//
//  Created by Hüseyin Demirkoparan on 26.01.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageField: UIImageView!
    
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var buttonLocation: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let tabItems = tabBarController?.tabBar.items{
            let anasayfaItem = tabItems[0]
            let kategorilerItem = tabItems[1]
        }
        let appearance = UITabBarAppearance()
        
        renkDegistir(itemAppearance: appearance.stackedLayoutAppearance)
        renkDegistir(itemAppearance: appearance.inlineLayoutAppearance)
        renkDegistir(itemAppearance: appearance.compactInlineLayoutAppearance)
        
        tabBarController?.tabBar.standardAppearance = appearance
        tabBarController?.tabBar.scrollEdgeAppearance = appearance
        
        
        textField.setupLeftSideImage(ImageViewNamed :"search-icon")
        textField.setupRightSideImage(ImageViewNamed :"camera-icon")

            
    }
}
func renkDegistir(itemAppearance:UITabBarItemAppearance){
    itemAppearance.selected.iconColor = UIColor.systemOrange
    itemAppearance.selected.titleTextAttributes = [.foregroundColor: UIColor.systemOrange]
    itemAppearance.selected.badgeBackgroundColor = UIColor.systemOrange
}

extension UITextField {
    func setupLeftSideImage(ImageViewNamed:String){
        let imageView = UIImageView(frame: CGRect(x: 10, y: 10, width: 25, height: 25))
        imageView.image = UIImage(named: ImageViewNamed)
        let imageViewContainerView = UIView(frame: CGRect(x: 0, y: 0, width: 35, height: 45))
        imageViewContainerView.addSubview(imageView)
        leftView = imageViewContainerView
        leftViewMode = .always
        self.tintColor = .lightGray
    }
        func setupRightSideImage(ImageViewNamed:String){
            let imageView = UIImageView(frame: CGRect(x: 12, y: 12, width: 25, height: 25))
            imageView.image = UIImage(named: ImageViewNamed)
            let imageViewContainerView = UIView(frame: CGRect(x: 0, y: 0, width: 45, height: 45))
            imageViewContainerView.addSubview(imageView)
            rightView = imageViewContainerView
            rightViewMode = .always
            self.tintColor = .lightGray
        }
    }


