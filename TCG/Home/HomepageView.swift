//
//  HomepageView.swift
//  TCG
//
//  Created by Alexander Chiou on 2/24/22.
//

import SwiftUI
import StoreKit

struct HomepageView: View {
    
    @State private var action: Int? = 0
    @State private var showRatingUpsell: Bool = false
    
    func checkForRatingUpsell() {
        if (UserDefaultUtil.logAppOpenAndCheckForRatingUpsell()) {
            showRatingUpsell = true
        }
    }
    
    func requestReview() {
        DispatchQueue.main.async {
            if let scene = UIApplication.shared.connectedScenes.first(where: { $0.activationState == .foregroundActive }) as? UIWindowScene {
                SKStoreReviewController.requestReview(in: scene)
            }
        }
    }
    
    var body: some View {
        NavigationView {
            ZStack {
                NavigationLink(destination: SettingsView(),
                               tag: 1,
                               selection: $action) {
                    EmptyView()
                }
                VStack(spacing: 0) {
                    Divider()
                    BrowseLessonsView()
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
            checkForRatingUpsell()
        }
        .alert(isPresented: $showRatingUpsell) {
            Alert(
                title: Text("Help Us Lower Barriers In Tech For All"),
                message: Text("Hey, it looks like you're a frequent user of Tech Career Growth! If you have a couple seconds, please rate this app in the App Store. Every rating goes a long way towards motivating us to continue improving the app!"),
                primaryButton: .default(Text("Sure, I'll help"), action: {
                    requestReview()
                }),
                secondaryButton: .default(Text("No, I'm good"), action: {})
            )
        }
    }
}
