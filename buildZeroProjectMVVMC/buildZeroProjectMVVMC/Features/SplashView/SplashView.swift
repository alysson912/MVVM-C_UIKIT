//
//  SplashView.swift
//  buildZeroProjectMVVMC
//
//  Created by ALYSSON MENEZES on 06/05/25.
//

import UIKit

public protocol SplashFlowDelegate: AnyObject {
    func openLoginBottomSheet()
    func navigateToHome()
}


class SplashView: UIView {
    
    private weak var delegate: SplashFlowDelegate?
    
    func delegate(delegate: SplashFlowDelegate?) {
        self.delegate = delegate
    }
        
        lazy var backGroundView: UIView = {
            let view = UIView()
            view.translatesAutoresizingMaskIntoConstraints = false
            view.backgroundColor = .red//UIColor(red: 26/255, green: 26/255, blue: 1/255, alpha: 1.0)
            return view
        }()
        
        
        lazy var genericLabel: UILabel = {
            let label = UILabel()
            label.translatesAutoresizingMaskIntoConstraints = false
            label.text = "SplashView, click aqui para ir para o login !"
            label.textColor = .white
            label.font = UIFont.systemFont(ofSize: 16, weight: .bold)
            return label
        }()
 
        
        private func setupUI() {
            addSubview(backGroundView)
            backGroundView.addSubview(genericLabel)
          
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
                
                genericLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
                genericLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
                
               
            ])
        }
    }

