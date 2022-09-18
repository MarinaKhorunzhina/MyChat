//
//  UIImageView + Extension.swift
//  MyChat
//
//  Created by Marina on 18.09.22.
//


import UIKit

extension UIImageView {
    
    convenience init(image: UIImage?, contentMode: UIView.ContentMode) {
        self.init()
        
        self.image = image
        self.contentMode = contentMode
    }
    
}
