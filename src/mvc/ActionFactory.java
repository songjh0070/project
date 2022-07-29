package mvc;

public class ActionFactory { 	//싱글턴패턴.
	private static ActionFactory instance = new ActionFactory();
	private ActionFactory() { }
	public static ActionFactory getInstance() {
		return instance;
	}
	
	Action getAction(String command) {
		Action action = null;
		// action 객체를 생성.
		
		switch(command) {
		
			case "calculate":
				action = new CalculateAction();
				break;
				
			case "result":
				action = new ResultAction();
				break;
		}
		return action;
	}
	
}
