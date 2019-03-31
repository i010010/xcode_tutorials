//
//  ViewController.swift
//  test3
//
//  Created by apple on 2019/03/31.
//  Copyright © 2019年 apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func buttonTapped(_ sender: Any) {
        
        performSegue(withIdentifier: "toViewController2",sender: nil)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "toViewController2") {
            let vc2: ViewController2 = (segue.destination as? ViewController2)!
            // ViewControllerのtextVC2にメッセージを設定
            vc2.textVC2 = "to VC2"
        }
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

