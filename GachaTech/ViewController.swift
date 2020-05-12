//
//  ViewController.swift
//  GachaTech
//
//  Created by Kusunose Hosho on 2020/05/12.
//  Copyright © 2020 Kusunose Hosho. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func Gacha() {
        self.performSegue(withIdentifier: "result", sender: nil)        //performSegueはコードだけで画面遷移するときに使う
    }

}

