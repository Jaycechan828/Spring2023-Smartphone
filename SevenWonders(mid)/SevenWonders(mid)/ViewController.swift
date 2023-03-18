//
//  ViewController.swift
//  SevenWonders(mid)
//
//  Created by 陈宜航 on 3/18/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    let arr = ["Chichen Itza","Christ the Redeemer","Great Wall","Machu Picchu","Petra", "Taj Mahal","The Colosseum"]
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell { let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        
        cell.imageContainer.image = UIImage(named: arr[indexPath.row])
        cell.lblImage.text = arr[indexPath.row]
        return cell
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

