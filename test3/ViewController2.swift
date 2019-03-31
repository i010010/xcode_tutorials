//
//  ViewController2.swift
//  test3
//
//  Created by apple on 2019/03/31.
//  Copyright © 2019年 apple. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {

    @IBOutlet weak var label: UILabel!
    var textVC2:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        label.text = textVC2
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
