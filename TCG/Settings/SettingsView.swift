//
//  SettingsView.swift
//  TCG
//
//  Created by Alexander Chiou on 1/10/22.
//

import SwiftUI
import MessageUI
import StoreKit

struct SettingsView: View {
    
    let JOIN_SLACK_URL = "https://join.slack.com/t/techcareergrowth/shared_invite/zt-lt2tbjcn-LOAVIDuGPI~nkuc4woHDLg"
    let TERMS_AND_CONDITIONS_URL = "https://github.com/Gear61/Tech-Career-Growth-Documents/blob/main/Terms%20And%20Conditions.md#terms-and-conditions"
    let PRIVACY_POLICY_URL = "https://github.com/Gear61/Tech-Career-Growth-Documents/blob/main/Privacy%20Policy.md#privacy-notice"
    let SOURCE_CODE_URL = "https://github.com/Gear61/Tech-Career-Growth-iOS"
    
    struct Message: Identifiable {
        let id = UUID()
        let text: String
    }
    
    // Call session.signOut() to log out
    @State var result: Result<MFMailComposeResult, Error>? = nil
    @State var isShowingFeedbackMailView = false
    
    func sendFeedbackEmail() {
        if (MFMailComposeViewController.canSendMail()) {
            isShowingFeedbackMailView = true
        }
    }
    
    func openURL(urlString: String) {
        if let url = URL(string: urlString) {
            UIApplication.shared.open(url)
        }
    }
    
    func rateApp() {
        DispatchQueue.main.async {
            if let scene = UIApplication.shared.connectedScenes.first(where: { $0.activationState == .foregroundActive }) as? UIWindowScene {
                SKStoreReviewController.requestReview(in: scene)
            }
        }
    }
    
    var body: some View {
        ScrollView {
            LazyVStack {
                Divider()
                Button(action: {openURL(urlString: JOIN_SLACK_URL)}) {
                    SettingsRow(imagePath: "person.2", text: "Join the community on Slack")
                }
                Button(action: sendFeedbackEmail) {
                    SettingsRow(imagePath: "envelope", text: "Send feedback")
                }
                Button(action: rateApp) {
                    SettingsRow(imagePath: "hand.thumbsup", text: "Rate this app")
                }
                Button(action: {openURL(urlString: TERMS_AND_CONDITIONS_URL)}) {
                    SettingsRow(imagePath: "doc.text", text: "Terms and conditions")
                }
                Button(action: {openURL(urlString: PRIVACY_POLICY_URL)}) {
                    SettingsRow(imagePath: "lock.circle", text: "Privacy policy")
                }
                Button(action: {openURL(urlString: SOURCE_CODE_URL)}) {
                    SettingsRow(imagePath: "chevron.left.forwardslash.chevron.right", text: "Source code")
                }
            }
        }
        .sheet(isPresented: $isShowingFeedbackMailView) {
            MailView(result: self.$result, subject: "Tech Career Growth iOS Feedback", recipient: "randomappsinc61@gmail.com")
        }
        .toolbar {
            ToolbarItem(placement: .principal) {
                HStack {
                    Text("Settings").font(.headline)
                }
            }
        }
    }
}
