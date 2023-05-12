//
//  CustomARViewRepresentable.swift
//  Plateau
//
//  Created by Remy Konings on 03/05/2023.
//

import SwiftUI

struct CustomARViewRepresentable: UIViewRepresentable {
    func makeUIView(context: Context) -> CustomARView {
        return CustomARView()
    }
    
    func updateUIView(_ uiView: CustomARView, context: Context) { }
}
