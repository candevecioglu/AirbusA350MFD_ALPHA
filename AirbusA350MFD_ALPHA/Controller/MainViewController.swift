//
//  ViewController.swift
//  AirbusA350MFD_ALPHA
//
//  Created by M. Can Devecioğlu on 29.09.2022.
//

import UIKit

class MainViewController: UIViewController {
    
    // MARK: - Properties
    
    private lazy var actionView = ActiveViewController()
    private lazy var positionView = PositionViewController()
    private lazy var secIndexView = SecIndexViewController()
    private lazy var dataView = DataViewController()
    
    private let testLabel : UILabel = {
       let label = UILabel()
        label.text = "ACTIVE / INIT"
        label.textColor = .airbusGreen
        label.font = UIFont(name: "Courier New", size: 20)
        return label
    }()
    
    private let testButton1 : UIButton = {
        let button = Utilities().topMFDButton(withTitle: activeButtonTitle)
        button.addTarget(self, action: #selector(activeButtonTapped), for: .touchUpInside)
        return button
    }()
    
    private let testButton2 : UIButton = {
        let button = Utilities().topMFDButton(withTitle: positionButtonTitle)
        button.addTarget(self, action: #selector(positionButtonTapped), for: .touchUpInside)
        return button
    }()
    
    private let testButton3 : UIButton = {
        let button = Utilities().topMFDButton(withTitle: secIndexButtonTitle)
        button.addTarget(self, action: #selector(secIndexButtonTapped), for: .touchUpInside)
        return button
    }()
    
    private let testButton4 : UIButton = {
        let button = Utilities().topMFDButton(withTitle: dataButtonTitle)
        button.addTarget(self, action: #selector(dataButtonTapped), for: .touchUpInside)
        return button
    }()
    
    // MARK: - Lifecycle


    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
        actionView.isHidden = true
        positionView.isHidden = true
        secIndexView.isHidden = true
        dataView.isHidden = true

    }
    
    // MARK: - Helpers
    
    func configureUI () {
        
        let topMFDMenuStack = UIStackView(arrangedSubviews: [testButton1, testButton2, testButton3, testButton4])
        topMFDMenuStack.axis = .horizontal
        topMFDMenuStack.spacing = 2
        topMFDMenuStack.distribution = .fillProportionally
        
        let menuAndViewStack = UIStackView(arrangedSubviews: [topMFDMenuStack, actionView, positionView, secIndexView, dataView])
        menuAndViewStack.axis = .vertical
        menuAndViewStack.spacing = 40
        menuAndViewStack.distribution = .fill

        
        view.addSubview(menuAndViewStack)
        menuAndViewStack.anchor(top: view.topAnchor, left: view.leftAnchor, paddingTop: 20)
        
//        view.addSubview(actionView)
//        actionView.anchor(top: menuAndViewStack.bottomAnchor, left: view.leftAnchor, right: view.rightAnchor, width: 200, height: 250)

    }
    
    // MARK: - Selectors
    
    @objc func activeButtonTapped () {
        print("DEBUG: Active Button Tapped")
        actionView.isHidden.toggle()
        
    }
    
    
    @objc func positionButtonTapped () {
        print("DEBUG: Position Button Tapped")
        positionView.isHidden.toggle()
    }
    
    @objc func secIndexButtonTapped () {
        print("DEBUG: Sec Index Button Tapped")
        secIndexView.isHidden.toggle()
    }
    
    @objc func dataButtonTapped () {
        print("DEBUG: Data Button Tapped")
        dataView.isHidden.toggle()
    }
    

}

