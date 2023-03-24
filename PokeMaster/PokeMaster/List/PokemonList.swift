//
//  PokemonList.swift
//  PokeMaster
//
//  Created by madao on 2023/3/8.
//

import SwiftUI

struct PokemonList: View {
    
    @State var expandingIndex: Int?
    @State var searchText: String = ""
    
    var body: some View {
        ScrollView {
            LazyVStack {
                TextField("搜索", text: $searchText)
                    .frame(height: 40)
                    .padding(.horizontal, 25)
                ForEach(PokemonViewModel.all) { pokemon in
                    PokemonInfoRow(model: pokemon, expanded: self.expandingIndex == pokemon.id)
                }
            }
        }
    }
}

struct PokemonList_Previews: PreviewProvider {
    static var previews: some View {
        PokemonList()
    }
}
