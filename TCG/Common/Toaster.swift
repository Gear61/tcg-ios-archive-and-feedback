//
//  Toaster.swift
//  TCG
//
//  Created by Alexander Chiou on 1/26/22.
//

import Foundation
import AlertToast

class Toaster: ObservableObject{
    
    static let LENGTH_LONG = 3.5
    
    @Published var show = false
    @Published var alertToast = AlertToast(type: .regular) {
        didSet {
            show = true
        }
    }
    @Published var duration: Double = LENGTH_LONG
    
    func showErrorToast(title: String?, subtitle: String? = nil) {
        duration = Toaster.LENGTH_LONG
        alertToast = AlertToast(
            type: .error(.red),
            title: title,
            subTitle: subtitle
        )
    }
    
    func dismiss() {
        show = false
    }
}
