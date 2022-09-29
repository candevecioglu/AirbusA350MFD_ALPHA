//
//  Utilities.swift
//  AirbusA350MFD_ALPHA
//
//  Created by M. Can Devecioğlu on 29.09.2022.
//

import UIKit

class Utilities {
    
    func topMFDButton(withTitle buttonTitle: String) -> UIButton {
        
        let button = UIButton(type: .system)
        
        button.setTitle(buttonTitle, for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .airbusGray
        button.heightAnchor.constraint(equalToConstant: 50).isActive = true
        button.layer.cornerRadius = 5
        button.titleLabel?.font = UIFont(name: "Courier New", size: 18)
        button.layer.borderWidth = 2
        button.layer.borderColor = CGColor(red: 10, green: 10, blue: 10, alpha: 1)
        button.setDimensions(width: 130, height: 40)
        
        return button

    }
    
    
}
