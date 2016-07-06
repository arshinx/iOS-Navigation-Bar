//
//  ViewController.swift
//  Navigation Bar
//
//  Created by Arshin Jain on 7/5/16.
//  Copyright © 2016 Arshin Jain. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var timer = NSTimer()
        
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("result"), userInfo: nil, repeats: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

