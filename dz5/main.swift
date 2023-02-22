//
//  main.swift
//  dz5
//
//  Created by imran on 18.02.2023.
//

import Foundation

class DataBase{
    var users:[User] = [User(name: "Imran", lastname: "Gabbazov",code: .kyrgyzstan, phoneNumber: "507585588"), User(name: "Natan", lastname: "Karasaev", code: .usa, phoneNumber: "4435195193181"),User(name: "Meerim", lastname: "Mamat", code: .russia, phoneNumber: "702460901")]
    func ShowInfo()->(){
        print("Kyrgyz users:")
        for user in users{
            if user.code == .kyrgyzstan{
                print("Name:\(user.name), Lastname:\(user.lastname), phone number:\(user.code.rawValue)\(user.phoneNumber)")
            }
        }
        print("Russian users:")
        for user in users{
            if user.code == .russia{
                print("Name:\(user.name), Lastname:\(user.lastname), phone number:\(user.code.rawValue)\(user.phoneNumber)")
            }
        }
        print("USA users:")
        for user in users{
            if user.code == .usa{
                print("Name:\(user.name), Lastname:\(user.lastname), phone number:\(user.code.rawValue)\(user.phoneNumber)")
            }
        }
    }
    func NewUser()->(){
        for _ in 1...5{
            print("Enter Name:")
            let name = readLine()!
            print("Enter Lastname")
            let lastname = readLine()!
            print("Enter your country (Kyrgyzstan, USA, Russia):")
            let country = readLine()!
            var countrycode: CountryCode = .kyrgyzstan
            if country == "Kyrgyzstan"{
                countrycode = .kyrgyzstan
            }else if country == "USA"{
                countrycode = .usa
            }else if country == "Russia"{
                countrycode = .russia
            }
            print("Enter your Phone Number")
            let number = readLine()!
            users.append(User(name: name, lastname: lastname, code: countrycode, phoneNumber: number))
            print("Name:\(name), Lastname:\(lastname), phone number:\(countrycode.rawValue)\(number)")
        }
    }
}

var database = DataBase()
database.ShowInfo()
database.NewUser()
database.ShowInfo()
