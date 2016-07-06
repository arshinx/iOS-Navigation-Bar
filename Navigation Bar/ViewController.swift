//
//  ViewController.swift
//  Navigation Bar
//
//  Created by Arshin Jain on 7/5/16.
//  Copyright © 2016 Arshin Jain. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // global scope
    @IBOutlet weak var label: UILabel!
    var time = 0
    
    func result() {
        
        time += 1
        
        print("\(time) time has passed!")
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBOutlet weak var start: UIBarButtonItem!

    @IBAction func startTimer(sender: AnyObject) {
        
        var timer = NSTimer()
        
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: #selector(ViewController.result), userInfo: nil, repeats: true)
        
        timer.fire()
    }
    

}

