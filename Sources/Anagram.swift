//Solution goes in Sources
import Foundation

struct Anagram {
   
    let word: String
    
    init(word: String) {
        self.word = word.lowercased()
    }
    
    func match(_ input: [String]) -> [String] {
        var arr = [String]()
        for element in input {
            guard element.lowercased() != word else {continue}
            let matchWord = Array(element.lowercased().sorted())
            let checkWord = Array(word.sorted())
            if matchWord.elementsEqual(checkWord) {
                arr.append(element)
            }
        }
        return arr
    }

    
    
}
