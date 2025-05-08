//
//  SplashViewController.swift
//  buildZeroProjectMVVMC
//
//  Created by ALYSSON MENEZES on 06/05/25.
//

import UIKit

class SplashViewController: UIViewController {
    
    
    private var contentView: SplashView
    private weak var flowDelegate: SplashFlowDelegate?
    
    // inicia a tela com os delegates injetados (flowDelegate)? ou Seria a criacao da ControllerFactory ?
    init(contentView: SplashView, flowDelegate: SplashFlowDelegate){
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
        navigationController?.isNavigationBarHidden = true // mesmo dando hidden ainda dica espaco
        view.addSubview(contentView) // pq precisamos adicionar uma nova screen e setar constrains? n era a view q deveria fazer isso?
        setupConstraints()
        setupGesture()
    }
    
    private func setupGesture() {
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(showLoginBottomSheet))
        self.view.addGestureRecognizer(tapGesture)
    }
    
    @objc
    private func showLoginBottomSheet() {
        flowDelegate?.openLoginBottomSheet()
    }
    
    private func setupConstraints() { // pq constraints na controller ? ué 2x?
        contentView.translatesAutoresizingMaskIntoConstraints = false // da muito ruim se nao garantir q desativamos as contraints de la pra ca
        
        NSLayoutConstraint.activate([
            contentView.topAnchor.constraint(equalTo: view.topAnchor),
            contentView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            contentView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
        ])
    }
}







