//
//  DescriptionViewController.swift
//  TebleView
//
//  Created by CarlosRamírezGómez on 3/9/19.
//  Copyright © 2019 CarlosRamírezGómez. All rights reserved.
//

import UIKit

class DescriptionViewController: UIViewController {

    
    var price: Float?
    var titleProduct: String?
    var descriptionProduct: String?
    var imageIdentifier: String?
    var firstViewController : ViewController?
    
    @IBOutlet weak var lblPrice: UILabel!
    @IBOutlet weak var llblTitle: UILabel!
    @IBOutlet weak var lblDescription: UILabel!
    @IBOutlet weak var imageViewProduct: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        let priceString = price!.description
        
        lblPrice.text = "$\(priceString)"
        lblDescription.text = descriptionProduct
        llblTitle.text = titleProduct
        imageViewProduct.image = UIImage(named: imageIdentifier!)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnExit(_ sender: UIButton) {
    
    dismiss(animated: true, completion: nil)
    
    }
    
    
    @IBAction func addToBuyCart(_ sender: Any) {
        
        print("🛒 Add To Buy Cart")
        alert(message: "Operacion Exitosa")
        firstViewController?.receivedData(data:"Hola dede ThirdVC 2 ")
    }
    
    
    func alert(message: String){
        let alert = UIAlertController.init(title: "Articulos Agregados", message: message, preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { (action) in
            
            
            
            self.dismiss(animated: true, completion: nil)
        }))
        
        self.present(alert, animated: false)
    }
    
    
}
