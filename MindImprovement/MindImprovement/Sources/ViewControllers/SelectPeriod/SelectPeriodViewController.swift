//
//  SelectPeriodViewController.swift
//  MindImprovement
//
//  Created by IJ . on 2020/05/02.
//  Copyright © 2020 최은지. All rights reserved.
//

import UIKit

class SelectPeriodViewController: UIViewController {

    @IBOutlet weak var days7View: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        days7View.layer.cornerRadius = 15
        days7View.layer.borderWidth = 1.0
        days7View.layer.borderColor = UIColor.black.cgColor
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(handleTap(sender:)))
        
        days7View.addGestureRecognizer(tapGesture)
    }
    
    @objc func handleTap(sender: UITapGestureRecognizer){
        
        print("tap");
        
    }
    


   

}
