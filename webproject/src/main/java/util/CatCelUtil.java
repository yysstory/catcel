package util;

public class CatCelUtil {

	public static int wonToInt(String won){
		return Integer.parseInt(won.trim().replaceAll(",","").replaceAll("₩",""));
	}
}
