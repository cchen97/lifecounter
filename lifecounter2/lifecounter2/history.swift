//
//  history.swift
//  lifecounter2
//
//  Created by Charlene on 1/31/19.
//  Copyright © 2019 Charlene. All rights reserved.
//

import UIKit

class history: UIViewController {
    @IBOutlet weak var historyTextField: UITextView!
    var historyText = [String]()


    override func viewDidLoad() {
        super.viewDidLoad()
        var toString = ""
        for i in historyText {
            toString = toString + i
        }
        historyTextField.text = toString
        // Do any additional setup after loading the view.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
