//
//  ViewController.swift
//  enums
//
//  Created by Acxiom Consulting on 06/09/21.
//

import UIKit

enum College {
    case studentName
    case collegeName
    case id
}
enum CollegeType : String {
    case studentName = "Yogesh"
    case collegeName = "Sal College"
    case id = "1"
}
enum CollegeFunc{
    case studentName
    case CollegeName
    case id
    
    func description () -> String {
        switch self {
        case .studentName:
            return "Ny Name is Modi"
        case .CollegeName :
            return "Sal College"
        case .id :
            return "1"
       }
    }
}
enum Gender {
    case Male,Female
}
enum Student {
    case studentName(String)
    case marks(String,String,String)
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        withoutType()
        withType()
        let collfunDetail = CollegeFunc.studentName.description()
        print(collfunDetail)
        withFunArguments()
    }
    //MARK:- WITHOUT TYPE
    func withoutType(){
        let collegeDetail = College.studentName

        switch collegeDetail {
        case .collegeName:
            print("IIT")
        case .id :
            print("123")
        case .studentName :
            print("Modi")
        }
    }
    //MARK:- WITH TYPE
    func withType(){
        let collegeTypeDetail = CollegeType.collegeName
        print(collegeTypeDetail)
        let collegeTypeRaw = CollegeType.collegeName.rawValue
        print(collegeTypeRaw)
        let collegeHashValue = CollegeType.collegeName.hashValue
        print(collegeHashValue)
    }
    //MARK:- WITH ARGUMENT FUNCTION
    func withFunArguments(){
        let stuName = Student.studentName("Yogesh")
        let stuMarks = Student.marks("12", "13", "14")
        
        switch stuMarks {
        case .studentName(let strName):
            print("My Name is \(strName)")
        case .marks(let m1,let m2,let m3):
            print("My marks is \(m1) \(m2) \(m3)")
        }
    }
}

