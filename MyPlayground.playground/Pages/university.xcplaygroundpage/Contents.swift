import UIKit
import Foundation


class University {
    internal var allSubject: [String: Int]
    init(subject: [String: Int] = [:]) {
        self.allSubject = subject
    }
    func remove(subject: String) {
        allSubject[subject] = nil
    }
    func showAllSubject() -> String {
        if allSubject != [:] {
            var result: Int = 0
            for (subject, credit) in allSubject {
                return "วิชา \(subject) หน่วยกิต \(credit)"
            }
            for (_, credit) in allSubject {
                result += credit
            }
            return "หน่วยกิตทั้งหมด คือ \(result)"
        } else {
            return "คุณยังไม่ได้ลงทะเบียนในรายวิชา"
        }
    }
}
class Student: University {
    let grade: Double
    init(grade: Double) {
        self.grade = grade
    }
    func addSubject(subject: String, credit: Int) -> String {
        var result: Int = 0
        if grade < 2.00 {
            allSubject[subject] = credit
            for (_, credit) in allSubject {
                result += credit
            }
            if result > 25 {
                allSubject.removeValue(forKey: subject)
                return "หน่วยกิตคุณมีไม่พอที่จะเพิ่มรายวิชานี้"
            } else {
                return "เพิ่มรายวิชาสำเร็จ"
            }
        } else {
            allSubject[subject] = credit
            for (_, credit) in allSubject {
                result += credit
            }
            if result > 35 {
                allSubject.removeValue(forKey: subject)
                return "หน่วยกิตคุณมีไม่พอที่จะเพิ่มรายวิชานี้"
            } else {
                return "เพิ่มรายวิชาสำเร็จ"
            }
        }
    }
}
var student1 = Student(grade: 2.00)
student1.addSubject(subject: "asdf", credit: 20)
student1.addSubject(subject: "fsffd", credit: 5)
student1.addSubject(subject: "dsf", credit: 100)
student1.addSubject(subject: "dddfsf", credit: 1)
var student2 = Student(grade: 1.99)
student2.addSubject(subject: "wef", credit: 23)
student2.addSubject(subject: "dsfa", credit: 5)
student1.showAllSubject()
student2.showAllSubject()
var student3 = Student(grade: 4.00)
student3.showAllSubject()
