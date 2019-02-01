//
//  ViewController.swift
//  lifecounter2
//
//  Created by Charlene on 1/30/19.
//  Copyright © 2019 Charlene. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    var playerCounter = Array(repeating: 20, count: 8)
    var gameStarted = false
    var currentPlayers = 4
    var myHistory = [String]()
    @IBOutlet var PlayerLabels: [UILabel]!
    
    @IBOutlet weak var addChunksField: UITextField!
    @IBOutlet var extraPlayers: [UIStackView]!
    
    @IBOutlet weak var loseLabel: UILabel!
    @IBOutlet var changePlayerCount: [UIButton]!
    
    @IBOutlet var addChunks: [UIButton]!
    @IBOutlet var minusChunks: [UIButton]!
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let history = segue.destination as! history
        history.historyText = myHistory
    }
    
    @IBAction func BtnPressed(_ sender: UIButton) {
        gameStarted = true
        
        changePlayerCount[0].isHidden = true
        changePlayerCount[1].isHidden = true
        //print(sender.tag)
        let playnb = abs(sender.tag / 10)
        //print(playnb)
        playerCounter[playnb - 1] = playerCounter[playnb - 1] + sender.tag % 10
         PlayerLabels[playnb - 1].text = String(playerCounter[playnb - 1])
        if sender.tag % 10 > 0 {
            myHistory.append("\nPlayer " + String(playnb) + " won " + String(sender.tag % 10) + " life")
        } else {
             myHistory.append("\nPlayer " + String(playnb) + " lost " + String(abs(sender.tag % 10)) + " life")
        }
 
        if playerCounter[playnb - 1] <= 0 {
            loseLabel.text = "Player " + String(playnb) + " LOSES!"
        }
        
    }
    
    @IBAction func AddChunks(_ sender: UIButton) {
        var j = 1
        for i in addChunks {
            i.setTitle("+ " + addChunksField.text! ,for: .normal)
            i.tag = Int(addChunksField.text!) ?? 0
            i.tag  = i.tag + j * 10
            j = j + 1
        }
        
        j = 1
        for i in minusChunks {
            i.setTitle("- " + addChunksField.text!,for: .normal)
            i.tag = Int(addChunksField.text!) ?? 0
            i.tag  = i.tag * -1 - j * 10
            j = j + 1
        }
    }


    @IBAction func addPlayer(_ sender: UIButton) {
        if !gameStarted{
            currentPlayers = currentPlayers + sender.tag
            switch currentPlayers {
            case 2:
                for i in 0...5 {
                    extraPlayers[i].isHidden = true
                }
            case 3:
                extraPlayers[0].isHidden = false
                for i in 1...5 {
                    extraPlayers[i].isHidden = true
                }
                
            case 4:
                extraPlayers[1].isHidden = false
                for i in 2...5 {
                    extraPlayers[i].isHidden = true
                }
            case 5:
                extraPlayers[2].isHidden = false
                for i in 3...5 {
                    extraPlayers[i].isHidden = true
                }
            case 6:
                extraPlayers[3].isHidden = false
                for i in 4...5 {
                    extraPlayers[i].isHidden = true
                }
            case 7:
                extraPlayers[4].isHidden = false
                extraPlayers[5].isHidden = true
            case 8:
                extraPlayers[5].isHidden = false
            default:
                let alert = UIAlertController(title: "My Alert", message: "Can't add more/decrease more players!.", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .default, handler: { _ in
                    NSLog("The \"OK\" alert occured.")
                }))
                
                self.present(alert, animated: true, completion: {
                    print("This is hte completion handler for the present() code")
                })
            }
        }
        
    }
    
}
