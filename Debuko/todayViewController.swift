//
//  todayViewController.swift
//  Debuko
//
//  Created by KINARI NISHIYAMA on 2015/02/28.
//  Copyright (c) 2015年 KINARI NISHIYAMA. All rights reserved.
//

import UIKit

class todayViewController: UIViewController {
    
    @IBOutlet var todayTextField : UITextField!
    var todayWeight = 35.0

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        var todayDefault = NSUserDefaults.standardUserDefaults()
        todayDefault.setDouble(todayWeight, forKey: "todayDouble")
        todayDefault.synchronize()
    }

    @IBAction func tapGobt(sender: UITextField){
        var todayDefault = NSUserDefaults.standardUserDefaults()
        var todayWeight2: AnyObject = todayDefault.objectForKey("todayDouble")!
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
