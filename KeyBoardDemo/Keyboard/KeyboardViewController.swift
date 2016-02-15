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
        
        B.backgroundColor = UIColor(red: 171, green: 178, blue: 186, alpha: 1.0)
        B.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).CGColor
        B.layer.shadowOffset = CGSizeMake(0.0, 2.0)
        B.layer.shadowOpacity = 1.0
        B.layer.shadowRadius = 0.0
        B.layer.masksToBounds = false
        B.layer.cornerRadius = 4.0
        
        É.backgroundColor = UIColor(red: 171, green: 178, blue: 186, alpha: 1.0)
        É.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).CGColor
        É.layer.shadowOffset = CGSizeMake(0.0, 2.0)
        É.layer.shadowOpacity = 1.0
        É.layer.shadowRadius = 0.0
        É.layer.masksToBounds = false
        É.layer.cornerRadius = 4.0
        
        P.backgroundColor = UIColor(red: 171, green: 178, blue: 186, alpha: 1.0)
        P.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).CGColor
        P.layer.shadowOffset = CGSizeMake(0.0, 2.0)
        P.layer.shadowOpacity = 1.0
        P.layer.shadowRadius = 0.0
        P.layer.masksToBounds = false
        P.layer.cornerRadius = 4.0
        
        O.backgroundColor = UIColor(red: 171, green: 178, blue: 186, alpha: 1.0)
        O.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).CGColor
        O.layer.shadowOffset = CGSizeMake(0.0, 2.0)
        O.layer.shadowOpacity = 1.0
        O.layer.shadowRadius = 0.0
        O.layer.masksToBounds = false
        O.layer.cornerRadius = 4.0
        
        È.backgroundColor = UIColor(red: 171, green: 178, blue: 186, alpha: 1.0)
        È.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).CGColor
        È.layer.shadowOffset = CGSizeMake(0.0, 2.0)
        È.layer.shadowOpacity = 1.0
        È.layer.shadowRadius = 0.0
        È.layer.masksToBounds = false
        È.layer.cornerRadius = 4.0
        
        V.backgroundColor = UIColor(red: 171, green: 178, blue: 186, alpha: 1.0)
        V.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).CGColor
        V.layer.shadowOffset = CGSizeMake(0.0, 2.0)
        V.layer.shadowOpacity = 1.0
        V.layer.shadowRadius = 0.0
        V.layer.masksToBounds = false
        V.layer.cornerRadius = 4.0
        
        V.backgroundColor = UIColor(red: 171, green: 178, blue: 186, alpha: 1.0)
        V.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).CGColor
        V.layer.shadowOffset = CGSizeMake(0.0, 2.0)
        V.layer.shadowOpacity = 1.0
        V.layer.shadowRadius = 0.0
        V.layer.masksToBounds = false
        V.layer.cornerRadius = 4.0
        
        D.backgroundColor = UIColor(red: 171, green: 178, blue: 186, alpha: 1.0)
        D.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).CGColor
        D.layer.shadowOffset = CGSizeMake(0.0, 2.0)
        D.layer.shadowOpacity = 1.0
        D.layer.shadowRadius = 0.0
        D.layer.masksToBounds = false
        D.layer.cornerRadius = 4.0
        
        L.backgroundColor = UIColor(red: 171, green: 178, blue: 186, alpha: 1.0)
        L.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).CGColor
        L.layer.shadowOffset = CGSizeMake(0.0, 2.0)
        L.layer.shadowOpacity = 1.0
        L.layer.shadowRadius = 0.0
        L.layer.masksToBounds = false
        L.layer.cornerRadius = 4.0
        
        J.backgroundColor = UIColor(red: 171, green: 178, blue: 186, alpha: 1.0)
        J.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).CGColor
        J.layer.shadowOffset = CGSizeMake(0.0, 2.0)
        J.layer.shadowOpacity = 1.0
        J.layer.shadowRadius = 0.0
        J.layer.masksToBounds = false
        J.layer.cornerRadius = 4.0
        
        Z.backgroundColor = UIColor(red: 171, green: 178, blue: 186, alpha: 1.0)
        Z.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).CGColor
        Z.layer.shadowOffset = CGSizeMake(0.0, 2.0)
        Z.layer.shadowOpacity = 1.0
        Z.layer.shadowRadius = 0.0
        Z.layer.masksToBounds = false
        Z.layer.cornerRadius = 4.0
        
        A.backgroundColor = UIColor(red: 171, green: 178, blue: 186, alpha: 1.0)
        A.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).CGColor
        A.layer.shadowOffset = CGSizeMake(0.0, 2.0)
        A.layer.shadowOpacity = 1.0
        A.layer.shadowRadius = 0.0
        A.layer.masksToBounds = false
        A.layer.cornerRadius = 4.0
        
        U.backgroundColor = UIColor(red: 171, green: 178, blue: 186, alpha: 1.0)
        U.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).CGColor
        U.layer.shadowOffset = CGSizeMake(0.0, 2.0)
        U.layer.shadowOpacity = 1.0
        U.layer.shadowRadius = 0.0
        U.layer.masksToBounds = false
        U.layer.cornerRadius = 4.0
        
        I.backgroundColor = UIColor(red: 171, green: 178, blue: 186, alpha: 1.0)
        I.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).CGColor
        I.layer.shadowOffset = CGSizeMake(0.0, 2.0)
        I.layer.shadowOpacity = 1.0
        I.layer.shadowRadius = 0.0
        I.layer.masksToBounds = false
        I.layer.cornerRadius = 4.0
        
        E.backgroundColor = UIColor(red: 171, green: 178, blue: 186, alpha: 1.0)
        E.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).CGColor
        E.layer.shadowOffset = CGSizeMake(0.0, 2.0)
        E.layer.shadowOpacity = 1.0
        E.layer.shadowRadius = 0.0
        E.layer.masksToBounds = false
        E.layer.cornerRadius = 4.0
        
        C.backgroundColor = UIColor(red: 171, green: 178, blue: 186, alpha: 1.0)
        C.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).CGColor
        C.layer.shadowOffset = CGSizeMake(0.0, 2.0)
        C.layer.shadowOpacity = 1.0
        C.layer.shadowRadius = 0.0
        C.layer.masksToBounds = false
        C.layer.cornerRadius = 4.0
        
        T.backgroundColor = UIColor(red: 171, green: 178, blue: 186, alpha: 1.0)
        T.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).CGColor
        T.layer.shadowOffset = CGSizeMake(0.0, 2.0)
        T.layer.shadowOpacity = 1.0
        T.layer.shadowRadius = 0.0
        T.layer.masksToBounds = false
        T.layer.cornerRadius = 4.0
        
        S.backgroundColor = UIColor(red: 171, green: 178, blue: 186, alpha: 1.0)
        S.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).CGColor
        S.layer.shadowOffset = CGSizeMake(0.0, 2.0)
        S.layer.shadowOpacity = 1.0
        S.layer.shadowRadius = 0.0
        S.layer.masksToBounds = false
        S.layer.cornerRadius = 4.0
        
        R.backgroundColor = UIColor(red: 171, green: 178, blue: 186, alpha: 1.0)
        R.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).CGColor
        R.layer.shadowOffset = CGSizeMake(0.0, 2.0)
        R.layer.shadowOpacity = 1.0
        R.layer.shadowRadius = 0.0
        R.layer.masksToBounds = false
        R.layer.cornerRadius = 4.0
        
        N.backgroundColor = UIColor(red: 171, green: 178, blue: 186, alpha: 1.0)
        N.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).CGColor
        N.layer.shadowOffset = CGSizeMake(0.0, 2.0)
        N.layer.shadowOpacity = 1.0
        N.layer.shadowRadius = 0.0
        N.layer.masksToBounds = false
        N.layer.cornerRadius = 4.0
        
        M.backgroundColor = UIColor(red: 171, green: 178, blue: 186, alpha: 1.0)
        M.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).CGColor
        M.layer.shadowOffset = CGSizeMake(0.0, 2.0)
        M.layer.shadowOpacity = 1.0
        M.layer.shadowRadius = 0.0
        M.layer.masksToBounds = false
        M.layer.cornerRadius = 4.0
        
        Ç.backgroundColor = UIColor(red: 171, green: 178, blue: 186, alpha: 1.0)
        Ç.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).CGColor
        Ç.layer.shadowOffset = CGSizeMake(0.0, 2.0)
        Ç.layer.shadowOpacity = 1.0
        Ç.layer.shadowRadius = 0.0
        Ç.layer.masksToBounds = false
        Ç.layer.cornerRadius = 4.0
        
        Ê.backgroundColor = UIColor(red: 171, green: 178, blue: 186, alpha: 1.0)
        Ê.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).CGColor
        Ê.layer.shadowOffset = CGSizeMake(0.0, 2.0)
        Ê.layer.shadowOpacity = 1.0
        Ê.layer.shadowRadius = 0.0
        Ê.layer.masksToBounds = false
        Ê.layer.cornerRadius = 4.0
        
        À.backgroundColor = UIColor(red: 171, green: 178, blue: 186, alpha: 1.0)
        À.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).CGColor
        À.layer.shadowOffset = CGSizeMake(0.0, 2.0)
        À.layer.shadowOpacity = 1.0
        À.layer.shadowRadius = 0.0
        À.layer.masksToBounds = false
        À.layer.cornerRadius = 4.0
        
        Y.backgroundColor = UIColor(red: 171, green: 178, blue: 186, alpha: 1.0)
        Y.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).CGColor
        Y.layer.shadowOffset = CGSizeMake(0.0, 2.0)
        Y.layer.shadowOpacity = 1.0
        Y.layer.shadowRadius = 0.0
        Y.layer.masksToBounds = false
        Y.layer.cornerRadius = 4.0
        
        X.backgroundColor = UIColor(red: 171, green: 178, blue: 186, alpha: 1.0)
        X.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).CGColor
        X.layer.shadowOffset = CGSizeMake(0.0, 2.0)
        X.layer.shadowOpacity = 1.0
        X.layer.shadowRadius = 0.0
        X.layer.masksToBounds = false
        X.layer.cornerRadius = 4.0
        
        K.backgroundColor = UIColor(red: 171, green: 178, blue: 186, alpha: 1.0)
        K.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).CGColor
        K.layer.shadowOffset = CGSizeMake(0.0, 2.0)
        K.layer.shadowOpacity = 1.0
        K.layer.shadowRadius = 0.0
        K.layer.masksToBounds = false
        K.layer.cornerRadius = 4.0
        
        Q.backgroundColor = UIColor(red: 171, green: 178, blue: 186, alpha: 1.0)
        Q.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).CGColor
        Q.layer.shadowOffset = CGSizeMake(0.0, 2.0)
        Q.layer.shadowOpacity = 1.0
        Q.layer.shadowRadius = 0.0
        Q.layer.masksToBounds = false
        Q.layer.cornerRadius = 4.0
        
        G.backgroundColor = UIColor(red: 171, green: 178, blue: 186, alpha: 1.0)
        G.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).CGColor
        G.layer.shadowOffset = CGSizeMake(0.0, 2.0)
        G.layer.shadowOpacity = 1.0
        G.layer.shadowRadius = 0.0
        G.layer.masksToBounds = false
        G.layer.cornerRadius = 4.0
        
        H.backgroundColor = UIColor(red: 171, green: 178, blue: 186, alpha: 1.0)
        H.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).CGColor
        H.layer.shadowOffset = CGSizeMake(0.0, 2.0)
        H.layer.shadowOpacity = 1.0
        H.layer.shadowRadius = 0.0
        H.layer.masksToBounds = false
        H.layer.cornerRadius = 4.0
        
        F.backgroundColor = UIColor(red: 171, green: 178, blue: 186, alpha: 1.0)
        F.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).CGColor
        F.layer.shadowOffset = CGSizeMake(0.0, 2.0)
        F.layer.shadowOpacity = 1.0
        F.layer.shadowRadius = 0.0
        F.layer.masksToBounds = false
        F.layer.cornerRadius = 4.0
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
