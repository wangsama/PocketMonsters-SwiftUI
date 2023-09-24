//
//  SettingRootView.swift
//  PokeMaster
//
//  Created by Jun Wang on 2023/9/22.
//

import SwiftUI

struct SettingRootView: View {
    var body: some View {
        NavigationView {
            SettingView().navigationTitle("设置")
        }
    }
}

#Preview {
    SettingRootView()
}
