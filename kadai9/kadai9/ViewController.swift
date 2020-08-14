//
//  ViewController.swift
//  kadai9
//
//  Created by 白鳥貢 on 2020/08/12.
//  Copyright © 2020 mitsugu.shiratori. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var prefectureLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        prefectureLabel.text = "未選択"
    }
    
    @IBAction func pressSelectButton(_ sender: Any) {
    }
    
    @IBAction func exitCancel(segue:UIStoryboardSegue){
    }
    
    @IBAction func exitSelect(segue:UIStoryboardSegue){
        let second = segue.source as! SecondViewController
        let i = second.recentTagNumber
        print(i)
        prefectureLabel.text = second.buttons[i].currentTitle
    }
}
