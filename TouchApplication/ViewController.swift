//
//  ViewController.swift
//  TouchApplication
//
//  Created by Chun-Li Cheng on 2023/4/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonTapped(_ sender: UIButton) {
        let alert = UIAlertController(title: "警告", message: "測試視窗", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "確認", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
        
    }
    
}

