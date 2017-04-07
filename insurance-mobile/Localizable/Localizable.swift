/*
 Localizable.swift
 
 Created by Rafael Moris on 2017-04-03.
 Copyright © 2017 Rafael Moris. All rights reserved.
 */

import UIKit

class Localizable {
    static func localize(key:String)->String {
        return NSLocalizedString(key, comment: "")
    }
    
    static func localize(key:String, comment:String)->String {
        return NSLocalizedString(key, comment: comment)
    }
    
    static func localizeImageNamed(name:String)->String {
        let deviceLanguage = Locale.preferredLanguages.first!
        var imageNamed:String = name
        
        if deviceLanguage == "pt-BR" {
            imageNamed += "_PT"
        }else {
            imageNamed += "_EN"
        }
        
        return imageNamed
    }
}
