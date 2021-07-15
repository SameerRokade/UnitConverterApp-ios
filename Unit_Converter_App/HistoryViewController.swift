//
//  HistoryViewController.swift
//  Unit_Converter_App
//
//  Created by Sameer Rokade on 09/03/2021.
//

import UIKit

class HistoryViewController: UIViewController {
    
   
    
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    //setting the label text according to the segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "weightSegue"{
            let nameVC: HistoryDetailsViewController = segue.destination as! HistoryDetailsViewController
            nameVC.conversionName = "Weight"
        }else if segue.identifier == "tempSegue"{
            let nameVC: HistoryDetailsViewController = segue.destination as! HistoryDetailsViewController
            nameVC.conversionName = "Temperature"
        }else if segue.identifier == "volumeSegue"{
            let nameVC: HistoryDetailsViewController = segue.destination as! HistoryDetailsViewController
            nameVC.conversionName = "Volume"
        }else if segue.identifier == "lengthSegue"{
            let nameVC: HistoryDetailsViewController = segue.destination as! HistoryDetailsViewController
            nameVC.conversionName = "Length"
        }else if segue.identifier == "speedSegue"{
            let nameVC: HistoryDetailsViewController = segue.destination as! HistoryDetailsViewController
            nameVC.conversionName = "Speed"
        }
    }

    
    
    
    
    
    
  

}
