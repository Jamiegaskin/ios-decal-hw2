//
//  KeyboardViewController.swift
//  CalKeyboard
//
//  Created by Gene Yoo on 9/15/15.
//  Copyright © 2015 iOS Decal. All rights reserved.
//



import UIKit

class KeyboardViewController: UIInputViewController {

    @IBOutlet var nextKeyboardButton: UIButton!
    @IBOutlet var deleteKeyboardButton: UIButton!
    @IBOutlet var returnKeyboardButton: UIButton!
    @IBOutlet var foxInSocks: UIButton!
    @IBOutlet var beatles: UIButton!
    @IBOutlet var bimAndBen: UIButton!
    
    
    var keyboardView: UIView!

    override func updateViewConstraints() {
        super.updateViewConstraints()
    
        // Add custom view sizing constraints here
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        loadInterface()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated
    }

    override func textWillChange(textInput: UITextInput?) {
        // The app is about to change the document's contents. Perform any preparation here.
    }

    override func textDidChange(textInput: UITextInput?) {
        // The app has just changed the document's contents, the document context has been updated.
    }
    
    func delete() {
        self.textDocumentProxy.deleteBackward()
    }
    
    func newLine() {
        self.textDocumentProxy.insertText("\n")
    }
    
    func twister1() {
        self.textDocumentProxy.insertText("Fox in socks on box on Knox.\n")
    }
    
    func twister2() {
        self.textDocumentProxy.insertText("Bim and Ben lead bands with brooms.\nBen's band bangs and Bim's band booms.\n")
    }
    
    func twister3() {
        self.textDocumentProxy.insertText("When beetles fight these battles in a bottle with their paddles\nand the bottle's on a poodle and the poodle's eating noodles...\n...they call this a muddle puddle tweetle poodle beetle noodle\nbottle paddle battle.\n")
    }
    

    func loadInterface() {
        let keyboardNib = UINib(nibName: "Keyboard", bundle: nil)
        keyboardView = keyboardNib.instantiateWithOwner(self, options: nil)[0] as! UIView
        keyboardView.frame = view.frame
        view.addSubview(keyboardView)
        view.backgroundColor = keyboardView.backgroundColor
        nextKeyboardButton.addTarget(self, action: "advanceToNextInputMode", forControlEvents: .TouchUpInside) // advanceToNextInputMode is already defined in template
        deleteKeyboardButton.addTarget(self, action: "delete", forControlEvents: .TouchUpInside)
        returnKeyboardButton.addTarget(self, action: "newLine", forControlEvents: .TouchUpInside)
        foxInSocks.addTarget(self, action: "twister1", forControlEvents: .TouchUpInside)
        bimAndBen.addTarget(self, action: "twister2", forControlEvents: .TouchUpInside)
        beatles.addTarget(self, action: "twister3", forControlEvents: .TouchUpInside)
    }


}
