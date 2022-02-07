//
//  TCGApp.swift
//  TCG
//
//  Created by Alexander Chiou on 1/10/22.
//

import SwiftUI

@main
struct TCGApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(InterviewContentProvider())
                .environmentObject(ResumeContentProvider())
                .environmentObject(ProductivityContentProvider())
                .environmentObject(PromotionContentProvider())
        }
    }
}
