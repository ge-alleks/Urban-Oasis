object UrbanOasis {
  
  // constant value declarations
  val MAX_NUMBER_OF_PALM_TREES = 10
  val MAX_NUMBER_OF_FLOWERS = 50
  val MIN_NUMBER_OF_BUSHES = 5
  
  // initializing variables
  var numberOfPalmTrees = 0
  var numberOfFlowers = 0
  var numberOfBushes = 0
  
  // function declarations
  def getNumberOfPalmTrees(): Int = {
    return numberOfPalmTrees
  }
  
  def getNumberOfFlowers(): Int = {
    return numberOfFlowers
  }
  
  def getNumberOfBushes(): Int = {
    return numberOfBushes
  }
  
  def setNumberOfPalmTrees(newNumberOfPalmTrees: Int): Boolean = {
    if (newNumberOfPalmTrees > MAX_NUMBER_OF_PALM_TREES) {
      println("Error: Number of palm trees cannot exceed " + MAX_NUMBER_OF_PALM_TREES + "!")
      return false
    }
    numberOfPalmTrees = newNumberOfPalmTrees
    return true
  }
  
  def setNumberOfFlowers(newNumberOfFlowers: Int): Boolean = {
    if (newNumberOfFlowers > MAX_NUMBER_OF_FLOWERS) {
      println("Error: Number of flowers cannot exceed " + MAX_NUMBER_OF_FLOWERS + "!")
      return false
    }
    numberOfFlowers = newNumberOfFlowers
    return true
  }
  
  def setNumberOfBushes(newNumberOfBushes: Int): Boolean = {
    if (newNumberOfBushes < MIN_NUMBER_OF_BUSHES) {
      println("Error: Number of bushes must be at least " + MIN_NUMBER_OF_BUSHES + "!")
      return false
    }
    numberOfBushes = newNumberOfBushes
    return true
  }
  
  def printUrbanOasis(): Unit = {
    println("Number of palm trees: " + numberOfPalmTrees)
    println("Number of flowers: " + numberOfFlowers)
    println("Number of bushes: " + numberOfBushes)
  }
  
  def main(args: Array[String]): Unit = {
    if (setNumberOfPalmTrees(5) && setNumberOfFlowers(25) && setNumberOfBushes(20)) {
      printUrbanOasis()
    }
  }
}