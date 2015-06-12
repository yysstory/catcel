package util;

import java.text.SimpleDateFormat;
import java.util.Date;

public class CatCelUtil {

	public static String wonToInt(String won){
		return won.trim().replace(",","").replace("₩","").replace(".","").replace("원","");
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
