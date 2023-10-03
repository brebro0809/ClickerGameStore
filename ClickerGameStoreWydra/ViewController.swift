//
//  ViewController.swift
//  ClickerGameStoreWydra
//
//  Created by BRENDEN WYDRA on 10/3/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var ponyCount: UILabel!
    
    var ponies = 0
    var poniesPerClick = 1

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func updatePonies(){
        ponyCount.text = "Ponies: \(ponies)"
    }


    @IBAction func newPonyPress(_ sender: UIButton) {
        ponies += poniesPerClick
        updatePonies()
    }
    
    performSegue(withIdentifier identifier: String, sender: Any?) {
        <#code#>
    }
}

