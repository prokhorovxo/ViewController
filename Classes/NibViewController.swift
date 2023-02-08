//
//  NibViewController.swift
//  ViewController
//
//  Created by Fedor Prokhorov on 17.01.2023.
//  Copyright © 2023 Fedor Prokhorov. All rights reserved.
//

import UIKit

/// Base ViewController, for which a view must be created in the XIB file
class NibViewController<ContentView: UIView & NibViewInterface>: ViewController<ContentView> {
    
    final override func loadContentView() -> ContentView {
        return ContentView.loadFromNib(owner: self, options: nil)
    }
    
}
