import UIKit

class Doctor {
    var name: String
    var currentPatient: String
    private var prProperty = "hidden"
    private(set) var prProperty2 = "this property can be read"
    static let latinTitle = "Medicinae Doctor"
    
    init(name: String, currentPatient: String) {
        self.name = name
        self.currentPatient = currentPatient
    }
    
    func assignToPatient(_ name: String) {
        currentPatient = name
    }
    
    func performSurgery(isEmergency emergency: Bool) {
        if emergency {
            print("Ok, let's go!")
        } else {
            print("Please find a surgeon")
        }
    }
    
    static func quoteHippocraticOath() {
        print("I will prevent disease whenever I can, for prevention is preferable to cure.")
    }
}

class Surgeon: Doctor {
    var title: String
    
    init(name: String, title: String, currentPatient: String) {
        self.title = title
        super.init(name: name, currentPatient: currentPatient)
    }
    
    override func performSurgery(isEmergency emergency: Bool) {
        if emergency {
            print("Ok, let's go!")
        } else {
            print("I'll do it next")
        }
    }
    
    override func assignToPatient(_ name: String) {
        print(getJuniorDoctorDiagnosis())
        
        super.assignToPatient(name)
    }
    
    func getJuniorDoctorDiagnosis() -> String {
        return "He's dead, Jim"
    }
}

var availableDoctors = [Doctor]()
availableDoctors.append(Doctor(name: "Doc", currentPatient: "Pat"))
availableDoctors.append(Surgeon(name: "Sur", title: "Mr", currentPatient: "Pat"))
availableDoctors.append(Doctor(name: "Doc", currentPatient: "Pat"))

for doctor in availableDoctors {
    doctor.performSurgery(isEmergency: false)
}

// Using class properties and methods
Doctor.quoteHippocraticOath()
print(Doctor.latinTitle)
