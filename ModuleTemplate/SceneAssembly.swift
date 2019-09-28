//
//  DIAssembly.swift
//  ModuleTemplate
//
//  Created by Mikhail on 29/08/2019.
//  Copyright © 2019 glvrzzz. All rights reserved.
//

import Swinject

public typealias Resolver = Swinject.Resolver
public typealias Scene<View, Input> = (view: View, input: Input)

protocol SceneFactory {
    associatedtype Scene
    associatedtype Config
    
    init()
    func createScene(resolver: Resolver, config: Config) -> Scene
}

class SceneAssembly<Factory, Scene, Config>: Swinject.Assembly where Factory: SceneFactory, Factory.Scene == Scene, Factory.Config == Config {
    
    func assemble(container: Container) {
        container.register(Scene.self) { (resolver, config: Config) -> Scene in
            let factory = Factory()
            return factory.createScene(resolver: resolver, config: config)
        }
    }
    
}
