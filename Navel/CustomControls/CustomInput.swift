//
//  CustomInput.swift
//  Navel
//
//  Created by Bansi Mamtora on 28/04/22.
//

import Foundation
import UIKit

@IBDesignable
class CustomInput: UITextField {
    
    @IBInspectable var leftPadding: CGFloat = 10
    
    override func leftViewRect(forBounds bounds: CGRect) -> CGRect {
        var textRect = super.leftViewRect(forBounds: bounds)
        textRect.origin.x += leftPadding
        return textRect
    }
    
    @IBInspectable var leftImage: UIImage? {
        didSet {
            updateView()
        }
    }
    
    func updateView() {
            if let image = leftImage {
                leftViewMode = UITextField.ViewMode.always
                let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
                imageView.contentMode = .scaleAspectFit
                imageView.image = image
                leftView = imageView
            } else {
                leftViewMode = UITextField.ViewMode.never
                leftView = nil
            }
            
        }
}
