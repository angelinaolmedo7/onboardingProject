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

                let selectedItem = self.boxItems[indexPath.row]
    //             let habitDetailVC = HabitDetailViewController.instantiate()
    //             habitDetailVC.habit = selectedHabit
    //             habitDetailVC.habitIndex = indexPath.row
    //             navigationController?.pushViewController(habitDetailVC, animated: true)
            }
            
            override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
                return boxItems.count
            }

            override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
              let cell = tableView.dequeueReusableCell( withIdentifier: ItemTableViewCell.identifier, for: indexPath) as! ItemTableViewCell
              let content = boxItems[indexPath.row]
              cell.configure(content)
              return cell
            }
            
            override func viewWillAppear(_ animated: Bool) {
                super.viewWillAppear(animated)

                tableView.reloadData()
            }
}
