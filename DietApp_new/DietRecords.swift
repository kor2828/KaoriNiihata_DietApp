//
//  DietRecords.swift
//  DietApp_new
//
//  Created by jinikuadmin on 2017/03/08.
//  Copyright © 2017年 jinikuadmin. All rights reserved.
//

import UIKit

class DietRecords: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //テーブルビューを作る
        let DietRecord = UITableView(frame: view.frame, style: .grouped)
        //テーブルビューのデリゲートを設定する
        DietRecord.delegate = self
        //テーブルビューのデータソースを設定する
        DietRecord.dataSource = self
        //テーブルビューを表示する
        view.addSubview(DietRecord)
        
    }
    /*セクションのタイトル（日付にする）*/
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "yyyy/MM/dd"
    }
    /*セクションごとの行数を表示*/
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    /*各行に表示するセルに文字を設定する*/
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell=UITableViewCell(style: .subtitle, reuseIdentifier: "cell")
        cell.textLabel?.text = "◯kg"
        if(indexPath.row==0) {
            cell.detailTextLabel?.text="体重"
        }else {
            cell.detailTextLabel?.text="体脂肪"
        }
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 100 //セクション数１００とする
    }
}
