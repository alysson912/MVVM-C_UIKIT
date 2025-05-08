//
//  HomeViewViewController.swift
//  buildZeroProjectMVVMC
//
//  Created by ALYSSON MENEZES on 06/05/25.
//

import UIKit

class HomeViewViewController: UIViewController {
    
    private var contentView: HomeView
    private weak var flowDelegate: LoginFlowDelegate?
    
    init(contentView: HomeView, flowDelegate: LoginFlowDelegate) {
        self.contentView = contentView
        self.flowDelegate = flowDelegate
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    


}
