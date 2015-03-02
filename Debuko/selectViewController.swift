//
//  selectViewController.swift
//  Debuko
//
//  Created by KINARI NISHIYAMA on 2015/02/28.
//  Copyright (c) 2015年 KINARI NISHIYAMA. All rights reserved.
//

import UIKit

class selectViewController: UIViewController {

    @IBOutlet weak var NameTextField: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    // Do any additional setup after loading the view.
        var defaults = NSUserDefaults.standardUserDefaults()
        var name2:String = defaults.stringForKey("nameString")!
        NameTextField.text="\(name2)"
        println("\(name2)")
        defaults.synchronize()
        }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
