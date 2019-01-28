//
//  ViewController.swift
//  lifecounter
//
//  Created by Charlene on 1/27/19.
//  Copyright © 2019 Charlene. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var player1lifecounter : Int = 20;
    var player2lifecounter : Int = 20;
    var player3lifecounter : Int = 20;
    var player4lifecounter : Int = 20;

    @IBOutlet weak var player1life: UILabel!
    @IBOutlet weak var player2life: UILabel!
    @IBOutlet weak var player3life: UILabel!
    @IBOutlet weak var player4life: UILabel!
    
    @IBOutlet weak var Lose: UILabel!
    
    @IBAction func Player1(_ sender: UIButton) {
        player1lifecounter = player1lifecounter + sender.tag
        player1life.text = String(player1lifecounter)
        if player1lifecounter <= 0 {
            Lose.text = "Player 1 LOSES"
        }
        
    }
    
    @IBAction func Player2(_ sender: UIButton) {
        player2lifecounter = player2lifecounter + sender.tag
        player2life.text =  String(player2lifecounter)
        if player2lifecounter <= 0 {
            Lose.text = "Player 2 LOSES"
        }
        
    }
    
    @IBAction func Player3(_ sender: UIButton) {
        player3lifecounter = player3lifecounter + sender.tag
        player3life.text =  String(player3lifecounter)
        if player3lifecounter <= 0 {
            Lose.text = "Player 3 LOSES"
        }
        
    }
    
    @IBAction func Player4(_ sender: UIButton) {
        player4lifecounter = player4lifecounter + sender.tag
        player4life.text =  String(player4lifecounter)
        if player4lifecounter <= 0 {
            Lose.text = "Player 4 LOSES"
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
}


