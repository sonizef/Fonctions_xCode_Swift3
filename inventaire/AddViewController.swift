//
//  AddViewController.swift
//  inventaire
//
//  Created by Joris ZEFIRINI on 21/11/2016.
//  Copyright © 2016 SoniWeb. All rights reserved.
//

import UIKit
import CoreData

func getContext () -> NSManagedObjectContext {
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    return appDelegate.persistentContainer.viewContext
}

func refreshItemList(){
    let fetchRequest: NSFetchRequest<Item> = Item.fetchRequest()
    
    do {
        let searchResults = try getContext().fetch(fetchRequest)
        myItems.removeAll()
        
        for i in searchResults as [NSManagedObject] {
            let name = i.value(forKey: "name") as! String
            let age = i.value(forKey: "age") as! Int
            
            myItems.append(Items(lename: name, leage: age))
        }
        
    } catch {
        print("Error when refresh request: \(error)")
    }

}

func deleteItem(itemTag: Int){
    let fetchRequest: NSFetchRequest<Item> = Item.fetchRequest()
    
    do {
        let searchResults = try getContext().fetch(fetchRequest)
        
        getContext().delete(searchResults[itemTag])
        
        refreshItemList()
        
    } catch {
        print("Error when delete request: \(error)")
    }
    
    do {
        try getContext().save()
    } catch let error as NSError  {
        print("Could not save \(error), \(error.userInfo)")
    } catch {
        
    }

    
}


func addItem(name: String) {
    
    let context = getContext()
    //retrieve the entity that we just created
    
    let item =  NSEntityDescription.entity(forEntityName: "Item", in: context)
    
    let transc = NSManagedObject(entity: item!, insertInto: context)
    
    //set the entity values
    transc.setValue(name, forKey: "name")
    
    do {
        try context.save()
    } catch let error as NSError  {
        print("Could not save \(error), \(error.userInfo)")
    } catch {
        
    }
    
    refreshItemList()
    
}

var myItems: [Items] = []

class AddViewController: UIViewController {

    @IBOutlet weak var txt_item: UITextField!
    @IBOutlet weak var btn_add: UIButton!
    @IBOutlet weak var lbl_lastItem: UILabel!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        refreshItemList()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        lbl_lastItem.text = myItems.last?.getNom()
    }
    
    @IBAction func addItemBtn(_ sender: Any) {
        let itemName = txt_item.text
        
        addItem(name: itemName!)
        lbl_lastItem.text = myItems.last?.getNom()
        
        txt_item.text = ""
        txt_item.resignFirstResponder()
    
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
