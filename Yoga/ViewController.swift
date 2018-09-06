//
//  ViewController.swift
//  Yoga
//
//  Created by yashn on 30/08/18.
//  Copyright © 2018 yashn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var a: Int = 0
    
    var motion: Int = 0
    
    
    

    @IBOutlet weak var Image01: UIImageView!
    
    let yogaArray = ["1", "2", "3", "3", "4" ,"5","6","7","8","9"]
    
  //  var randamYogaIndex1 : Int = 0
   
    override func viewDidLoad() {
        
        super.viewDidLoad()
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        if motion == .motionShake
        {
            updateimg()
        }
        
    }
    
    
   
    
   func updateimg()
   {
    a = a + 1
    Image01.image = UIImage(named: yogaArray[a])
    print(a)
    if a == 9
    {
        a = 0
    }
    }
    
    

    @IBAction func nextbtn(_ sender: Any) {
        
        
        
      
            a = a + 1
            Image01.image = UIImage(named: yogaArray[a])
            print(a)
            if a == 9
            {
                a = 0
            }
        
            
        

    }
    
    
    
    @IBAction func prev(_ sender: Any) {
        
        if a == 0
        {
            a = 9
        }
        
        Image01.image = UIImage(named: yogaArray[a])
        print(a)
        a = a - 1
        
    }
    
    
    

}
