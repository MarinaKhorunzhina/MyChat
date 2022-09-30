//
//  SelfConfiguringCell.swift
//  MyChat
//
//  Created by Marina on 30.09.22.
//

import Foundation


protocol SelfConfiguringCell {
    static var reuseId: String { get }
    func configure(with value: MChat)
}
