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
    func showAllSubject() {
        if allSubject != [:] {
            var result: Int = 0
            print("วิชาที่คุณได้ลงทะเบียนแล้ว")
            for (subject, credit) in allSubject {
                print("วิชา \(subject) หน่วยกิต \(credit)")
            }
            for (_, credit) in allSubject {
                result += credit
            }
            print("หน่วยกิตทั้งหมด คือ \(result)")
        } else {
            print("คุณยังไม่ได้ลงทะเบียนในรายวิชา")
        }
    }
}
class Student: University {
    let grade: Double
    init(grade: Double) {
        self.grade = grade
    }
    func addSubject(subject: String, credit: Int) {
        var result: Int = 0
        if grade < 2.00 {
            allSubject[subject] = credit
            for (_, credit) in allSubject {
                result += credit
            }
            if result > 25 {
                allSubject.removeValue(forKey: subject)
                print("หน่วยกิตคุณมีไม่พอที่จะเพิ่มรายวิชานี้")
            } else {
                print("เพิ่มรายวิชาสำเร็จ")
            }
        } else {
            allSubject[subject] = credit
            for (_, credit) in allSubject {
                result += credit
            }
            if result > 35 {
                allSubject.removeValue(forKey: subject)
                print("หน่วยกิตคุณมีไม่พอที่จะเพิ่มรายวิชานี้")
            } else {
                print("เพิ่มรายวิชาสำเร็จ")
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
