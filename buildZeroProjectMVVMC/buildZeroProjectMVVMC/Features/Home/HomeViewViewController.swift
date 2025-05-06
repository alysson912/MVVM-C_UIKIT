//
//  HomeViewViewController.swift
//  buildZeroProjectMVVMC
//
//  Created by ALYSSON MENEZES on 06/05/25.
//

import UIKit

class HomeViewViewController: UIViewController {
    
    private var contentView: HomeView?
    
    override func loadView() {
        contentView = HomeView()
        view = contentView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    


}
