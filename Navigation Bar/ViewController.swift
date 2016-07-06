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
    var timer = NSTimer()
    
    func result() {
        
        time += 1
        
        self.label.text = "\(time) seconds has passed!"
        
    }

    // No action when view loads
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Outlet -- Not being used presently
    @IBOutlet weak var start: UIBarButtonItem!

    // Start Timer Function
    @IBAction func startTimer(sender: AnyObject) {
        
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: #selector(ViewController.result), userInfo: nil, repeats: true)
        
        timer.fire()
    }
    
    // Stop Timer Function
    @IBAction func stop(sender: AnyObject) {

        timer.delete(self)
        
        self.label.text += " — Timer has been Stopped!"
        
    }
    
    

}

