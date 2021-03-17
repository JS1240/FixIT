//
//  ViewController.swift
//  FIXIT.CO
//
//  Created by Jure Šunić on 11/03/2021.
//
import FirebaseAuth
import UIKit

class ResultsVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
    }
}

class HomeViewController: UIViewController, UISearchResultsUpdating {

    let searchController = UISearchController(searchResultsController: ResultsVC())
    
    private let tableView: UITableView = {
        let tableView = UITableView()
        tableView.register(FixJobsTableViewCell.self,
                           forCellReuseIdentifier: FixJobsTableViewCell.identifier)
        return tableView
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Home"
        searchController.searchResultsUpdater = self
        navigationItem.searchController = searchController
        view.addSubview(tableView)
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func updateSearchResults(for searchController: UISearchController) {
        guard let text = searchController.searchBar.text else {
            return
        }
        let vc = searchController.searchResultsController as? ResultsVC
        vc?.view.backgroundColor = .systemBackground
        print(text)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.frame = view.bounds
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        handleNotAuthenticated()
    }
    
    private func handleNotAuthenticated(){
        //Check auth status
        if Auth.auth().currentUser == nil{
            //Show log in
            let loginVC = LoginViewController()
            loginVC.modalPresentationStyle = .fullScreen  //that way user cant swipe it away
            present(loginVC, animated: false )
        }
    }
}

extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: FixJobsTableViewCell.identifier, for: indexPath) as! FixJobsTableViewCell
        
        return cell
    }
}
