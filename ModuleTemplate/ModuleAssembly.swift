//
//  ModuleAssembly.swift
//  ModuleTemplate
//
//  Created by Mikhail on 29/08/2019.
//  Copyright © 2019 glvrzzz. All rights reserved.
//

import Swinject

public typealias Resolver = Swinject.Resolver
public typealias Module<View, Input> = (view: View, input: Input)

protocol ModuleFactory {
    associatedtype Module
    associatedtype Config
    
    init()
    func createModule(resolver: Resolver, config: Config) -> Module
}

class ModuleAssembly<Factory, Module, Config>: Swinject.Assembly where Factory: ModuleFactory, Factory.Module == Module, Factory.Config == Config {
    
    func assemble(container: Container) {
        container.register(Module.self) { (resolver, config: Config) -> Module in
            let factory = Factory()
            return factory.createModule(resolver: resolver, config: config)
        }
    }
    
}
