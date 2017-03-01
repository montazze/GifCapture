//
//  ViewController.swift
//  GifCapture
//
//  Created by Khoa Pham on 01/03/2017.
//  Copyright © 2017 Fantageek. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

  @IBOutlet weak var bottomView: NSView!
  @IBOutlet weak var widthTextField: NSTextField!
  @IBOutlet weak var heightTextField: NSTextField!

  override func viewDidLoad() {
    super.viewDidLoad()

    view.wantsLayer = true
    view.layer?.borderColor = NSColor.lightGray.cgColor
    view.layer?.borderWidth = 2

    bottomView.wantsLayer = true
    bottomView.layer?.backgroundColor = NSColor.lightGray.cgColor
  }

  override func viewDidLayout() {
    super.viewDidLayout()

    guard let window = view.window else {
      return
    }

    widthTextField.stringValue = String(format: "%d", window.frame.size.width)
    heightTextField.stringValue = String(format: "%d", window.frame.size.height)
  }
}
