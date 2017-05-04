package Tools;

import java.text.Normalizer;
import java.util.regex.Pattern;

public class UnsignURL {

	public static String ToUnsignString(String input) {
		input = input.trim();
		for (int i = 0x20; i < 0x30; i++) {
			input = input.replace(((char) i), ' ');
		}
		input = input.replace(".", "-");
		input = input.replace(" ", "-");
		input = input.replace(",", "-");
		input = input.replace(";", "-");
		input = input.replace(":", "-");
		input = input.replace("  ", "-");
		input = input.replace("<", "-");
		input = input.replace(">", "-");
		input = input.replace("@", "-");
		input = input.replace("!", "-");
		input = input.replace("#", "-");
		input = input.replace("*", "-");
		
		String temp = Normalizer.normalize(input, Normalizer.Form.NFD);
		Pattern pattern = Pattern.compile("\\p{InCombiningDiacriticalMarks}+");
		// Regex regex = new Regex("\\p{IsCombiningDiacriticalMarks}+");
		// String str = Normalizer.normalize(input, Normalizer.Form.NFD);
		String str2 = pattern.matcher(temp).replaceAll("").toLowerCase().replaceAll(" ", "-").replaceAll("đ", "d")
				.replaceAll("Đ", "D");

		while (str2.indexOf("?") >= 0) {
			str2 = str2.substring(str2.indexOf("?"), 1);
		}
		while (str2.contains("--")) {
			str2 = str2.replace("--", "-").toLowerCase();
		}

		return str2;
	}
}
