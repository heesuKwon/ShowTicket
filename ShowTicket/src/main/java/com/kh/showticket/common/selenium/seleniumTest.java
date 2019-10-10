package com.kh.showticket.common.selenium;

import java.io.File;
import java.io.IOException;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.phantomjs.PhantomJSDriver;
import org.openqa.selenium.phantomjs.PhantomJSDriverService;
import org.openqa.selenium.remote.DesiredCapabilities;

public class seleniumTest {
	public static void main(String[] args) throws IOException{
		// TODO Auto-generated method stub
//		System.setProperty("webdriver.chrome.driver", "C:\\Users\\sukhyun\\Downloads\\chromedriver.exe");
////		WebDriver driver = new HtmlUnitDriver();
//		ChromeOptions options = new ChromeOptions();
//		options.addArguments("--headless");
//		DesiredCapabilities capabilities = new DesiredCapabilities();
//		capabilities.setCapability(ChromeOptions.CAPABILITY, options);
//		options.merge(capabilities);
//		ChromeDriver driver = new ChromeDriver(options);		
//		driver.get("http://demo.guru99.com/");
//		driver.manage().window().maximize();
//		String title = driver.getTitle();
//		System.out.println("Page Title: " +title);
//		driver.quit();
		DesiredCapabilities caps = new DesiredCapabilities();
	    ((DesiredCapabilities) caps).setJavascriptEnabled(true);
	    ((DesiredCapabilities) caps).setCapability("takesScreenshot", true);
	    ((DesiredCapabilities) caps).setCapability(PhantomJSDriverService.PHANTOMJS_EXECUTABLE_PATH_PROPERTY, "C:\\Users\\sukhyun\\Downloads\\phantomjs-2.1.1-windows\\bin\\phantomjs.exe");
	    caps.setJavascriptEnabled(true);
	    String [] phantomJsArgs = {"--web-security=no", "--ignore-ssl-errors=yes"};
	    caps.setCapability(PhantomJSDriverService.PHANTOMJS_CLI_ARGS, phantomJsArgs);
	    WebDriver driver = new PhantomJSDriver(caps);
//		 File file = new File("C:\\Users\\sukhyun\\Downloads\\phantomjs-2.1.1-windows");				
//         System.setProperty("phantomjs.binary.path", file.getAbsolutePath());		
//         WebDriver driver = new PhantomJSDriver();	
         driver.get("http://www.google.com");         
         WebElement element = driver.findElement(By.name("q"));	
         element.sendKeys("Guru99");					
         element.submit();         			
         System.out.println("Page title is: " + driver.getTitle());		
         driver.quit();			
		}


}
