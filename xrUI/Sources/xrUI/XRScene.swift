//
//  ARContainerView.swift
//  xrUIDemo
//
//  Created by onee on 2023/4/27.
//

import SwiftUI

public protocol XREntity {
    
}

public protocol XRComponent {
    associatedtype Entity
    
    var thisEntity: Entity { get }
}

public protocol ModelComponent: XRComponent {
    func modelName() -> Entity
}

public extension ModelComponent {
    func modelName() -> Entity  {
        return thisEntity
    }
}

public struct Model: XREntity, ModelComponent {
    public var thisEntity: Model {
        return self
    }
    
    public typealias Entity = Model
}



@resultBuilder
public struct ARContentBuilder {
    static func buildBlock(_ parts: XREntity...) -> [XREntity] {
        parts
    }
}

public struct XRScene: View {
    let content: [XREntity]
    
    public init(@ARContentBuilder content: () -> [XREntity]) {
        self.content = content()
    }
    
    public var body: some View {
        VStack {
            
        }
        .padding()
        .background(Color.gray)
        .cornerRadius(10)
    }
}
