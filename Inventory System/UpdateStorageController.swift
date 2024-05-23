//
//  UpdateStorageController.swift
//  Inventory System
//
//  Created by tran thu on 21/05/2024.
//

import UIKit

class UpdateStorageController: UIViewController,UIImagePickerControllerDelegate, UINavigationControllerDelegate,UITabBarControllerDelegate,UITextFieldDelegate {

    // MARK: Properties
    @IBOutlet weak var navigation: UINavigationItem!
    @IBOutlet weak var productImage: UIImageView!
    // Textfields
    @IBOutlet weak var productName: UITextField!
    @IBOutlet weak var cost: UITextField!
    @IBOutlet weak var profit: UITextField!
    @IBOutlet weak var quantity: UITextField!
    @IBOutlet weak var price: UITextField!
    
    @IBAction func stepper(_ sender: UIStepper) {
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        productName.delegate = self
        cost.delegate = self
        profit.delegate = self
        quantity.delegate = self
        price.delegate = self
    }
    
    
    @IBAction func imagePicker(_ sender: UITapGestureRecognizer) {
       
        // Tao doi tuong UIImagePickerController
        let imagePicker = UIImagePickerController()
        // Cau hinh cho doi tuong ImagePicker
        imagePicker.sourceType = .photoLibrary
        
        // Theo cach 2 uy quyen cho imagePicker truoc khi chuyen man hinh
        imagePicker.delegate = self
        
        // Chuyen man hinh sang man hinh picker
        present(imagePicker, animated : true)
        
    }
    // MARK: Dinh nghia ham uy quyen text field
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        switch textField {
        case productName:
            productName.resignFirstResponder()
        case cost:
            cost.resignFirstResponder()
        case profit:
            profit.resignFirstResponder()
        case price:
            price.resignFirstResponder()
        case quantity:
            quantity.resignFirstResponder()
        default:
            print("Error!")
        }        
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField, reason: UITextField.DidEndEditingReason) {

    }
    // MARK: Dinh nghia ham uy quyen picker image
    // Ham uy quyen cua ImagePickerController
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        if let img = info[.originalImage] {
            // Ep kieu va doi anh
            productImage.image = img as? UIImage
        }
        dismiss(animated: true)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation

    */

    
    @IBAction func cancel(_ sender: UIBarButtonItem) {
        print("cancel called")
        dismiss(animated: true, completion: nil)
    }
    @IBAction func save(_ sender: UIBarButtonItem) {
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }
}
