//
//  ItemTableViewController.swift
//  onboardingProject
//
//  Created by Angelina Olmedo on 3/5/20.
//  Copyright © 2020 Angelina Olmedo. All rights reserved.
//

import UIKit

class ItemTableViewController: UITableViewController {
    
    var box : BoxContents?
    var boxItems : [(Item, Int)] = []
    
    var selectedPaths: [IndexPath?]? = [] {
        didSet {
            var indexPaths: [IndexPath] = []
            for selectedIndexPath in selectedPaths! {
                if let selectedIndexPath = selectedIndexPath {
                    indexPaths.append(selectedIndexPath)
                }
            }
            if let oldValue = oldValue {
                for deselectedPath in oldValue {
                    if !indexPaths.contains(deselectedPath!){
                        indexPaths.append(deselectedPath!)
                    }
                }
            }
            tableView.performBatchUpdates({
                self.tableView.reloadRows(at: indexPaths, with: .none)
            })
        }
    }
        
    override func viewDidLoad() {
        super.viewDidLoad()
        boxItems = box!.listByQuantity()
        tableView.register(
            ItemTableViewCell.nib,
            forCellReuseIdentifier: ItemTableViewCell.identifier
        )

        // Do any additional setup after loading the view.
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if selectedPaths!.contains(indexPath) {
            selectedPaths!.remove(at: selectedPaths!.firstIndex(of: indexPath)!)
        } else {
            selectedPaths!.append(indexPath)
        }
    }
            
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return boxItems.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell( withIdentifier: ItemTableViewCell.identifier, for: indexPath) as! ItemTableViewCell
        let content = boxItems[indexPath.row]
        cell.configure(content)
        if selectedPaths!.contains(indexPath){
            cell.setImage(image: UIImage(named: "star")!, withSelection: true)
        }
        else{
            cell.setImage(image: UIImage(named: "star")!, withSelection: false)
        }
        return cell
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }
}
