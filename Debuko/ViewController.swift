//
//  ViewController.swift
//  Debuko
//
//  Created by KINARI NISHIYAMA on 2015/02/26.
//  Copyright (c) 2015年 KINARI NISHIYAMA. All rights reserved.
//

//
import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var highTextField: UITextField!
    @IBOutlet weak var weightTextField: UITextField!
    @IBOutlet weak var aimTextField: UITextField!
    
       override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib. 
        var defaults = NSUserDefaults.standardUserDefaults()
        defaults.setObject("名前", forKey: "nameString")
        defaults.setDouble(150.0, forKey: "highDouble")
        defaults.setDouble(50.0, forKey: "weightDouble")
        defaults.setDouble(40.0, forKey: "aimDouble")
        defaults.synchronize()
    }
    
    
    @IBAction func tapName(sender: UITextField) {
        var defaults = NSUserDefaults.standardUserDefaults()
        defaults.setObject(nameTextField, forKey: "nameString")
        defaults.synchronize()
    }
    
    @IBAction func tapHigh(sender: UITextField) {
        var defaults = NSUserDefaults.standardUserDefaults()
        defaults.setObject(highTextField, forKey: "highDouble")
        defaults.synchronize()
       
    }
    
    @IBAction func tapWeight(sender: UITextField) {
        var defaults = NSUserDefaults.standardUserDefaults()
        defaults.setObject(weightTextField, forKey: "weightDouble")
        defaults.synchronize()
    }
    
    @IBAction func tapAim(sender: UITextField) {
        var defaults = NSUserDefaults.standardUserDefaults()
        defaults.setObject(aimTextField, forKey: "aimDouble")
        defaults.synchronize()
              }
    
    @IBAction func tapKanryobt(sender: UIButton) {
        self.performSegueWithIdentifier("GoNextPage", sender: nil)
    }
    
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if(segue.identifier=="GoNextPage"){
            var personal = segue.destinationViewController as selectViewController
            personal.param = nameTextField.text
        }
    }
    

    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

