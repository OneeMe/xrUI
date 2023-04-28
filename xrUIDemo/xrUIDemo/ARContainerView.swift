//
//  ARContainerView.swift
//  xrUIDemo
//
//  Created by onee on 2023/4/27.
//

import SwiftUI

protocol ARContent {
    var name: String { get };
}

struct Model: ARContent {
    var name: String
    
    init() {
        self.name = "model"
    }
}

@resultBuilder
struct ARContentBuilder {
    static func buildBlock(_ parts: ARContent...) -> [ARContent] {
        parts
    }
}

struct ARContainerView: View {
    let content: [ARContent]
    
    init(@ARContentBuilder content: () -> [ARContent]) {
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
        ARContainerView {
            Model()
        }
    }
}
