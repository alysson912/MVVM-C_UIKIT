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
    
    // esse init seria a controller que fica em baixo ?
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
       setupGesture()
        setup()
    }
    
    private func setup() {
        navigationController?.isNavigationBarHidden = true
        view.addSubview(contentView)
        view.backgroundColor = .blue// colorindo a controller ué?
        setupConstraints()
        setupGesture()
    }
    
    private func setupGesture() {
        view.addSubview(contentView) // pq isso se repete?
        navigationController?.isNavigationBarHidden = true
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(showLoginBottomSheet))
        self.view.addGestureRecognizer(tapGesture)
    }
    
    @objc
    private func showLoginBottomSheet() {
        flowDelegate?.openLoginBottomSheet()
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


    
  
    
   

