//
//  ContentView.swift
//  Moonshot
//
//  Created by Roman Zherebko on 03.06.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var showingGrid = true
    
    let missions: [Mission] = Bundle.main.decode("missions.json")
    let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    
    var body: some View {
        NavigationView {
            ScrollView {
                if showingGrid {
                    GridLayout(missions: missions, astronauts: astronauts)
                } else {
                    ListLayout(missions: missions, astronauts: astronauts)
                }
            }
            .navigationTitle("Moonshot")
            .background(.darkBackground)
            .preferredColorScheme(.dark)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                                Button {
                                    showingGrid.toggle()
                                } label: {
                                    Image(systemName: showingGrid ? "list.bullet" : "square.grid.2x2")
                                        .foregroundColor(.primary)
                                }
                            }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
