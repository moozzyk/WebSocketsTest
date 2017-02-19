//
//  WebsocketDelegate.swift
//  WebSocketsTest
//
//  Created by Pawel Kadluczka on 2/18/17.
//  Copyright © 2017 Pawel Kadluczka. All rights reserved.
//

import Foundation
import Cocoa
import SocketRocket

public class WebSocketDelegate: NSObject, SRWebSocketDelegate {
    let log: NSTextField

    init(log: NSTextField!) {
        self.log = log
    }

    public func webSocketDidOpen(_ webSocket: SRWebSocket) {
        log.stringValue += "WebSocket opened"
    }

    // @objc(webSocket:didReceiveMessageWithString:)
    public func webSocket(_ webSocket: SRWebSocket, didReceiveMessageWith string:String) {
        log.stringValue += "message received"
    }
}
