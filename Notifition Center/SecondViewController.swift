//
//  SecondViewController.swift
//  Notifition Center
//
//  Created by admin on 2/16/20.
//  Copyright © 2020 Long. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var textFieldSecond: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    static let sharet = SecondViewController()
    
    @IBAction func backToView() {
        // dang ky khi co thong bao den
        NotificationCenter.default.post(name: .didReceiveData, object: self, userInfo: ["data": 42, "isImportant": 55])
        dismiss(animated: true, completion: nil)
    }

}
