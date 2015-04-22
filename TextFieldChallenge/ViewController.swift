//
//  ViewController.swift
//  TextFieldChallenge
//
//  Created by Andreas Talg on 22.04.15.
//  Copyright (c) 2015 Andreas Talg. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textZIP: UITextField!
    @IBOutlet weak var textCent: UITextField!
    @IBOutlet weak var textLock: UITextField!
    @IBOutlet weak var switchLock: UISwitch!
    
    let zipDelegate = TextZipDelegate()
    let centDelegate = TextCentDelegate()
    let lockDelegate = TextLockDelegate()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        textZIP.delegate = zipDelegate
        textCent.delegate = centDelegate
        textLock.delegate = lockDelegate
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

