//
//  TextLockDelegate.swift
//  TextFieldChallenge
//
//  Created by Andreas Talg on 22.04.15.
//  Copyright (c) 2015 Andreas Talg. All rights reserved.
//

import Foundation
import UIKit

class TextLockDelegate : NSObject, UITextFieldDelegate {
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        
        return true
        
    }
}