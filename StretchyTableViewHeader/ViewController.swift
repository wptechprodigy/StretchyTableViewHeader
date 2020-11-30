//
//  ViewController.swift
//  StretchyTableViewHeader
//
//  Created by waheedCodes on 30/11/2020.
//

import UIKit

class ViewController: UIViewController {
    
    private let tableView: UITableView = {
        let tableView = UITableView()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        return tableView
    }()
    
    let models = [
        "Lagos",
        "Oyo",
        "Ogun",
        "Kwara",
        "Awka",
        "Jalingo",
        "Anambra",
        "Abia",
        "Zamfara",
        "Enugu",
        "Imo",
        "Adamawa",
        "Delta",
        "Rivers",
        "Cross River",
        "Maiduguri",
        "Calabar",
        "Akwa Ibom",
        "Kano",
        "Kaduna",
        "Katsina",
        "Abuja",
        "Sokoto"
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(tableView)
        tableView.dataSource = self
        tableView.delegate = self
        tableView.frame = view.bounds
        
        let header = StretcyTableHeaderView(frame: CGRect(x: 0,
                                                          y: 0,
                                                          width: view.frame.size.width,
                                                          height: view.frame.size.width))
        header.imageView.image = UIImage(named: "Image")
        tableView.tableHeaderView = header
    }

}

extension ViewController: UITableViewDelegate {
    
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView,
                   numberOfRowsInSection section: Int) -> Int {
        return models.count
    }
    
    func tableView(_ tableView: UITableView,
                   cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell",
                                                 for: indexPath)
        cell.textLabel?.text = models[indexPath.row]
        return cell
    }
}
