//
//  ViewController.swift
//  MyAPI
//
//  Created by user231854 on 2/3/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    
    
        override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
   
    @IBAction func btnDisney(_ sender: UIButton) {
        Task{
            do{
                let result = try! await API_Helper.fetchDisneyData()
                print(result)
            }catch let er{
                print("Error occured: \(er)")
            }
        }
    }
    
    @IBAction func btnSpacexData(_ sender: UIButton) {
        Task{
            do{
                let result = try! await API_Helper.fetchSpacexData()
                print(result)
            }catch let er{
                print("Error occured: \(er)")
            }
        }
    }
    
    
    @IBAction func btnNobelPrize(_ sender: Any) {
        Task{
            do{
                let result = try! await API_Helper.fetchNobelPrizeData()
                print(result)
            }catch let er{
                print("Error occured: \(er)")
            }
        }
    }
    
}
        



