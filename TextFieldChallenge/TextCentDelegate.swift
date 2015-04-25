//
//  TextCentDelegate.swift
//  TextFieldChallenge
//
//  Created by Andreas Talg on 22.04.15.
//  Copyright (c) 2015 Andreas Talg. All rights reserved.
//

import Foundation
import UIKit

class TextCentDelegate : NSObject, UITextFieldDelegate {
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
      
      var newText: NSString = textField.text
      newText = newText.stringByReplacingCharactersInRange(range, withString: string)
      
      var newStr = ""
      // Step through all characters currently in text field and build new string
      for c in String(newText) {
        switch c {
        case "0"..."9" :
          newStr += String(c)
        default :
          break
        }
      }
      
      if let cents = newStr.toInt() {
        
        let strDollar = String(cents / 100)
        let strCents = String(cents % 100)
        textField.text = "$" + strDollar + "."
        
        if count(strCents) == 1 {
          textField.text = "$" + strDollar + ".0" + strCents
        } else {
          textField.text = "$" + strDollar + "." + strCents
        }
        
      } else {
        textField.text = "$0.00"
      }
      
      return false
      
    }
}