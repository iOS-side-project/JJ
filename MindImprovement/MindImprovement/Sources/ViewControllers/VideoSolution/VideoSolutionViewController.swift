//
//  VideoSolutionViewController.swift
//  MindImprovement
//
//  Created by IJ . on 2020/05/02.
//  Copyright © 2020 최은지. All rights reserved.
//

import UIKit
import WebKit

class VideoSolutionViewController: UIViewController {

    @IBOutlet weak var videoWebKitView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let url = URL(string: "https://youtu.be/90lREWfo8Yk") else { return  }
        let request = URLRequest(url: url)
        
        videoWebKitView.load(request)
       
    }
    

    
}
