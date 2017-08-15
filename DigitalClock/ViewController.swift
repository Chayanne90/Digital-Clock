//
//  ViewController.swift
//  DigitalClock
//
//  Created by Chayanne on 6/17/17.
//  Copyright © 2017 Chayanne. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var label: UILabel!
    @IBOutlet var settingsView: UIView!
    @IBOutlet var textSeg: UISegmentedControl!
    @IBOutlet var backgroundSeg: UISegmentedControl!
    @IBOutlet var settingBtn: UIButton!
    
    var timer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(ViewController.updateTimer), userInfo: nil, repeats: true)
        
        settingsView.isHidden = true
        settingBtn.alpha = 0.25
        label.alpha = 0
        
        settingsView.layer.cornerRadius = 10
        
        settingBtn.layer.cornerRadius = 10
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func updateTimer(){
        
        let timeformat = DateFormatter()
        timeformat.timeStyle = .medium
        label.text = timeformat.string(from: Date())
        label.alpha = 1.0
    }

    @IBAction func Setting(_ sender: Any) {
        
        if settingsView.isHidden == true {
            settingsView.isHidden = false
            settingBtn.setTitle("Hide Settings", for: [])
            settingBtn.alpha = 1.0
        }else{
        
            settingsView.isHidden = true
            settingBtn.setTitle("Show Settings", for: [])
            settingBtn.alpha = 0.25
        }
    }

    @IBAction func TextColor(_ sender: Any) {
        
        if (textSeg.selectedSegmentIndex == 0) {
            label.textColor = UIColor.green
        }
        
        if (textSeg.selectedSegmentIndex == 1) {
            label.textColor = UIColor.red
        }
        
        if (textSeg.selectedSegmentIndex == 2) {
            label.textColor = UIColor.purple
        }
        
        if (textSeg.selectedSegmentIndex == 3) {
            label.textColor = UIColor.blue
        }
    }
    
    @IBAction func backgroundColor(_ sender: Any) {
        
        if (backgroundSeg.selectedSegmentIndex == 0) {
            view.backgroundColor = UIColor.black
            label.backgroundColor = UIColor.black
        }
        
        if (backgroundSeg.selectedSegmentIndex == 1) {
            view.backgroundColor = UIColor.white
            label.backgroundColor = UIColor.white
        }
        
        if (backgroundSeg.selectedSegmentIndex == 2) {
            view.backgroundColor = UIColor.yellow
            label.backgroundColor = UIColor.yellow
        }
        
        if (backgroundSeg.selectedSegmentIndex == 3) {
            view.backgroundColor = UIColor.gray
            label.backgroundColor = UIColor.gray
        }
        
        
    }
    

}

