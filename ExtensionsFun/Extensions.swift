//
//  Extensions.swift
//  ExtensionsFun
//
//  Created by Alex Nagy on 15/02/2019.
//  Copyright © 2019 Alex Nagy. All rights reserved.
//

import UIKit

extension String {
    func asGoodLanguage() -> String {
        return ""
    }
}

extension TimeInterval {
    func asTimeString() -> String {
        return ""
    }
}

extension Date {
    func asString() -> String {
        return ""
    }
    /*
     Wednesday, Sep 12, 2018           --> EEEE, MMM d, yyyy
     09/12/2018                        --> MM/dd/yyyy
     09-12-2018 14:11                  --> MM-dd-yyyy HH:mm
     Sep 12, 2:11 PM                   --> MMM d, h:mm a
     September 2018                    --> MMMM yyyy
     Sep 12, 2018                      --> MMM d, yyyy
     Wed, 12 Sep 2018 14:11:54 +0000   --> E, d MMM yyyy HH:mm:ss Z
     2018-09-12T14:11:54+0000          --> yyyy-MM-dd'T'HH:mm:ssZ
     12.09.18                          --> dd.MM.yy
     10:41:02.112                      --> HH:mm:ss.SSS
     */
}

extension Double {
    func convert(from originalUnit: UnitLength, to convertedUnit: UnitLength) -> Double {
        return 0.0
    }
    
    func rounded(to places:Int) -> Double {
        return 0.0
    }
}

extension Dictionary {
    mutating func update(with other:Dictionary) {
        
    }
}

extension UIView {
    func asImage() -> UIImage? {
        return nil
    }
}

extension UINavigationController {
    func pushViewControllerFromLeft(controller: UIViewController) {
        
    }
    
    func popViewControllerToLeft() {
        
    }
    
    func hideNavigationItemBackground() {
        
    }
}

extension UIApplication {
    class func getTopMostViewController(base: UIViewController? = UIApplication.shared.keyWindow?.rootViewController) -> UIViewController? {
        return nil
    }
}
