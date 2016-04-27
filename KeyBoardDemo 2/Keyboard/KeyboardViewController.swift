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
    @IBOutlet weak var backSpace: UIButton!
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
    @IBOutlet var W: UIButton!
    @IBOutlet var F: UIButton!
    @IBOutlet var shift: UIButton!
    @IBOutlet var mode: UIButton!
    
    var keyboardView: UIView!
    var shiftOn = 0
    var capsLockOn = 0
    var numbersOn = 0
    var justDoubleTapped = 0
    
    //======================
    var timer: NSTimer!
    var speedAmmo = 100
    func buttonDown(sender: AnyObject) {
        singleFire()
        timer = NSTimer.scheduledTimerWithTimeInterval(0.3, target: self, selector: #selector(KeyboardViewController.rapidFire), userInfo: nil, repeats: true)
    }
    
    func buttonUp(sender: AnyObject) {
        timer.invalidate()
    }
    
    func singleFire() {
        (textDocumentProxy as UIKeyInput).deleteBackward()
    }
    
    func rapidFire() {
        if speedAmmo > 0 {
            speedAmmo -= 1
            (textDocumentProxy as UIKeyInput).deleteBackward()
        } else {
            print("out of speed ammo, dude!")
            timer.invalidate()
        }
    }

    //======================
    
    override func updateViewConstraints() {
        super.updateViewConstraints()
    
        // Add custom view sizing constraints here
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
        
        loadKeyboard()
        
        shift.addTarget(self, action: #selector(KeyboardViewController.didDoubleTap(_:)), forControlEvents: .TouchDownRepeat)
        
        backSpace.addTarget(self, action: #selector(KeyboardViewController.buttonDown(_:)), forControlEvents: .TouchDown)
        backSpace.addTarget(self, action: #selector(KeyboardViewController.buttonUp(_:)), forControlEvents: [.TouchUpInside, .TouchUpOutside])
        
    }
    
    func didDoubleTap(sender: UIButton) {
        //ignoreTap = true
        print("didDoubleTap", sender)
        
        if (capsLockOn == 0){
            shift.setTitle("⇪", forState: UIControlState.Normal)
            shiftOn = 1
            transformUpper()
            capsLockOn = 1
        }
        else{
            shift.setTitle("↑", forState: UIControlState.Normal)
            shiftOn = 0
            transformLower()
            capsLockOn = 0
        }
        justDoubleTapped = 1
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
        let string = button.titleLabel?.text
        if (numbersOn == 1){
            (textDocumentProxy as UIKeyInput).insertText("\(string!)")
            transformChar()
        }
        else if (shiftOn==1){
            (textDocumentProxy as UIKeyInput).insertText("\(string!)".uppercaseString)
            if (capsLockOn==0){
                transformLower()
            }
        }
        else{
            (textDocumentProxy as UIKeyInput).insertText("\(string!)".lowercaseString)
            if (capsLockOn==0){
                transformLower()
            }
        }
        
        if (capsLockOn==0){
            shiftOn = 0
        }
        
        
    }
    
    func transformLower(){
        B.setTitle("b", forState: UIControlState.Normal)
        É.setTitle("é", forState: UIControlState.Normal)
        P.setTitle("p", forState: UIControlState.Normal)
        O.setTitle("o", forState: UIControlState.Normal)
        È.setTitle("è", forState: UIControlState.Normal)
        V.setTitle("v", forState: UIControlState.Normal)
        D.setTitle("d", forState: UIControlState.Normal)
        L.setTitle("l", forState: UIControlState.Normal)
        J.setTitle("j", forState: UIControlState.Normal)
        Z.setTitle("z", forState: UIControlState.Normal)
        A.setTitle("a", forState: UIControlState.Normal)
        U.setTitle("u", forState: UIControlState.Normal)
        I.setTitle("i", forState: UIControlState.Normal)
        E.setTitle("e", forState: UIControlState.Normal)
        C.setTitle("c", forState: UIControlState.Normal)
        T.setTitle("t", forState: UIControlState.Normal)
        S.setTitle("s", forState: UIControlState.Normal)
        R.setTitle("r", forState: UIControlState.Normal)
        N.setTitle("n", forState: UIControlState.Normal)
        M.setTitle("m", forState: UIControlState.Normal)
        Ç.setTitle("ç", forState: UIControlState.Normal)
        Ê.setTitle("ê", forState: UIControlState.Normal)
        À.setTitle("à", forState: UIControlState.Normal)
        Y.setTitle("y", forState: UIControlState.Normal)
        X.setTitle("x", forState: UIControlState.Normal)
        K.setTitle("k", forState: UIControlState.Normal)
        Q.setTitle("q", forState: UIControlState.Normal)
        G.setTitle("g", forState: UIControlState.Normal)
        H.setTitle("h", forState: UIControlState.Normal)
        F.setTitle("f", forState: UIControlState.Normal)
        W.setTitle("w", forState: UIControlState.Normal)
        mode.setTitle("123", forState: UIControlState.Normal)
    }
    
    func transformUpper(){
        B.setTitle("B", forState: UIControlState.Normal)
        É.setTitle("É", forState: UIControlState.Normal)
        P.setTitle("P", forState: UIControlState.Normal)
        O.setTitle("O", forState: UIControlState.Normal)
        È.setTitle("È", forState: UIControlState.Normal)
        V.setTitle("V", forState: UIControlState.Normal)
        D.setTitle("D", forState: UIControlState.Normal)
        L.setTitle("L", forState: UIControlState.Normal)
        J.setTitle("J", forState: UIControlState.Normal)
        Z.setTitle("Z", forState: UIControlState.Normal)
        A.setTitle("A", forState: UIControlState.Normal)
        U.setTitle("U", forState: UIControlState.Normal)
        I.setTitle("I", forState: UIControlState.Normal)
        E.setTitle("E", forState: UIControlState.Normal)
        C.setTitle("C", forState: UIControlState.Normal)
        T.setTitle("T", forState: UIControlState.Normal)
        S.setTitle("S", forState: UIControlState.Normal)
        R.setTitle("R", forState: UIControlState.Normal)
        N.setTitle("N", forState: UIControlState.Normal)
        M.setTitle("M", forState: UIControlState.Normal)
        Ç.setTitle("Ç", forState: UIControlState.Normal)
        Ê.setTitle("Ê", forState: UIControlState.Normal)
        À.setTitle("À", forState: UIControlState.Normal)
        Y.setTitle("Y", forState: UIControlState.Normal)
        X.setTitle("X", forState: UIControlState.Normal)
        K.setTitle("K", forState: UIControlState.Normal)
        Q.setTitle("Q", forState: UIControlState.Normal)
        G.setTitle("G", forState: UIControlState.Normal)
        H.setTitle("H", forState: UIControlState.Normal)
        F.setTitle("F", forState: UIControlState.Normal)
        W.setTitle("W", forState: UIControlState.Normal)
        mode.setTitle("123", forState: UIControlState.Normal)
    }
    
    func transformChar(){
        B.setTitle("1", forState: UIControlState.Normal)
        É.setTitle("2", forState: UIControlState.Normal)
        P.setTitle("3", forState: UIControlState.Normal)
        O.setTitle("4", forState: UIControlState.Normal)
        È.setTitle("5", forState: UIControlState.Normal)
        V.setTitle("6", forState: UIControlState.Normal)
        D.setTitle("7", forState: UIControlState.Normal)
        L.setTitle("8", forState: UIControlState.Normal)
        J.setTitle("9", forState: UIControlState.Normal)
        Z.setTitle("0", forState: UIControlState.Normal)
        A.setTitle("-", forState: UIControlState.Normal)
        U.setTitle("/", forState: UIControlState.Normal)
        I.setTitle(":", forState: UIControlState.Normal)
        E.setTitle(";", forState: UIControlState.Normal)
        C.setTitle("(", forState: UIControlState.Normal)
        T.setTitle(")", forState: UIControlState.Normal)
        S.setTitle("$", forState: UIControlState.Normal)
        R.setTitle("&", forState: UIControlState.Normal)
        N.setTitle("@", forState: UIControlState.Normal)
        M.setTitle("\"", forState: UIControlState.Normal)
        Ç.setTitle("?", forState: UIControlState.Normal)
        Ê.setTitle("!", forState: UIControlState.Normal)
        À.setTitle("\'", forState: UIControlState.Normal)
        Y.setTitle("+", forState: UIControlState.Normal)
        X.setTitle("=", forState: UIControlState.Normal)
        K.setTitle("*", forState: UIControlState.Normal)
        Q.setTitle("^", forState: UIControlState.Normal)
        G.setTitle("%", forState: UIControlState.Normal)
        H.setTitle("#", forState: UIControlState.Normal)
        F.setTitle("|", forState: UIControlState.Normal)
        W.setTitle("€", forState: UIControlState.Normal)
        mode.setTitle("abc", forState: UIControlState.Normal)
    }
    
    @IBAction func shiftPressed(button : UIButton)
    {
        if justDoubleTapped == 0{
        if (shiftOn == 0){
            shiftOn = 1
            transformUpper()
        }
        else{
            shiftOn = 0
            capsLockOn = 0
            shift.setTitle("↑", forState: UIControlState.Normal)
            transformLower()
        }
        }
        justDoubleTapped = 0
        
    }
    
    @IBAction func backSpacePressed(button : UIButton)
    {
        //(textDocumentProxy as UIKeyInput).deleteBackward()
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
        let string = button.titleLabel?.text
        (textDocumentProxy as UIKeyInput).insertText("\(string!)")
    }
    
    @IBAction func dotPressed(button : UIButton)
    {
        let string = button.titleLabel?.text
        (textDocumentProxy as UIKeyInput).insertText("\(string!)")
        
        shiftOn = 1
        transformUpper()
    }
    
    @IBAction func changeKeysPressed(button : UIButton)
    {
        if (numbersOn == 0){
            transformChar()
            numbersOn = 1
        }
        else{
            if (shiftOn == 1){
                transformUpper()
            }
            else{
                transformLower()
                shiftOn = 0
            }
            
            numbersOn = 0
        }
    }
    
    
    func loadKeyboard(){
        let keyboardNib = UINib(nibName: "Keyboard", bundle: nil)
        keyboardView = keyboardNib.instantiateWithOwner(self, options: nil)[0] as! UIView
        view.addSubview(keyboardView)
        keyboardView.frame = view.frame
        //shift.setTitle("", forState: UIControlState.Normal)
        
        nextKeyboardButton.addTarget(self, action: #selector(UIInputViewController.advanceToNextInputMode), forControlEvents: .TouchUpInside)
    }
    
}
