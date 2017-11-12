//
//  ViewController.swift
//  ShoppingCalculator
//
//  Created by Rk on 12/11/17.
//  Copyright © 2017 Rk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var itemText: PlaceholderProp!
    @IBOutlet weak var budgText: PlaceholderProp!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let calcButton = UIButton(frame: CGRect(x:0 , y:0 , width:view.frame.size.width, height:60))
        //created a UIButton of name calcButton
        calcButton.backgroundColor = #colorLiteral(red: 1, green: 0.3717185385, blue: 0.2113544487, alpha: 0.6638974472)
        calcButton.setTitle("Calculate", for: .normal)
        calcButton.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcButton.addTarget(self, action: #selector(ViewController.calCulte), for: .touchUpInside)
        
        
        //add these button to our two @IBOutlets
        itemText.inputAccessoryView = calcButton
        budgText.inputAccessoryView = calcButton
        
    }
    
    
    //Argument of '#selector' refers to instance method 'calCulte()' that is not exposed to Objective-C
    //Add '@objc' to expose this instance method to Objective
    @objc func calCulte(){
        print("click me...")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

