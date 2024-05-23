//
//  UpdateImportExportController.swift
//  Inventory System
//
//  Created by tran thu on 23/05/2024.
//

import UIKit

class UpdateImportExportController: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var navigation: UINavigationItem!
    @IBOutlet weak var cost: UITextField!
    @IBOutlet weak var quantity: UITextField!
    @IBOutlet weak var labelID: UILabel!
    @IBOutlet weak var labelName: UILabel!
    //Bien product dung de truyen tham so giua 2 man hinh
        var product:Product?
        var import_export:ImportExport?
    override func viewDidLoad() {
        super.viewDidLoad()
        quantity.delegate = self
        cost.delegate = self
        labelID.text = "\(product!.id)"
        labelName.text = "\(product!.name)"
          // Do any additional setup after loading the view.
    }
    
    // MARK: Dinh nghia ham uy quyen text field
func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    switch textField {
    case quantity:
        quantity.resignFirstResponder()
    case cost:
        cost.resignFirstResponder()
    default:
        print("Error!")
    }
    return true
}
    
    // MARK: - Navigation
    @IBAction func cancel(_ sender: UIBarButtonItem) {
        
        dismiss(animated: true, completion: nil)
    }
    @IBAction func save(_ sender: UIBarButtonItem) {
        
        
    }
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Lấy thời gian hiện tại
        let currentDate = Date()
        //tao doi tuong khi có các field khác rỗng
        if let quantity = quantity.text
            ,let cost = cost.text, let product = product{
            if !quantity.isEmpty && !cost.isEmpty{
                import_export = ImportExport(productID: product.id, quantity: Int(quantity)!, cost: Double(cost)!, date: currentDate)
            }
            
        }
    }
    

}
