//
//  ViewController.swift
//  TableExample1
//
//  Created by ShreeshaRao on 27/01/22.
//

import UIKit



class ViewController: UIViewController {
    
    var items = [Item]()
    var images = [ImageModel]()

    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        items = [Item(name: "Hello", image: UIImage.init(named: "image1")!),Item(name: "Hi", image: UIImage(named: "image2")!),Item(name: "Hello", image: UIImage.init(named: "image1")!),Item(name: "Hi", image: UIImage(named: "image2")!)]
        
        images = [ImageModel(image1: UIImage.init(named: "image3")!, image2: UIImage(named: "image4")!),ImageModel(image1: UIImage.init(named: "image3")!, image2: UIImage(named: "image4")!) ]
        
        tableView.dataSource = self
        tableView.delegate = self
        setUpUI()
        tableView.automaticallyAdjustsScrollIndicatorInsets = false
        tableView.sectionHeaderTopPadding = 0.0
        //tableView.contentInset = UIEdgeInsets(top: -22, left: 0, bottom: 0, right: 0)
        
    }
    
    func setUpUI() {
        
        tableView.register(UINib(nibName: TableHeaderView.Identifier, bundle: nil), forHeaderFooterViewReuseIdentifier: TableHeaderView.Identifier)
        tableView.register(UINib(nibName: TextTableViewCell.identifier, bundle: nil), forCellReuseIdentifier: TextTableViewCell.identifier)
        tableView.register(UINib(nibName: ImageTableViewCell.Identifier, bundle: nil), forCellReuseIdentifier: ImageTableViewCell.Identifier)
        tableView.register(UINib(nibName: FooterTableViewCell.Identifier, bundle: nil), forHeaderFooterViewReuseIdentifier: FooterTableViewCell.Identifier)
    }


}
extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 130.0
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40.0
    }
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 30.0
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        if let headerView = tableView.dequeueReusableHeaderFooterView(withIdentifier: TableHeaderView.Identifier) as? TableHeaderView , items.count>1 {
            
            if section == 0 {
                headerView.headerLabel.text =  "Header1"
                headerView.contentView.backgroundColor = .cyan
                
                return headerView
            } else if section == 1 {
                headerView.headerLabel.text = "Header2"
                headerView.contentView.backgroundColor = .gray
                
                return headerView
            }
            
        }
        
        return UIView()
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        if let footerView = tableView.dequeueReusableHeaderFooterView(withIdentifier: FooterTableViewCell.Identifier) as? FooterTableViewCell , items.count > 1 {
            
            if section == 0 {
                footerView.footerLabel.text = "Footer1"
                footerView.contentView.backgroundColor = .green
                return footerView
            } else if section == 1 {
                footerView.footerLabel.text = "Footer2"
                footerView.contentView.backgroundColor = .brown
                return footerView
            }
        }
        return UIView()
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return items.count
        }
        else if section == 1 {
            return images.count
        }
        else {
            return 1
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print(indexPath.row)
        if indexPath.section == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: TextTableViewCell.identifier, for: indexPath) as! TextTableViewCell
            
            cell.txtLabel.text = items[indexPath.row].name
            cell.imgLabel.image = items[indexPath.row].image
            cell.backgroundColor = .red
            return cell
        }
        else if indexPath.section == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: ImageTableViewCell.Identifier, for: indexPath) as! ImageTableViewCell
            print(indexPath.row)
            cell.image1View.image = images[indexPath.row].image1
            cell.image2View.image = images[indexPath.row].image2
            return cell
        }
        else {
            return UITableViewCell()
        }
    }
    
}

