//
//  WaitingChatsNavigation.swift
//  MyChat
//
//  Created by Marina on 7.11.22.
//

import Foundation

protocol WaitingChatsNavigation: class {
    func removeWaitingChat(chat: MChat)
    func changeToActive(chat: MChat)
}

