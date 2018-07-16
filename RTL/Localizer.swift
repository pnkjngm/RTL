//
//  Localizer.swift
//  RTL
//
//  Created by iSteer Inc. on 23/02/18.
//  Copyright © 2018 iSteer Inc. All rights reserved.
//

import Foundation


let APPLE_LANGUAGE_KEY = "AppleLanguages"

class Localizer {
    
    class func getLanguage() -> String{
        let userdef = UserDefaults.standard
        let langArray = userdef.object(forKey: APPLE_LANGUAGE_KEY) as! NSArray
        let current = langArray.firstObject as! String
        let endIndex = current.startIndex
        let currentWithoutLocale = current.substring(to: current.index(endIndex, offsetBy: 2))
        return currentWithoutLocale
    }
    class func getLanguageFull() -> String{
        let userdef = UserDefaults.standard
        let langArray = userdef.object(forKey: APPLE_LANGUAGE_KEY) as! NSArray
        let current = langArray.firstObject as! String
        return current
    }
    
    class func setLanguageTo(_ lang: String) {
        UserDefaults.standard.set([lang,getLanguage()], forKey: APPLE_LANGUAGE_KEY)
    }
}


