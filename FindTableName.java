package con;
public class FindTableName {

    public static String tableName(String input) {
        String fromKeyword = "from";
        int fromIndex = input.indexOf(fromKeyword);
        
        if (fromIndex != -1) {
            int startIndex = fromIndex + fromKeyword.length();
            /* int endIndex = input.indexOf(" ", startIndex);
				if(endIndex==startIndex) */
			int endIndex =  input.length();
            
            if (endIndex != -1) {
                return input.substring(startIndex, endIndex);
            }
        }
        
        return null;
    }

}
