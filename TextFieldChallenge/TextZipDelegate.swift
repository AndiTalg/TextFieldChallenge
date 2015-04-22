//
//  TextZipDelegate.swift
//  TextFieldChallenge
//
//  Created by Andreas Talg on 22.04.15.
//  Copyright (c) 2015 Andreas Talg. All rights reserved.
//

import Foundation
import UIKit

class TextZipDelegate : NSObject, UITextFieldDelegate {

    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        
        var newText: NSString = textField.text
        newText = newText.stringByReplacingCharactersInRange(range, withString: string)
        
        if newText.length > 5 {
           return false
        } else { 
          return true
        }
        
    }
}