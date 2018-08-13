//
//  SendingVC.swift
//  DelegateMayhem
//
//  Created by Tyler Crandall on 8/13/18.
//  Copyright © 2018 TCrandall. All rights reserved.
//

import UIKit

protocol DataSentDelegate {
    func userDidEnterData(data: String)
    
}

class SendingVC: UIViewController {
    
    @IBOutlet weak var txtSendMe: UITextField!
    
    var delegate: DataSentDelegate? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    @IBAction func sendBtnWasPressed(_ sender: Any) {
        if delegate != nil {
            let data = txtSendMe.text
            delegate?.userDidEnterData(data: data!)
            dismiss(animated: true, completion: nil)
            
        }
    }
    
}
