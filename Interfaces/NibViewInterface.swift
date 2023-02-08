//
//  NibViewInterface.swift
//  ViewController
//
//  Created by Fedor Prokhorov on 17.01.2023.
//  Copyright © 2023 Fedor Prokhorov. All rights reserved.
//

import UIKit

protocol NibViewInterface: AnyObject {
    
    static var nib: UINib { get }
    
}

extension NibViewInterface where Self: UIView {
    
    static var nib: UINib {
        return UINib(nibName: String(describing: self), bundle: Self.bundle)
    }
    
}

extension NibViewInterface {
    
    static var bundle: Bundle {
        return Bundle(for: Self.self)
    }
    
    static func loadFromNib(owner: Any? = nil, options: [UINib.OptionsKey: Any]? = nil) -> Self {
        return nib.instantiate(withOwner: owner, options: options).first as! Self
    }
    
}
