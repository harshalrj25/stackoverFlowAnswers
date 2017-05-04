//
//  ViewController.swift
//  dashedTextFieldDemo
//
//  Created by Harshal Jadhav on 04/05/17.
//  Copyright © 2017 Harshal Jadhav. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var demoTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        demoTextField.delegate = self
        demoTextField.borderStyle = .none
        let shapeLayer = CAShapeLayer()
        shapeLayer.bounds = demoTextField.bounds
        shapeLayer.position = demoTextField.center
        shapeLayer.fillColor = UIColor.clear.cgColor
        shapeLayer.strokeColor = UIColor.black.cgColor
        shapeLayer.lineWidth = 2.0
        shapeLayer.lineJoin = kCALineJoinRound
        shapeLayer.lineDashPattern = [20, 10]
        let path: CGMutablePath = CGMutablePath()
        path.move(to: CGPoint(x: demoTextField.bounds.origin.x, y: demoTextField.bounds.origin.y + demoTextField.bounds.size.height), transform: .identity)
        path.addLine(to: CGPoint(x: demoTextField.bounds.origin.x + demoTextField.bounds.size.width, y: demoTextField.bounds.origin.y + demoTextField.bounds.size.height), transform: .identity)
        shapeLayer.path = path
        self.view.layer.addSublayer(shapeLayer)
        demoTextField.layer.masksToBounds = true
        demoTextField.addTarget(self, action: #selector(ViewController.textFieldDidChange), for: .editingChanged)
    }
    
    
    func textFieldDidChange () {
        if (demoTextField.text?.characters.count)! > 1 {
            let attributedString = NSMutableAttributedString(string: demoTextField.text!)
            attributedString.addAttribute(NSFontAttributeName, value: demoTextField.font!, range: NSMakeRange(0, (demoTextField.text?.characters.count)!))
            attributedString.addAttribute(NSForegroundColorAttributeName, value: UIColor.black, range: NSMakeRange(0,(demoTextField.text?.characters.count)!))
            attributedString.addAttribute(NSKernAttributeName, value: 20, range: NSMakeRange(0, ((demoTextField.text?.characters.count)! - 1)))
            demoTextField.attributedText = attributedString
        }
    }
    
    
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {

        if (demoTextField.text?.characters.count)! < 6 {
            return true
        }else if string.characters.count == 0 {
            return true
        }else{
            return false
        }
    }


}

