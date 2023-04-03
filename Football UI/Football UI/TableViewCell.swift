//
//  TableViewCell.swift
//  Football UI
//
//  Created by Yogesh Tekwani on 4/1/23.
//

import UIKit

class TableViewCell: UITableViewCell {

var horizontalStack1:UIStackView = {
       
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.distribution = .fill
        stack.alignment = .fill
        //stack.spacing = 20
        return stack
    }()

var horizontalStack2:UIStackView = {
   
    let stack = UIStackView()
    stack.axis = .horizontal
    stack.distribution = .fill
    stack.alignment = .fill
    //stack.spacing = 20
    return stack
}()

var horizontalStack3:UIStackView = {
   
    let stack = UIStackView()
    stack.axis = .horizontal
    stack.distribution = .fill
    stack.alignment = .fill
    //stack.spacing = 20
    return stack
}()

    var verticalStack:UIStackView = {
       
        let stack = UIStackView()
        stack.axis = .vertical
        stack.distribution = .fill
        stack.alignment = .fill
        //stack.spacing = 20
        return stack
    }()
    


var imageView2 : UIImageView = {
        let imageView = UIImageView()
    imageView.image = UIImage(systemName: "circle")
        return imageView
    }()

var imageView3 : UIImageView = {
        let imageView = UIImageView()
    imageView.image = UIImage(systemName: "circle")
        return imageView
    }()



var label2:UILabel = {
    let label = UILabel()
    label.adjustsFontSizeToFitWidth = true
    label.font = UIFont.systemFont(ofSize: 20)
    label.text = "Real Madrid"
    return label
}()

var label3:UILabel = {
    let label = UILabel()
    label.adjustsFontSizeToFitWidth = true
    label.font = UIFont.systemFont(ofSize: 20)
    label.text = "3 - 0"
    return label
}()

var label4:UILabel = {
    let label = UILabel()
    label.adjustsFontSizeToFitWidth = true
    label.font = UIFont.systemFont(ofSize: 20)
    label.text = "Mar 31"
    return label
}()

var label5:UILabel = {
    let label = UILabel()
    label.adjustsFontSizeToFitWidth = true
    label.font = UIFont.systemFont(ofSize: 20)
    label.text = "FC Barcelona"
    return label
}()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        horizontalStack2.addArrangedSubview(label2)
        horizontalStack2.addArrangedSubview(imageView2)
        
        verticalStack.addArrangedSubview(label3)
        verticalStack.addArrangedSubview(label4)
        
        horizontalStack3.addArrangedSubview(imageView3)
        horizontalStack3.addArrangedSubview(label5)
        
        horizontalStack1.addArrangedSubview(horizontalStack2)
        horizontalStack1.addArrangedSubview(verticalStack)
        horizontalStack1.addArrangedSubview(horizontalStack3)
        
        self.contentView.addSubview(horizontalStack1)
        
        horizontalStack1.translatesAutoresizingMaskIntoConstraints = false
        imageView2.translatesAutoresizingMaskIntoConstraints = false
        imageView3.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            horizontalStack1.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
            horizontalStack1.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10),
            horizontalStack1.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            horizontalStack1.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            imageView2.heightAnchor.constraint(equalToConstant: 20),
            imageView3.heightAnchor.constraint(equalToConstant: 20)
            
        ])
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
