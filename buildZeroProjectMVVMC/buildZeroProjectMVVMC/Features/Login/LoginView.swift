//
//  LoginView.swift
//  buildZeroProjectMVVMC
//
//  Created by ALYSSON MENEZES on 06/05/25.
//

import UIKit

public protocol LoginFlowDelegate: AnyObject {
    func navigateToHome()
    func tappedBackButton()
}


class LoginView: UIView {
    
    private weak var delegate: LoginFlowDelegate?
    
    public func delegate(delegate: LoginFlowDelegate?) {
        self.delegate = delegate
    }
   
    lazy var backGroundView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .yellow//UIColor(red: 26/255, green: 26/255, blue: 1/255, alpha: 1.0)
        return view
    }()
    
    lazy var backButton: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        // btn.setTitle("Calcular", for: .normal)
        btn.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        btn.setTitleColor(.white, for: .normal)
        btn.clipsToBounds = true
        btn.layer.cornerRadius =  8
        btn.backgroundColor = UIColor(red: 187/255, green: 187/255, blue: 187/255, alpha: 1.0)
        btn.setImage(UIImage(systemName: "arrowshape.turn.up.backward.fill"), for: .normal)
        btn.addTarget(self, action: #selector(tappedBackButton), for: .touchUpInside)
        return btn
    }()
    
    lazy var genericLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Login!"
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 40, weight: .bold)
        return label
    }()
    
    
    lazy var genericButton: UIButton = {
        let btn = UIButton( type: .system)
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.backgroundColor = .white
        btn.setTitle("GoToHome", for: .normal)
        btn.setBackgroundImage(UIImage( named: "gradient3"), for: .normal)
        btn.clipsToBounds = true
        btn.layer.cornerRadius =  8
        btn.contentMode = .scaleAspectFill
         btn.addTarget(self, action: #selector(tappedGotoHomeButton), for: .touchUpInside)
        return btn
    }()
    
    @objc
    private func tappedBackButton() {
        self.delegate?.tappedBackButton()
    }
    
    @objc
    private func tappedGotoHomeButton() {
        self.delegate?.navigateToHome()
    }
    

    private func setupUI() {
        addSubview(backGroundView)
        backGroundView.addSubview(genericLabel)
        backGroundView.addSubview(backButton)
        backGroundView.addSubview(genericButton)
        
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            backGroundView.topAnchor.constraint(equalTo: topAnchor),
            backGroundView.leadingAnchor.constraint(equalTo: leadingAnchor),
            backGroundView.trailingAnchor.constraint(equalTo: trailingAnchor),
            backGroundView.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            backButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 0),
            backButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 14),
            backButton.heightAnchor.constraint(equalToConstant: 65),
            backButton.widthAnchor.constraint(equalToConstant: 65),
            
            genericLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            genericLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
            
            genericButton.topAnchor.constraint(equalTo: genericLabel.bottomAnchor, constant: 16),
            genericButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 14),
            genericButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -14),
            genericButton.heightAnchor.constraint(equalToConstant: 50),
           
        ])
    }
}

