//
//  SceneFactory.swift
//  ModuleTemplate
//
//  Created by Mikhail on 30/08/2019.
//  Copyright © 2019 glvrzzz. All rights reserved.
//

public typealias Scene<View, Input> = (view: View, input: Input)

protocol SceneFactory {
    associatedtype Scene
    associatedtype Config
    
    static func createScene(with config: Config) -> Scene
}

