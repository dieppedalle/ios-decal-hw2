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
    @IBOutlet var testButton: UIButton!
    
    
    
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
    
    func changeStyleButtons(){
        testButton.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).CGColor
        testButton.layer.shadowOffset = CGSizeMake(0.0, 2.0)
        testButton.layer.shadowOpacity = 1.0
        testButton.layer.shadowRadius = 0.0
        testButton.layer.masksToBounds = false
        testButton.layer.cornerRadius = 4.0
    }
    
    func loadKeyboard(){
        var keyboardNib = UINib(nibName: "Keyboard", bundle: nil)
        keyboardView = keyboardNib.instantiateWithOwner(self, options: nil)[0] as! UIView
        view.addSubview(keyboardView)
        keyboardView.frame = view.frame
        
        changeStyleButtons()
        
        nextKeyboardButton.addTarget(self, action: "advanceToNextInputMode", forControlEvents: .TouchUpInside)
    }
    
}
