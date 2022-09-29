//
//  PositionViewController.swift
//  AirbusA350MFD_ALPHA
//
//  Created by M. Can Devecioğlu on 29.09.2022.
//

import UIKit

class PositionViewController: UIView {
    
    // MARK: Properties
    
    let testLabel : UILabel = {
        let label = UILabel()
        label.text = "This is Position page"
        label.textColor = .airbusGreen
        label.font = UIFont.systemFont(ofSize: 20)
        return label
    }()
    
    
    // MARK: - Lifecycle

    override init(frame: CGRect) {
           super.init(frame: frame)
        translatesAutoresizingMaskIntoConstraints = false
        
        configureUI()
        
       }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configureUI () {
        
        addSubview(testLabel)
        testLabel.anchor(left: leftAnchor, bottom: bottomAnchor, paddingLeft: 200)
        print("DEBUG: TEST ?")
        
    }
    

    
    
    
    
}
