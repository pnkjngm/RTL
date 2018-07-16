//
//  ViewController.swift
//  RTL
//
//  Created by iSteer Inc. on 22/02/18.
//  Copyright © 2018 iSteer Inc. All rights reserved.
//

import UIKit

class RTL_Home_VC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func btnNextPageTapped(_ sender: Any) {
        let jump = self.storyboard?.instantiateViewController(withIdentifier: "RTL_Introduction_VC") as! RTL_Introduction_VC
        self.navigationController?.pushViewController(jump, animated: true)
    }
    
    
    @IBAction func btnChangeLanguage(_ sender: Any) {
        var transition: UIViewAnimationOptions = .transitionFlipFromLeft
        if Localizer.getLanguage() == "en" {
            Localizer.setLanguageTo("ar")
            UIView.appearance().semanticContentAttribute = .forceRightToLeft
        } else {
            Localizer.setLanguageTo("en")
            transition = .transitionFlipFromRight
            UIView.appearance().semanticContentAttribute = .forceLeftToRight
        }
        let rootviewcontroller: UIWindow = ((UIApplication.shared.delegate?.window)!)!
        rootviewcontroller.rootViewController = self.storyboard?.instantiateViewController(withIdentifier: "rootnav")
        let mainwindow = (UIApplication.shared.delegate?.window!)!
        mainwindow.backgroundColor = UIColor(hue: 0.6477, saturation: 0.6314, brightness: 0.6077, alpha: 0.8)
        UIView.transition(with: mainwindow, duration: 0.55001, options: transition, animations: { () -> Void in
        }) { (finished) -> Void in
            
        }
    }
    
}
