//
//  CordinatorFlowController.swift
//  buildZeroProjectMVVMC
//
//  Created by ALYSSON MENEZES on 06/05/25.
//

import Foundation
import UIKit

class CordinatorFlowController {
    
    //MARK: Properties
    
    public var navigationController: UINavigationController?
    public var viewControllerFactory: ViewControllersFactoryProtocol
    
    public init() {
        self.viewControllerFactory = ViewControllersFactory()
    }
    
    //MARK: - Start Flow - O app Inicia nessa tela
    func start() -> UINavigationController? {
        let startViewController = viewControllerFactory.makeSplashViewController(flowDelegate: self)
        self.navigationController = UINavigationController(rootViewController: startViewController)
        return navigationController
    }
    
 
}

//MARK: - Navigation To Login
extension CordinatorFlowController: LoginFlowDelegate {
    func navigateToHome() {
        let vc = UIViewController()
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
    
}
//MARK: - Navigation To Splash
extension CordinatorFlowController: SplashFlowDelegate {
    
    
    
   
    
}
