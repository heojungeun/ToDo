//
//  CompleteToDoViewController.swift
//  ToDo
//
//  Created by jung on 2020/01/08.
//  Copyright © 2020 jung. All rights reserved.
//

import UIKit

class CompleteToDoViewController: UIViewController {

    //var completeVC = ToDoTableViewController()
    var previousVC = ToDoTableViewController()
    var selectedToDo = ToDo()
    
    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        titleLabel.text = selectedToDo.name
        
    }
    

    @IBAction func completeTapped(_ sender: Any) {
        var index = 0
        for toDo in previousVC.toDos{
            if toDo.name == selectedToDo.name {
                previousVC.toDos.remove(at: index)
                previousVC.tableView.reloadData()
                navigationController?.popViewController(animated: true)
                break
            }
            index += 1
        }
    }
    
}
