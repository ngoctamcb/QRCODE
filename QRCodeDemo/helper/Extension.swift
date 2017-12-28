//
//  Extension.swift
//  QRCodeDemo
//
//  Created by TranNgocTam on 11/21/17.
//  Copyright © 2017 TranNgocTam. All rights reserved.
//

import Foundation
import UIKit

class Extension {
    
}

extension String {
    func randomString(withLenght: Int) -> String {
        let letters : NSString = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
        let len = UInt32(letters.length)
        
        var randomString = ""
        
        for _ in 0 ..< withLenght {
            let rand = arc4random_uniform(len)
            var nextChar = letters.character(at: Int(rand))
            randomString += NSString(characters: &nextChar, length: 1) as String
        }
        return randomString
    }
}

extension UIButton {
    func createBorder(withColor color: UIColor) {
        self.layer.borderWidth = 1.5
        self.layer.borderColor = color.cgColor
        self.layer.cornerRadius = 10
        self.layer.masksToBounds = true
    }
}
