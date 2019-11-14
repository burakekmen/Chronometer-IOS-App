//
//  ViewController.swift
//  Chronometer App
//
//  Created by BURAK EKMEN on 14.11.2019.
//  Copyright © 2019 Burak Ekmen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: Variables
    var second = 0
    var timer = Timer()
    
    // MARK: IBOutlets
    
    @IBOutlet weak var timeLabel: UILabel!
    
    
    // MARK: IBActions
    
    @IBAction func startChronometer(_ sender: Any) {
        
        if second == 0 {
            timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(increase1second), userInfo: nil, repeats: true)
        }
    }
    
     
    @objc func increase1second(){
        second += 1
        timeLabel.text = String(second)
    }
    
    
    @IBAction func stopChronometer(_ sender: Any) {
        timer.invalidate()
    }
    
    
    @IBAction func resetChronometer(_ sender: Any) {
        second = 0
        timeLabel.text = String(second)
        timer.invalidate()
    }
    
    
    @IBAction func increase10ToChronometer(_ sender: Any) {
        second += 10
        timeLabel.text = String(second)
    }
    
    
    @IBAction func decrease10ToChronometer(_ sender: Any) {
        if second >= 10 {
            second -= 10
            timeLabel.text = String(second)
        }
        else{
            second = 0
            timeLabel.text = String(second)
        }
    }
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

