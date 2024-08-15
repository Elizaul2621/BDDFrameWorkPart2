package Hooks;

import DriverFactory.DriverFactoryCode;
import Utilit.ConfigReader;
import Utilit.Utilit;
import io.cucumber.java.After;
import io.cucumber.java.Before;
import org.openqa.selenium.WebDriver;

import java.time.Duration;
import java.util.Properties;

public class OwnHooks {

    public WebDriver driver;


    @Before
    public void setup() throws Exception{
        Properties prop = ConfigReader.initializePropertiesFile();
        DriverFactoryCode.initializeBrowser(prop.getProperty("browser"));
        driver = DriverFactoryCode.getDriver();
        driver.manage().deleteAllCookies();
        driver.manage().timeouts().implicitlyWait(Duration.ofSeconds(Utilit.IMPLICIT_WAIT_TIME));
        driver.manage().timeouts().pageLoadTimeout(Duration.ofSeconds(Utilit.PAGE_LOAD_TIME));
        driver.manage().timeouts().scriptTimeout(Duration.ofSeconds(Utilit.SCRIPT_TIME));
        driver.manage().window().maximize();
        driver.get(prop.getProperty("url"));
    }

    @After
    public void tearDown(){
        driver.quit();
    }

}
