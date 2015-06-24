package util;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import vo.LineGraph;

public class CatCelUtil {

	public static String wonToInt(String won) {
		return won.trim().replace(",", "").replace("₩", "").replace(".", "")
				.replace("원", "");
	}

	public static LineGraph nullToZero(LineGraph lineGraph) {
		if (lineGraph == null) {
			LineGraph lineGraph1 = new LineGraph();
			lineGraph1.setOrderCnt(0);
			lineGraph1.setStandardTime("0");
			lineGraph1.setSumMoney(0);
			lineGraph = lineGraph1;
		}
		return lineGraph;
	}

	public static String nowDate() {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd hh:mm:ss");
		return sdf.format(new Date());
	}

	public static String nowDay() {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");
		return sdf.format(new Date());
	}

	public static String nowDay2() {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		return sdf.format(new Date());
	}

	
	
	public static String nowWeekStart() {
		Calendar cal = Calendar.getInstance();
		cal.add(Calendar.DATE,-cal.get(Calendar.DAY_OF_WEEK)+1);
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");
		return sdf.format(cal.getTime());
	}

	
	public static String nowMonth() {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM");
		return sdf.format(new Date());
	}

	public static String nowYear() {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy");
		return sdf.format(new Date());
	}
}
