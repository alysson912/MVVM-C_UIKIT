//
//  LoginViewViewController.swift
//  buildZeroProjectMVVMC
//
//  Created by ALYSSON MENEZES on 06/05/25.
//

import UIKit

class LoginViewController: UIViewController {
    
    private var contentView: LoginView
    private weak var flowDelegate: LoginFlowDelegate?
    
    init(contentView: LoginView, flowDelegate: LoginFlowDelegate) {
        self.contentView = contentView
        self.flowDelegate = flowDelegate
        super.init(nibName: nil, bundle: nil)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    private func setup() {
        view.addSubview(contentView)
        navigationController?.isNavigationBarHidden = true
        view.backgroundColor = .green// colorindo a safe area?  ué?
        setupConstraints()
        
    }
    
    private func setupConstraints() {
        contentView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            contentView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            contentView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            contentView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
        ])
    }

}



