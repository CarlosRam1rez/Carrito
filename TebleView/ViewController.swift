//
//  ViewController.swift
//  TebleView
//
//  Created by CarlosRamírezGómez on 3/8/19.
//  Copyright © 2019 CarlosRamírezGómez. All rights reserved.
///

struct DetailsProduct {
    var price: Float?
    var product: String?
    var description: String?
    var imageIdentifier: String?
    
}


import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    
    var products: [DetailsProduct] = []
    var total: Float?
    
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var lblTotal: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.dataSource = self
        tableView.delegate = self
        
        
        products.append(.init(price: 300.00, product: "Zapatos1", description: "Zapatos Azules", imageIdentifier: "zapato_azul"))
        products.append(.init(price: 200.00, product: "Zapatos2", description: "Zapatos Amarillos", imageIdentifier: "zapato_amarillo"))
        products.append(.init(price: 100.00, product: "Zapatos3", description: "Zapatos Rojos", imageIdentifier: "zapato_rojo"))
        products.append(.init(price: 400.00, product: "Zapatos4", description: "Zapatos Verdes", imageIdentifier: "zapato_verde"))
        
    }

    override func viewWillAppear(_ animated: Bool) {
        print("willAppear")
        if total == nil {
            print("total = 0")
        }else{
        let totalPrice = total!.description
        lblTotal.text = "$\(totalPrice)"
        }
    }
    
    
    func receivedData(data: String){
        
        print(data)
        
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return products.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! CeldaTableViewCell
        
        cell.lblText.text = products[indexPath.row].product
        cell.lblPrice.text = "$\(products[indexPath.row].price ?? 0.00)"
        cell.imageViewProduct.image = UIImage(named: products[indexPath.row].imageIdentifier!)
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60.0
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("\(products[indexPath.row])")

        performSegue(withIdentifier: "segueToDescription", sender: nil)
        
        
    }

    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "segueToDescription"{
        let descriptionViewController = segue.destination as! DescriptionViewController
            
            descriptionViewController.price = products[(tableView.indexPathsForSelectedRows?.first!.item)!].price

            descriptionViewController.descriptionProduct = products[(tableView.indexPathsForSelectedRows?.first!.item)!].description
            
            descriptionViewController.titleProduct = products[(tableView.indexPathsForSelectedRows?.first!.item)!].product
            descriptionViewController.imageIdentifier = products[(tableView.indexPathsForSelectedRows?.first!.item)!].imageIdentifier
        }
    }
    
}



