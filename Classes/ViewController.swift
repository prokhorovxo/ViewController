//
//  ViewController.swift
//  ViewController
//
//  Created by Fedor Prokhorov on 17.01.2023.
//  Copyright © 2023 Fedor Prokhorov. All rights reserved.
//

import UIKit

/// Base ViewController, in which view must be defined programmatically in the loadContentView() method
class ViewController<ContentView: UIView>: UIViewController, ViewControllerInterface {
    // Empty initializer. Override this for custom initializing
    init() {
        super.init(nibName: nil, bundle: nil)
    }
    // We create our UI programmatically only, so we don't need this initialiser.
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    // Set view controller's view
    final override func loadView() {
        view = loadContentView()
    }
    // Method for determining your own view
    func loadContentView() -> ContentView {
        return ContentView()
    }
}
