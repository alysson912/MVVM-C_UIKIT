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

//MARK: - Login Section
extension CordinatorFlowController: LoginFlowDelegate {
    func tappedBackButton() {
        navigationController?.popViewController(animated: true)
    }
    
    func navigateToHome() {
        let home = viewControllerFactory.makeHomeViewController(flowDelegate: self)
        self.navigationController?.pushViewController(home, animated: true)
      
        
    }
    
    
}

//MARK: - Navigation To Splash
extension CordinatorFlowController: SplashFlowDelegate {
    func openLoginBottomSheet() {
        let loginBottomSheet = viewControllerFactory.makeLoginViewController(flowDelegate: self)
        self.navigationController?.pushViewController(loginBottomSheet, animated: true)
            
        }
    
    }
    
    
//MARK: Home Section
extension CordinatorFlowController: HomeFlowDelegate {
    func tappedHomeBackButton() {
        navigationController?.popViewController(animated: true)
    }
}
    
    
   
    

