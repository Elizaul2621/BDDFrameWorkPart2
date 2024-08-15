package Utilit;

import io.cucumber.java.it.Date;

public class Utilit{

    public static String emailWithDateTimeStamp() {
        Date date = new Date();
        String timeStamp = date.toString().replace(" ", ":").replace(":", "_");
        return "elizauljava" + timeStamp + "@email.com";
    }

    public static final int IMPLICIT_WAIT_TIME = 10;
    public static final int PAGE_LOAD_TIME = 200;
    public static final int SCRIPT_TIME= 1000;
}
