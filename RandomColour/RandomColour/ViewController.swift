//
//  ViewController.swift
//  RandomColour
//
//  Created by dinesh danda on 1/7/17.
//  Copyright © 2017 dinesh danda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var colors = ["red","green","blue","black"]
    var targetcolor = ""
    

    @IBOutlet weak var infotext: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func generateRandomColor(_ sender: Any) {
        if colors[(sender as AnyObject).tag] == targetcolor{
            infotext.text = "You have touched the Correct Color"
        }else{
            infotext.text = "Please select the \(targetcolor)"
            
        }
    }
    
    @IBAction func generatebtn(_ sender: Any) {
        
        let index = Int(arc4random_uniform(UInt32(colors.count)))
        targetcolor = colors[index]
       infotext.text = "touch the \(targetcolor)"
        
        
        
        
        
        
        
    }

}

