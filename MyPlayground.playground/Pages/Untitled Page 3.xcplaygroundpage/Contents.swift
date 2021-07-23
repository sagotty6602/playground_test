class Subject {
    var credit: Int
    init(credit: Int) {
        self.credit = credit
    }
}

class Math: Subject{
    var name: String
    init(name: String, credit: Int) {
        self.name = name
        super.init(credit: credit)
    }
}

class Science: Subject {
    var name: String
    init(name: String, credit: Int) {
        self.name = name
        super.init(credit: credit)
    }
}
class Art: Subject {
    var name: String
    init(name: String, credit: Int) {
        self.name = name
        super.init(credit: credit)
    }
}

class Student {
    var grade: Double
    var credits: Int
    var allSubject: [String: Int] = [:]
    init(grade: Double) {
        self.grade = grade
        self.credits = grade < 2.00 ? 25: 35
    }
    func addSubject(name: String, credit: Int) -> [String: Int] {
        while credits >= credit {
            credits -= credit
            allSubject[name] = credit
        }
        return allSubject
    }
}

var student1 = Student(grade: 1.99)
student1.credits
var math = Math(name: "Math", credit: 10)
var science = Science(name: "Science", credit: 10)
var art =   Art(name: "Art", credit: 10)
student1.addSubject(name: math.name, credit: math.credit)
science.name
student1.addSubject(name: science.name, credit: science.credit)
