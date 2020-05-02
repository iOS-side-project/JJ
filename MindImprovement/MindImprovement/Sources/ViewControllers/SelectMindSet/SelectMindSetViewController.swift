//
//  SelectMindSetViewController.swift
//  MindImprovement
//
//  Created by IJ . on 2020/05/02.
//  Copyright © 2020 최은지. All rights reserved.
//

import UIKit

class SelectMindSetViewController: UIViewController {
    
    @IBOutlet weak var challengeOneButton: UIButton! // 긍정 마인드 챌린지 버튼
    @IBOutlet weak var challengeTwoButton: UIButton! // 자존감 챌린지 버튼
    @IBOutlet weak var challengeThreeButton: UIButton! // 차분 마인드 챌린지 버튼
    
    @IBOutlet weak var nextButton: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.challengeOneButton.titleLabel?.lineBreakMode = NSLineBreakMode.byWordWrapping;
        let challengeOneText: NSString = "긍정적인 사람이 될거야!\n긍정 마인드 챌린지"
        
        let newlineRange: NSRange = challengeOneText.range(of: "\n")
        
        var substring1 = ""
        var substring2 = ""
        
        if(newlineRange.location != NSNotFound){
            substring1 = challengeOneText.substring(to: newlineRange.location)
            substring2 = challengeOneText.substring(from: newlineRange.location)
        }
        
        let font1: UIFont = UIFont(name: "Arial", size: 16.0)!
        let attributes1 = [NSMutableAttributedString.Key.font: font1]
        let attrString1 = NSMutableAttributedString(string: substring1, attributes: attributes1)
        
        let font2: UIFont = UIFont(name: "Arial", size: 18.0)!
        let attributes2 = [NSMutableAttributedString.Key.font: font2]
        let attrString2 = NSMutableAttributedString(string: substring2, attributes: attributes2)
        
        attrString1.append(attrString2)
        
        let style = NSMutableParagraphStyle()
        style.lineSpacing = 10.0
        
        attrString1.addAttributes([.paragraphStyle: style], range: NSMakeRange(0, attrString1.length))
        
        
        challengeOneButton.setAttributedTitle(attrString1, for: .normal)
        challengeOneButton.titleLabel?.textAlignment = .center

        
    }
    

    

}
