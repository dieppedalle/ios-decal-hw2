//
//  KeyboardViewController.swift
//  Keyboard
//
//  Created by Gauthier Dieppedalle on 2/13/16.
//  Copyright © 2016 Gauthier Dieppedalle. All rights reserved.
//

import UIKit

class KeyboardViewController: UIInputViewController {

    @IBOutlet var nextKeyboardButton: UIButton!
    @IBOutlet var B: UIButton!
    @IBOutlet var É: UIButton!
    @IBOutlet var P: UIButton!
    @IBOutlet var O: UIButton!
    @IBOutlet var È: UIButton!
    @IBOutlet var V: UIButton!
    @IBOutlet var D: UIButton!
    @IBOutlet var L: UIButton!
    @IBOutlet var J: UIButton!
    @IBOutlet var Z: UIButton!
    @IBOutlet var A: UIButton!
    @IBOutlet var U: UIButton!
    @IBOutlet var I: UIButton!
    @IBOutlet var E: UIButton!
    @IBOutlet var C: UIButton!
    @IBOutlet var T: UIButton!
    @IBOutlet var S: UIButton!
    @IBOutlet var R: UIButton!
    @IBOutlet var N: UIButton!
    @IBOutlet var M: UIButton!
    @IBOutlet var Ç: UIButton!
    @IBOutlet var Ê: UIButton!
    @IBOutlet var À: UIButton!
    @IBOutlet var Y: UIButton!
    @IBOutlet var X: UIButton!
    @IBOutlet var K: UIButton!
    @IBOutlet var Q: UIButton!
    @IBOutlet var G: UIButton!
    @IBOutlet var H: UIButton!
    @IBOutlet var F: UIButton!
    @IBOutlet var shift: UIButton!
    
    var keyboardView: UIView!
    var shiftOn = 0
    
    override func updateViewConstraints() {
        super.updateViewConstraints()
    
        // Add custom view sizing constraints here
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        loadKeyboard()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated
    }

    override func textWillChange(textInput: UITextInput?) {
        // The app is about to change the document's contents. Perform any preparation here.
    }

    override func textDidChange(textInput: UITextInput?) {
         
    }
    
    @IBAction func buttonPressed(button : UIButton)
    {
        var string = button.titleLabel?.text
        if (shiftOn==1){
            (textDocumentProxy as UIKeyInput).insertText("\(string!)".uppercaseString)
        }
        else{
            (textDocumentProxy as UIKeyInput).insertText("\(string!)".lowercaseString)
        }
        shiftOn = 0
    }
    
    @IBAction func shiftPressed(button : UIButton)
    {
        if (shiftOn == 0){
            shiftOn = 1
        }
        else{
            shiftOn = 0
        }
        
    }
    
    @IBAction func backSpacePressed(button : UIButton)
    {
        (textDocumentProxy as UIKeyInput).deleteBackward()
    }
    
    @IBAction func spacePressed(button : UIButton)
    {
        (textDocumentProxy as UIKeyInput).insertText(" ")
    }
    
    @IBAction func newLinePressed(button : UIButton)
    {
        (textDocumentProxy as UIKeyInput).insertText("\n")
    }
    
    @IBAction func numberPressed(button : UIButton)
    {
        var string = button.titleLabel?.text
        (textDocumentProxy as UIKeyInput).insertText("\(string!)")
    }
    
    
    func loadKeyboard(){
        var keyboardNib = UINib(nibName: "Keyboard", bundle: nil)
        keyboardView = keyboardNib.instantiateWithOwner(self, options: nil)[0] as! UIView
        view.addSubview(keyboardView)
        keyboardView.frame = view.frame
        shift.setTitle("", forState: UIControlState.Normal)
        
        nextKeyboardButton.addTarget(self, action: "advanceToNextInputMode", forControlEvents: .TouchUpInside)
    }
    
}
