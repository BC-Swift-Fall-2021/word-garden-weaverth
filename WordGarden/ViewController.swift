//
//  ViewController.swift
//  WordGarden
//
//  Created by Teddy Weaver on 9/13/21.
//

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet weak var wordsGuessedLabel: UILabel!
    
    @IBOutlet weak var wordsMissedLabel: UILabel!
    
    @IBOutlet weak var wordsInGameLabel: UILabel!
    
    @IBOutlet weak var wordsRemainingLabel: UILabel!
    
    @IBOutlet weak var wordBeingRevealedLabel: UILabel!
    
    @IBOutlet weak var guessLetterTextField: UITextField!
    
    @IBOutlet weak var guessLetterButton: UIButton!
    
    @IBOutlet weak var playAgainButton: UIButton!
    
    @IBOutlet weak var gameStatusMessageLabel: UILabel!
    
    @IBOutlet weak var flowerImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let text = guessLetterTextField.text!
        guessLetterButton.isEnabled = !(text.isEmpty)
    }

    func updateUIAfterGuess(){
        guessLetterTextField.resignFirstResponder()
        guessLetterTextField.text! = ""
        guessLetterButton.isEnabled = false
    }
    
    @IBAction func guessedLetterFieldChanged(_ sender: UITextField) {
        
        sender.text = String(sender.text?.last ?? " ").trimmingCharacters(in: .whitespaces)
        guessLetterButton.isEnabled = !(sender.text!.isEmpty)
    }
    
    @IBAction func doneKeyPressed(_ sender: UITextField) {
        updateUIAfterGuess()
    }
    
    
    @IBAction func guessALetterButtonPressed(_ sender: UIButton) {
        // Dismisses the keyboard
        updateUIAfterGuess()
    }
    
    @IBAction func playAgainButtonPressed(_ sender: Any) {
    }
}

