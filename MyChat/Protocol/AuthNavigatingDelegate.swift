//
//  AuthNavigatingDelegate.swift
//  MyChat
//
//  Created by Marina on 20.10.22.
//

import Foundation

protocol AuthNavigatingDelegate: AnyObject {
    func toLoginVC()
    func toSignUpVC()
}
