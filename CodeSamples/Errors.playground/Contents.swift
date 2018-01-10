import UIKit

// Error fundamentals

enum PasswordError: Error {
    case empty
    case short(minChars: Int)
    case obvious(message: String)
}

func encrypt(_ str: String, with password: String) throws -> String {
    if password == "12345" {
        throw PasswordError.obvious(message: "I have the same number on my luggage")
    } else if password.count < 5 {
        throw PasswordError.short(minChars: 5)
    } else if password.count < 8 {
        throw PasswordError.short(minChars: 8)
    }
    
    let encrypted = password + str + password
    return String(encrypted.reversed())
}

func testCatch() {
    do {
        let encrypted = try encrypt("secret information!", with: "12353")
        print(encrypted)
    } catch PasswordError.empty {
        print("You mast provide password")
    } catch PasswordError.short(let minChars) where minChars < 5 {
        print("We have a lax security policy: password must be at least \(minChars)")
    } catch PasswordError.short(let minChars) where minChars < 8 {
        print("We have a moderate security policy: passwords must be at least \(minChars)")
    } catch PasswordError.short(let minChars) {
        print("We have a serious security policy: passwords must be at least \(minChars)")
    } catch PasswordError.obvious(let message) {
        print("Your password is obvious: \(message)")
    } catch {
        print("Error")
    }
}

testCatch()
