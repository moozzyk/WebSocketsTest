//
//  AppDelegate.swift
//  WebSocketsTest
//
//  Created by Pawel Kadluczka on 2/18/17.
//  Copyright © 2017 Pawel Kadluczka. All rights reserved.
//

import Cocoa

import SocketRocket

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!
    @IBOutlet weak var urlTextField: NSTextField!
    @IBOutlet weak var logTextField: NSTextField!

    var webSocket: SRWebSocket!

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }

    @IBAction func btnConnect(sender: AnyObject) {
        let url = URL(string: urlTextField.stringValue)!
        webSocket = SRWebSocket(url:url)
        webSocket.delegate = WebSocketDelegate(log: logTextField)
        webSocket.open()
    }
}

