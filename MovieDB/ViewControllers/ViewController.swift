//
//  ViewController.swift
//  MovieDB
//
//  Created by Arystan on 23.07.2024.
//

import UIKit

class ViewController: UIViewController {

    lazy var movieLabel: UILabel = {
        let label = UILabel()
        label.text = "MovieDB"
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 36, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var movieTableView: UITableView = {
        let table = UITableView()
        table.dataSource = self
        table.delegate = self
        table.translatesAutoresizingMaskIntoConstraints = false
        return table
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        
        
    }

    func setupUI() {
        view.addSubview(movieLabel)
        view.addSubview(movieTableView)
        NSLayoutConstraint.activate([
            movieLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            movieLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            movieLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor)
            
        ])
    }

}
//MARK: TableViewDataSource and TableViewDelegate

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    
}
