//
//  Database.swift
//  Inventory System
//
//  Created by tran thu on 22/05/2024.
//

import Foundation
import UIKit
import os.log

class Database {
    //MARK: Cac thoc tinh chung cua co so du lieu
    private let DB_NAME = "inventory.sqlite"
    private let DB_PATH:String?
    private let database:FMDatabase?
    
    
    //MARK: Cac thuoc tinh lien quan den bang du lieu
    //1.Product
    
    
    //MARK: Constructor
    init(){
        //Lay tat ca duong dan den cac thu muc doccument trong mot ung dung iOS
        let directories = NSSearchPathForDirectoriesInDomains(.documentDirectory, .allDomainsMask, true);
        //Khoi tao DB_PATH
        DB_PATH = directories[0] + "/" + DB_NAME
        //Khoi tao doi tuong database
        database = FMDatabase(path: DB_PATH)
        //Kiem tra su thanh cong cua database
        if database != nil {
            os_log("Tao CSDL thanh cong !")
            //Thuc hien tao bang du lieu
            

//            if open(){
//                if !database!.tableExists(PRODUCT_TABLE_NAME){
//                    let _ = createTable(sql: sql)
//                }
//            }
           
            
        }
        else{
            os_log("Tao CSDL that bai !")
        }
    }
    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    //MARK: Dinh nghia cac ham primitive cua CSDL
    ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    //1. Mo CSDL
    private func open()->Bool{
        var OK = false
        if let database = database {
            if database.open(){
                os_log("Mo CSDL thanh cong")
                OK = true
            }
            else{
                os_log("Mo CSDL that bai")
            }
        }
        
        return OK
    }
    //2. Dong CSDL
    private func close(){
        if let database = database {
            database.close()
        }
        
    }
    //3. Tao bang du lieu
    private func createTable(sql:String)->Bool{
        var OK = false
        if database!.executeStatements(sql){
            os_log("Tao bang thanh cong")
            OK = true
        }
        else{
            os_log("Tao bang that bai")
        }
        
        
        return OK
    }
    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    //MARK: Dinh nghia cac ham APIs cua CSDL
    ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    //1. them 1 meal vao CSDL
//    func insert(product:Product)->Bool{
//        var OK = false
//        if open(){
//            //Kiem tra su ton tai cua bang du lieu
//            if  database!.tableExists(PRODUCT_TABLE_NAME){
//                //Cau lenh sql de them du lieu vao CSDL
//                let sql = "INSERT INTO \(PRODUCT_TABLE_NAME) "
//                + "(\(PRODUCT_NAME),\(PRODUCT_IMAGE),\(PRODUCT_UNIT),\(PRODUCT_COST),\(PRODUCT_PROFIT),\(PRODUCT_PRICE),\(PRODUCT_QUANTITY)) VALUES (?,?,?,?,?,?,?)"
//                //Chuyen UIImage thanh chuoi
//                var strImage = ""
//                if let image = product.image{
//                    //B1. Chuyen anh thanh NSData
//                    let nsdataImage = image.pngData()! as NSData
//                    //B2. Chuyen nsdataImage thanh chuoi
//                    strImage = nsdataImage.base64EncodedString(options: .lineLength64Characters)
//                }
//                //Luu gia tri meal vao CSDL
//                if database!.executeUpdate(sql, withArgumentsIn: [product.name, strImage, product.unit, product.cost, product.profit,product.price,product.quantity]){
//                    os_log("Them du lieu thanh cong")
//                    OK = true
//                    //Dong co so du lieu
//                    close()
//                }
//                else{
//                    os_log("Them du lieu that bai")
//                }
//            }
//            
//        }
//        return OK
//    }
}
