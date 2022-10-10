import Foundation

struct Rank { // Rank 자체를 비교하고 계산할 수 있다면 좋겠다. 그러면 Square자체에서 해결가능
  let value: Int
  private var range = 0..<Constants.length
  
  init(value: Character) throws {
    if let intValue = value.wholeNumberValue,
       range ~= intValue - 1 {
      self.value = intValue - 1
    } else {
      throw ChessError.invalidRank
    }
  }
}
