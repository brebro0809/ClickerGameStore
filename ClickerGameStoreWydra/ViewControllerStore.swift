//
//  ViewControllerStore.swift
//  ClickerGameStoreWydra
//
//  Created by BRENDEN WYDRA on 10/3/23.
//

import UIKit

class ViewControllerStore: UIViewController {
    
    @IBOutlet weak var hayText: UILabel!
    @IBOutlet weak var appleText: UILabel!
    @IBOutlet weak var poniesText: UILabel!
    
    var delegate: ViewController!
    
    var ponies: Int!
    var hay = 0
    var apples = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        update()
        // Do any additional setup after loading the view.
    }
    
    func update() {
        delegate.ponies = ponies
        delegate.poniesPerClick = (hay * 2) + apples + 1
        
        poniesText.text = "Ponies: \(ponies!)"
        hayText.text = "Bales Owned: \(hay)"
        appleText.text = "Apples Owned: \(apples)"
    }
    
    @IBAction func hayPress(_ sender: UIButton) {
        if (ponies >= 10) {
            hay += 1
            ponies -= 10
            update()
        }
    }
    
    @IBAction func applePress(_ sender: UIButton) {
        if (ponies >= 5) {
            apples += 1
            ponies -= 5
            update()
        }
    }
    

}
