//
//  customTextField.swift
//  stackoverflow
//
//  Created by Harshal Jadhav on 04/05/17.
//  Copyright © 2017 Harshal Jadhav. All rights reserved.
//

import UIKit
@IBDesignable
class customTextField: UITextField {

        
        @IBInspectable var horizontalInset: CGFloat = 0
        @IBInspectable var verticalInset: CGFloat = 0
        
        override func textRect(forBounds bounds: CGRect) -> CGRect {
            return bounds.insetBy(dx: horizontalInset, dy: verticalInset)
        }
        
        override func editingRect(forBounds bounds: CGRect) -> CGRect {
            return bounds.insetBy(dx: horizontalInset , dy: verticalInset)
        }
        
        override func placeholderRect(forBounds bounds: CGRect) -> CGRect {
            return bounds.insetBy(dx: horizontalInset, dy: verticalInset)
        }
    

}
