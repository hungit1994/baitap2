//
//  main.swift
//  baitap2
//
//  Created by User on 12/28/19.
//  Copyright © 2019 User. All rights reserved.
//

import Foundation

//bai3:
func kiemTraNamNhuan() {
    print("Nhap nam:")
    let year = Int(readLine()!)!

    
    if year % 100 == 0 {
        if year % 400 == 0 {
            print("\(year) la nam nhuan")
        } else{
            print("\(year) không la nam nhuan")
        }
    } else if year % 4 == 0 {
        print("\(year) la nam nhuan")
    } else{
        print("\(year) không la nam nhuan")
    }
}
//bai5:
func soLonThuHai(){
    let numbers: [Int] = [5, 3, 2, 7, 11, 1]

    var max1 = numbers[0]
    var max2 = numbers[0]

    for i in numbers{

        if max1 < i {  
            max2 = max1
            max1 = i
        } else if max2 < i && i < max1{
            max2 = i
        }


    }
    print("So lon thu 2: \(max2)")
}
//bai3 buoi2
func viTri(){
    let numbers = [5, 6, 0, 23, 9, 24]

    var viTriLeDauTien: Int = 0
    var viTriChanCuoiCung: Int = 0

    for i in 0..<numbers.count{
        if numbers[i] % 2 != 0 {
            viTriLeDauTien = i
            break
        }
    }

    for i in (0..<numbers.count).reversed(){
        if numbers[i] % 2 == 0{
            viTriChanCuoiCung = i
            break
        }
    }

    print("Vị trí lẻ đầu tiên: \(viTriLeDauTien)")
    print("Vị trí chẵn cuối cùng: \(viTriChanCuoiCung)")
}
