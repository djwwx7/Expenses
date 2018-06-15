//
//  ExpensesViewController.swift
//  Expenses
//
//  Created by Cody Whitaker on 6/8/18.
//  Copyright © 2018 Cody Whitaker. All rights reserved.
//

import UIKit

class ExpensesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var theExpenses = [Expenses]()
    
    var dateFormatter = DateFormatter()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        dateFormatter.dateFormat = "MMM d, yyyy HH:mm"
        
        if let date = dateFormatter.date(from: "June 1st, 2018 18:30"){
            theExpenses.append(Expenses(title: "Dinner", amount: 32.50, date: date))
        }
        
        if let date = dateFormatter.date(from: "May 30th, 2018 12:17"){
            theExpenses.append(Expenses(title: "Office Supplies", amount: 59.34, date: date))
        }
        
        if let date = dateFormatter.date(from: "May 30th, 2018 11:43"){
            theExpenses.append(Expenses(title: "Uber", amount: 16.23, date: date))
        }
        
        if let date = dateFormatter.date(from: "May 29th, 2018 8:45"){
            theExpenses.append(Expenses(title: "Coffee", amount: 3.95, date: date))
        }

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return theExpenses.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "expenseCell", for: indexPath)
        
        if let cell = cell as? ExpenseTableViewCell {
            
            let expense = theExpenses[indexPath.row]
        
            cell.titleLabel?.text = expense.title
            cell.amountLabel?.text = String(expense.amount)
            cell.dateLabel?.text = dateFormatter.string(from: expense.date)
        }
        
        return cell
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
