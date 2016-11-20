//
//  CustomerlyNavigationController.swift
//  Customerly
//
//  Created by Paolo Musolino on 19/11/16.
//
//

import UIKit

class CustomerlyNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        applyCyNavBarCustomization()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    //The chat flow support only portrait orientation
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask{
        
        return UIInterfaceOrientationMask.portrait
    }

    //MARK: Customizations
    func applyCyNavBarCustomization(){
        
        self.navigationBar.barTintColor = UIColor.white //background color navbar
        self.navigationBar.tintColor = UIColor.black //tint color elements on navbar
        self.navigationBar.isTranslucent = false //navbar is not translucent
        
        //self.navigationBar.titleTextAttributes = [NSFontAttributeName:UIFont(name: "Lato-Regular", size: 17)!, NSForegroundColorAttributeName: UIColor.blackColor()] //font title navbar
        
        //Delete 1px line under navigation bar
        self.navigationBar.setBackgroundImage(UIImage(), for: UIBarPosition.any, barMetrics: UIBarMetrics.default)
        self.navigationBar.shadowImage = UIImage()
        
    }
    
}
