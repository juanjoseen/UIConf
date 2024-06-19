//
//  UIViewController.swift
//  UIConfig
//
//  Created by Juan Jose Elias Navarro on 10/12/22.
//

import UIKit

var blurEffect: UIVisualEffectView = {
    let blur: UIVisualEffectView = UIVisualEffectView(effect: UIBlurEffect(style: .dark))
    blur.translatesAutoresizingMaskIntoConstraints = false
    return blur
}()

public extension UIViewController {
    
    var safeArea: UILayoutGuide {
        return view.safeAreaLayoutGuide
    }
    
    func pushVC(_ viewController: UIViewController, animated: Bool = true) {
        navigationController?.pushViewController(viewController, animated: animated)
    }
    
    func popVC(animated: Bool = true) {
        navigationController?.popViewController(animated: animated)
    }
    
    func showToast(type: ToastType, message: String, time: TimeInterval = 3.0) {
        GenericToast(type: type, message: message, time: time).showIn(self.view)
    }
}
