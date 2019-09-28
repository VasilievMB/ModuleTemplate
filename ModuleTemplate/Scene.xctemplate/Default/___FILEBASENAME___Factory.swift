//___FILEHEADER___

import UIKit

typealias ___VARIABLE_productName___Factory = ___VARIABLE_productName___ViewController
public typealias ___VARIABLE_productName___Scene = Scene<UIViewController, ___VARIABLE_productName___SceneInput>

extension ___VARIABLE_productName___Factory: SceneFactory {
    
    typealias Scene = ___VARIABLE_productName___Scene
    typealias Config = ___VARIABLE_productName___SceneConfig
    
    static func createScene(with config: ___VARIABLE_productName___SceneConfig) -> ___VARIABLE_productName___Scene {
        //            let storyboard = UIStoryboard(name: <#T##String#>, bundle: <#T##Bundle?#>)
        //            let viewController = storyboard.instantiateInitialViewController() as! ___VARIABLE_productName___ViewController
        //            let viewController = storyboard.instantiateViewController(withIdentifier: <#T##String#>) as! ___VARIABLE_productName___ViewController
        //            let viewController = ___VARIABLE_productName___ViewController(nibName: "___VARIABLE_productName___ViewController", bundle: Bundle.main)
        
        let router = ___VARIABLE_productName___Router(view: viewController)
        let interactor = ___VARIABLE_productName___Interactor()
        let presenter = ___VARIABLE_productName___Presenter(view: viewController, interactor: interactor, router: router)
        
        viewController.output = presenter
        interactor.output = presenter
        
        return (viewController, presenter)
    }
    
}

