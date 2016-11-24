//
//  InventaireViewController.swift
//  inventaire
//
//  Created by Joris ZEFIRINI on 21/11/2016.
//  Copyright © 2016 SoniWeb. All rights reserved.
//

import UIKit
import CoreData

class InventaireViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        refreshItemList()
        tableView.reloadData()
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.

    }

    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myItems.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ListeTableViewCell", for: indexPath) as! ListeTableViewCell
        
        let name = myItems[indexPath.row].getNom()
        let age = String(myItems[indexPath.row].getAge())
        
        cell.lbl_item.text = name
        cell.lbl_num.text = age
        cell.btn_delete.tag = indexPath.row
        
        return cell
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
