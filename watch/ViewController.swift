//
//  ViewController.swift
//  watch
//
//  Created by D7703_22 on 2018. 4. 10..
//  Copyright © 2018년 D7703_22. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var timelabel: UILabel!
    @IBOutlet weak var sw: UISwitch!
    var myTimer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
   
    sw.setOn(false, animated: true)
    }
    
    func updateTime() {
        let date = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm:ss EE"
        timelabel.text = formatter.string(from: date)
    }
    @IBAction func start(_ sender: Any) {
        if sw.isOn == true {
            myTimer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: {(myTimer) in
                self.updateTime()
            })
            
        } else {
            myTimer.invalidate()
            
        }
    }
}







