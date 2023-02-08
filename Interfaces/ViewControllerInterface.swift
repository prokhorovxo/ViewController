//
//  ViewControllerInterface.swift
//  ViewController
//
//  Created by Fedor Prokhorov on 17.01.2023.
//  Copyright © 2023 Fedor Prokhorov. All rights reserved.
//

import UIKit

protocol ViewControllerInterface: AnyObject {
    
    associatedtype ContentView
    
    var contentView: ContentView { get }
    
    func loadContentView() -> ContentView
}

extension ViewControllerInterface where Self: UIViewController {
    
    var contentView: ContentView {
        return view as! ContentView
    }
}

extension ViewControllerInterface where ContentView: NibViewInterface {
    
    func loadContentView() -> ContentView {
        return ContentView.loadFromNib(owner: self, options: nil)
    }
}
