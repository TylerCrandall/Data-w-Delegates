//
//  ReceivingVC.swift
//  DelegateMayhem
//
//  Created by Tyler Crandall on 8/13/18.
//  Copyright © 2018 TCrandall. All rights reserved.
//

import UIKit

class ReceivingVC: UIViewController, DataSentDelegate {

    @IBOutlet weak var lblReceive: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func userDidEnterData(data: String) {
        lblReceive.text = data
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showSendingVC"{
            let sendingVC: SendingVC = segue.destination as! SendingVC
            sendingVC.delegate = self
        }
    }


}

