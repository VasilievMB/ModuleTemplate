//
//  ModuleFactory.swift
//  ModuleTemplate
//
//  Created by Mikhail on 06/02/2019.
//  Copyright © 2019 glvrzzz. All rights reserved.
//

import UIKit

public typealias ___VARIABLE_productName___Scene = Scene<UIViewController, ___VARIABLE_productName___SceneInput>
typealias ___VARIABLE_productName___Assembly = SceneAssembly<___VARIABLE_productName___Factory, ___VARIABLE_productName___Scene, ___VARIABLE_productName___SceneConfig>

final class ___VARIABLE_productName___Factory: SceneFactory {
    
    typealias Scene = ___VARIABLE_productName___Scene
    typealias Config = ___VARIABLE_productName___SceneConfig
    
    func createScene(resolver: Resolver, config: ___VARIABLE_productName___SceneConfig) -> ___VARIABLE_productName___Scene {
//        let storyboard = UIStoryboard(name: <#T##String#>, bundle: <#T##Bundle?#>)
//        let viewController = storyboard.instantiateInitialViewController() as! ___VARIABLE_productName___ViewController
//        let viewController = storyboard.instantiateViewController(withIdentifier: <#T##String#>) as! ___VARIABLE_productName___ViewController
//        let viewController = ___VARIABLE_productName___ViewController(nibName: "___VARIABLE_productName___ViewController", bundle: Bundle.main)
        let router = ___VARIABLE_productName___Router(view: viewController, resolver: resolver)
        let interactor = ___VARIABLE_productName___Interactor()
        let presenter = ___VARIABLE_productName___Presenter(view: viewController, interactor: interactor, router: router)
        
        viewController.output = presenter
        interactor.output = presenter
        
        return (viewController, presenter)
    }
    
}
