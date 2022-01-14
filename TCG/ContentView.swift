//
//  ContentView.swift
//  TCG
//
//  Created by Alexander Chiou on 1/10/22.
//

import SwiftUI

struct ContentView: View {

    @State private var action: Int? = 0
    
    var body: some View {
        NavigationView {
            ZStack {
                NavigationLink(destination: SettingsView(),
                               tag: 1,
                               selection: $action) {
                    EmptyView()
                }
                VStack {
                    HomepageView()
                }
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .principal) {
                        HStack {
                            Text("Tech Career Growth")
                                .font(.headline)
                                .foregroundColor(Colors.titleText)
                        }
                    }
                    ToolbarItemGroup(placement: .navigationBarTrailing) {
                        Button(action: {self.action = 1}) {
                            Image(systemName: "gearshape.fill")
                        }
                    }
                }
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
        .onAppear {
            UIDevice.current.setValue(UIInterfaceOrientation.portrait.rawValue, forKey: "orientation")
            AppDelegate.orientationLock = .portrait
        }
    }
}
