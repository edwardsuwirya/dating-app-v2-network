//
//  File.swift
//  
//
//  Created by Edward Suwirya on 1/15/22.
//

import Foundation
import Moya
import Swinject


public class NetworkAssembly: Assembly{
    public func assemble(container: Container) {
        container.register(MoyaProvider<DatingAppApi>.self){ _ in
            MoyaProvider<DatingAppApi>()
        }
    }
}
