//
//  BlurView.swift
//  PokeMaster
//
//  Created by Jun Wang on 2023/9/16.
//

import SwiftUI
import UIKit

/// 封装 UIKit 控件给 SwiftUI 调用
struct BlurView: UIViewRepresentable {
    
    let style: UIBlurEffect.Style
    
    init(style: UIBlurEffect.Style) {
        print("init")
        self.style = style
    }
    
    func makeUIView(context: Context) -> UIView {
        print("makeUIView")
        let view = UIView()
        view.backgroundColor = .clear
        let blurEffect = UIBlurEffect(style: style)
        let blurView = UIVisualEffectView(effect: blurEffect)
        blurView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(blurView)
        NSLayoutConstraint.activate([
            blurView.heightAnchor.constraint(equalTo: view.heightAnchor),
            blurView.widthAnchor.constraint(equalTo: view.widthAnchor)
        ])
        return view
    }
    
    func updateUIView(_ uiView: UIView, context: Context) {
        if let blurView = uiView.subviews.first as? UIVisualEffectView {
            blurView.effect = UIBlurEffect(style: style)
        }
        print("update")
        
    }
}


extension View {
    func blurBackground(style: UIBlurEffect.Style) -> some View {
        ZStack {
            BlurView(style: style)
            self
        }
    }
}
