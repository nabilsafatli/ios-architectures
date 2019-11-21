import UIKit

protocol CharacterServiceProtocol {
    func getCharacters(with completion:([Character]) -> Void)
}

final class CharactersService: CharacterServiceProtocol {
    func getCharacters(with completion: ([Character]) -> Void) {
        let characters = [Character]()
        completion(characters)
    }
}
