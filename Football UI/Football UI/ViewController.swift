//
//  ViewController.swift
//  Football UI
//
//  Created by Yogesh Tekwani on 4/1/23.
//

import UIKit

class ViewController: UIViewController {
    
    var tableView : UITableView = {
       let table = UITableView()
        return table
    }()
    
    var mainStack:UIStackView = {
           
            let stack = UIStackView()
            stack.axis = .vertical
            stack.distribution = .fill
            stack.alignment = .fill
            //stack.spacing = 20
            return stack
        }()
    
    var hStack:UIStackView = {
           
            let stack = UIStackView()
            stack.axis = .horizontal
            stack.distribution = .fill
            stack.alignment = .fill
            //stack.spacing = 20
            return stack
        }()
    
    var imageView1 : UIImageView = {
            let imageView = UIImageView(frame: CGRect(x: 10, y: 10, width: 10, height: 10))
        imageView.image = UIImage(systemName: "star.fill")

            return imageView
        }()
    
    var label1:UILabel = {
        let label = UILabel()
        label.adjustsFontSizeToFitWidth = true
        label.font = UIFont.systemFont(ofSize: 40)
        label.text = "Football Scores"
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.view.backgroundColor = .white
        
        
        hStack.addArrangedSubview(imageView1)
        hStack.addArrangedSubview(label1)
        mainStack.addArrangedSubview(hStack)
        mainStack.addArrangedSubview(tableView)
        
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.register(TableViewCell.self, forCellReuseIdentifier: "TableViewCell")
        
        
        self.view.addSubview(mainStack)
        
        mainStack.translatesAutoresizingMaskIntoConstraints = false
        imageView1.translatesAutoresizingMaskIntoConstraints = false
        hStack.translatesAutoresizingMaskIntoConstraints = false
        
        let safeArea = self.view.safeAreaLayoutGuide
        
        NSLayoutConstraint.activate([
            
            hStack.bottomAnchor.constraint(equalTo: mainStack.topAnchor, constant: 100),
            mainStack.topAnchor.constraint(equalTo: safeArea.topAnchor, constant: 10),
            mainStack.bottomAnchor.constraint(equalTo: safeArea.bottomAnchor, constant: -10),
            mainStack.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor, constant: 10),
            mainStack.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor, constant: -10),
            imageView1.heightAnchor.constraint(equalToConstant: 70)
            
        ])
        
        
    }
        
}

extension ViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
}

extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell") as? TableViewCell else {
            return UITableViewCell()
        }
        
        return cell
    }
    
    
}
