//
//  ARContainerView.swift
//  xrUIDemo
//
//  Created by onee on 2023/4/27.
//

import SwiftUI

protocol XREntity {
    
}

protocol XRComponent {
    associatedtype Entity
    
    var thisEntity: Entity { get }
}

protocol ModelComponent: XRComponent {
    func modelName() -> Entity
}

extension ModelComponent {
    func modelName() -> Entity  {
        return thisEntity
    }
}

struct Model: XREntity, ModelComponent {
    var thisEntity: Model {
        return self
    }
    
    typealias Entity = Model
}



@resultBuilder
struct ARContentBuilder {
    static func buildBlock(_ parts: XREntity...) -> [XREntity] {
        parts
    }
}

struct XRScene: View {
    let content: [XREntity]
    
    init(@ARContentBuilder content: () -> [XREntity]) {
        self.content = content()
    }
    
    var body: some View {
        VStack {
            
        }
        .padding()
        .background(Color.gray)
        .cornerRadius(10)
    }
}

struct ARContainerView_Previews: PreviewProvider {
    static var previews: some View {
        XRScene {
            Model()
        }
    }
}
