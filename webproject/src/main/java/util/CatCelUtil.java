package util;

import java.text.SimpleDateFormat;
import java.util.Date;

public class CatCelUtil {

	public static int wonToInt(String won){
		return Integer.parseInt(won.trim().replaceAll(",","").replaceAll("₩",""));
	}
	
	public static String nowDate(){
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd hh:mm:ss");
	return sdf.format(new Date());
	}
	public static String nowDay(){
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");
	return sdf.format(new Date());
	}
	public static String nowDay2(){
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	return sdf.format(new Date());
	}
	public static String nowMonth(){
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM");
	return sdf.format(new Date());
	}
	public static String nowYear(){
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy");
	return sdf.format(new Date());
	}
}
