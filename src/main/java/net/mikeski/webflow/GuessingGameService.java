package net.mikeski.webflow;

public class GuessingGameService {

  int minimum = 1;
  int maximum = 100;
	int targetNumber;

	public GuessingGameService(){
    targetNumber = random();
	}

	public GuessingGameService(int max, int min){
		minimum = min;
		maximum = max;
    targetNumber = random();
	}

	private int random(){
		return minimum + (int)(Math.random()*maximum);
	}

  public void newGame(){
    targetNumber = random();
  }

  public void guess(Guess g) throws Exception{
		System.out.println("Guess is " + g.guessedNumber + " and target is " + targetNumber);
    if (g.guessedNumber > targetNumber){
			System.out.println("Over");
      throw new OverException();
    } else if (g.guessedNumber < targetNumber){
			System.out.println("Under");
      throw new UnderException();
    }
		newGame();
  }
}

class OverException extends Exception{

}

class UnderException extends Exception{

}
