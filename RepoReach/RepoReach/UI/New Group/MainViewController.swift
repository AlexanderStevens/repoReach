//
//  MainViewController.swift
//  RepoReach
//
//  Created by One iota Sharp on 25/09/2018.
//  Copyright © 2018 AJSSolutions. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        navigationController?.title = "Repo"
        
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.separatorStyle = .none
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "1")
        tableView.register(RepoCell.self, forCellReuseIdentifier: "RepoCell")
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //TODO: Create Repo Cell
       let cell = tableView.dequeueReusableCell(withIdentifier: "1")!
        cell.selectionStyle = .none
        cell.textLabel?.text = "Hello World"
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailVC = RepoDetailViewController(nibName: "RepoDetailViewController", bundle:  nil)
        self.navigationController?.pushViewController(detailVC, animated: true)
    }
}
