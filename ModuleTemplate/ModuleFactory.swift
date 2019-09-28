//
//  ModuleFactory.swift
//  ModuleTemplate
//
//  Created by Mikhail on 30/08/2019.
//  Copyright © 2019 glvrzzz. All rights reserved.
//

public typealias Module<View, Input> = (view: View, input: Input)

protocol ModuleFactory {
    associatedtype Module
    associatedtype Config
    
    static func createModule(with config: Config) -> Module
}

