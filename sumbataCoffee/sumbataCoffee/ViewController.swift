//
//  ViewController.swift
//  sumbataCoffee
//
//  Created by Tamuna Kakhidze on 05.04.24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var coffeeName: UILabel!
    
    @IBOutlet weak var ratingLabel: UILabel!
    
    @IBOutlet weak var priceLabel: UILabel!
    
    @IBOutlet weak var smallCoffeeButton: UIButton!
    
    @IBOutlet weak var mediumCoffeeButton: UIButton!
    
    
    @IBOutlet weak var largeCoffeeButton: UIButton!
    @IBOutlet weak var textViewLabel: UITextView!
    
    @IBOutlet weak var favoritesSymbol: UIImageView!
    
    init(coffeeName: UILabel!, ratingLabel: UILabel!, priceLabel: UILabel!, smallCoffeeButton: UIButton!, mediumCoffeeButton: UIButton!, largeCoffeeButton: UIButton!, textViewLabel: UITextView!, coffee1: ViewController.Coffee = Coffee(productName: "კაპუჩინო", price: 4.56, rating: 4.8), coffee2: ViewController.Coffee = Coffee(productName: "კაპუჩინო", price: 6.75, rating: 4.3), coffee3: ViewController.Coffee = Coffee(productName: "კაპუჩინო", price: 8.33, rating: 4.9)) {
        super.init(nibName: nil, bundle: nil)
        self.coffeeName = coffeeName
        self.ratingLabel = ratingLabel
        self.priceLabel = priceLabel
        self.smallCoffeeButton = smallCoffeeButton
        self.mediumCoffeeButton = mediumCoffeeButton
        self.largeCoffeeButton = largeCoffeeButton
        self.textViewLabel = textViewLabel
        self.coffee1 = coffee1
        self.coffee2 = coffee2
        self.coffee3 = coffee3
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textLabel()
        customizeButtons(smallCoffeeButton, mediumCoffeeButton, largeCoffeeButton)
        print("view did load")
        favorite()
        
    }
    
    struct Coffee {
        var productName: String
        var price: Double
        var rating: Double
        
    }
    
    var coffee1 = Coffee(productName: "კაპუჩინო", price: 4.56, rating: 4.8)
    var coffee2 = Coffee(productName: "კაპუჩინო", price: 6.75, rating: 4.3)
    var coffee3 = Coffee(productName: "კაპუჩინო", price: 8.33, rating: 4.9)
    
    let brown = UIColor(red: 198/255, green: 124/255, blue: 78/255, alpha: 1.0)
    let lightBrown = UIColor(red: 255/255, green: 245/255, blue: 238/255, alpha: 1.0)

    func favorite() {
        if favoritesSymbol.isExclusiveTouch {
            favoritesSymbol.backgroundColor = UIColor.black
        }
    }
    
        

    func textLabel() {
        if let range = textViewLabel.text.range(of: "მეტი") {
            let range = NSRange(range, in: textViewLabel.text)
            textViewLabel.textStorage.addAttribute(.foregroundColor, value: brown, range: range)
        }

    }
    
    func customizeButtons(_ buttons: UIButton...) {
        for button in buttons {
            button.layer.borderWidth = 1
            button.layer.cornerRadius = 12
            button.layer.borderColor = UIColor.lightGray.cgColor
            
        }
        
        
    }
    
 
    
    @IBAction func chooseSmallCoffee(_ sender: Any) {
        coffeeName.text = String(coffee1.productName)
        priceLabel.text = "₾" + String(coffee1.price)
        smallCoffeeButton.backgroundColor = lightBrown
        smallCoffeeButton.layer.borderColor = brown.cgColor
        smallCoffeeButton.setTitleColor(brown, for: .selected)
        
        mediumCoffeeButton.layer.borderColor = UIColor.lightGray.cgColor
        largeCoffeeButton.layer.borderColor = UIColor.lightGray.cgColor


    }
    
    @IBAction func chooseMediumCoffee(_ sender: Any) {
        coffeeName.text = String(coffee1.productName)
        priceLabel.text = "₾" + String(coffee2.price)
        mediumCoffeeButton.backgroundColor = lightBrown
        mediumCoffeeButton.layer.borderColor = brown.cgColor
        mediumCoffeeButton.setTitleColor(brown, for: .selected)

        smallCoffeeButton.layer.borderColor = UIColor.lightGray.cgColor
        largeCoffeeButton.layer.borderColor = UIColor.lightGray.cgColor


    }
    
    @IBAction func chooseLargeCoffee(_ sender: Any) {
        coffeeName.text = String(coffee1.productName)
        priceLabel.text = "₾" + String(coffee3.price)
        largeCoffeeButton.backgroundColor = lightBrown
        largeCoffeeButton.layer.borderColor = brown.cgColor
        largeCoffeeButton.setTitleColor(brown, for: .selected)

        smallCoffeeButton.layer.borderColor = UIColor.lightGray.cgColor
        mediumCoffeeButton.layer.borderColor = UIColor.lightGray.cgColor


    }
    
    
    
    
}

