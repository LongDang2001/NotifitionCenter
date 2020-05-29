//
//  ViewController.swift
//  Notifition Center
//
//  Created by admin on 2/16/20.
//  Copyright © 2020 Long. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textFieldView: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // dang ky quan sat
        NotificationCenter.default.addObserver(self, selector: #selector(onDidReceiveData(_:)), name: .didReceiveData, object: SecondViewController.sharet)
        
        // goi ham xoa thong bao trung tam
        NotificationCenter.default.removeObserver(self, name: .didReceiveData, object: nil)
    }
    
    // chuc nang muon goi khi thay thong bao, lay data de truyen di
    @objc func onDidReceiveData(_ notification: NSNotification) {
        textFieldView.text = notification.object as! String
        
    }
    @IBAction func nextToView() {
        
    }
}

 //thuan tien hon khi thong bao nhu the nay, dung extension, thong bao ham tinh
extension Notification.Name {
    static let didReceiveData = Notification.Name("didReceiveData")
    static let didCompleteTask = Notification.Name("didCompleteTask")

}

