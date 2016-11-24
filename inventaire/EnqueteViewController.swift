//
//  EnqueteViewController.swift
//  inventaire
//
//  Created by Joris ZEFIRINI on 22/11/2016.
//  Copyright © 2016 SoniWeb. All rights reserved.
//

import UIKit

class EnqueteViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func finirEnquete(_ sender: Any) {
        var finish = false
        
        myItems.forEach { (Items) in
            if(Items.getNom() == "Briquet"){
                finish = true
            }
        }
        
        if(finish == true){
            let ac = UIAlertController(title: "L'enquete est fini !", message: "Félicitation tu as trouvé le briquet ...", preferredStyle: .alert)
            ac.addAction(UIAlertAction(title: "OK", style: .default))
            present(ac, animated: true)
            
            let newViewController = InventaireViewController()
            self.present(newViewController, animated: true, completion: nil)
            
        }
        else{
            let ac = UIAlertController(title: "L'enquete n'est pas fini !", message: "Il te manque des elements !", preferredStyle: .alert)
            ac.addAction(UIAlertAction(title: "OK", style: .default))
            present(ac, animated: true)
        }
        
        

        
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
