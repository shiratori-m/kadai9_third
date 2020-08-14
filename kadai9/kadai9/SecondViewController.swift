//
//  SecondViewController.swift
//  kadai9
//
//  Created by 白鳥貢 on 2020/08/12.
//  Copyright © 2020 mitsugu.shiratori. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet var buttons: [UIButton]!
    
    var recentTagNumber = 0
    var prefName:[String] = ["東京都","神奈川県","埼玉県","千葉県"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        prefectureName()
    }
    
    func prefectureName(){
        var i = 0
        for button in buttons{
            button.setTitle(prefName[i], for: .normal)
            i += 1
        }
    }
    
    @IBAction func pressButton(_ sender: UIButton) {
        recentTagNumber = sender.tag - 1
        performSegue(withIdentifier: "exitSelect", sender: sender)
    }
}
