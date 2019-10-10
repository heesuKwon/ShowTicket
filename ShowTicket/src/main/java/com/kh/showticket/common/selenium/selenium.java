package com.kh.showticket.common.selenium;

import java.util.Map;
import java.util.Set;

import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.remote.DesiredCapabilities;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

public class selenium  {
	
	
	  private static WebDriver driver;
	  private static Map<String, Object> vars;
	  JavascriptExecutor js;
	  private static WebDriverWait wait;
	  
	 
		
	  public static void main(String[] args) throws InterruptedException, NullPointerException{

		

		//SSl certificates 보안쪽 방지용
// 헤드리스 크롬용
//		Desired capabilities=
//		general chrome profile
//		DesiredCapabilities ch=DesiredCapabilities.chrome();
//		ch.acceptInsecureCerts();
//		ch.setCapability(CapabilityType.ACCEPT_INSECURE_CERTS, true);
//		ch.setCapability(CapabilityType.ACCEPT_SSL_CERTS, true);

		//Belows to your local browser
//		ChromeOptions c= new ChromeOptions();
//		c.merge(ch);
		
		System.setProperty("webdriver.chrome.driver", "C:\\Users\\sukhyun\\Downloads\\chrome\\chromedriver.exe");
//		Map<String, Object> vars = new HashMap<String, Object>();
//		ChromeOptions options = new ChromeOptions();
//	    options.addArguments("headless");


//		WebDriver driver = new ChromeDriver();
		ChromeOptions options = new ChromeOptions();
		options.addArguments("--headless");
		options.addArguments("lang=ko_KR");
		options.addArguments("disable-gpu");
		options.addArguments("window-size=1920x1080");
		options.addArguments("Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36");
		DesiredCapabilities capabilities = new DesiredCapabilities();
		capabilities.setCapability(ChromeOptions.CAPABILITY, options);
		options.merge(capabilities);
		ChromeDriver driver = new ChromeDriver(options);
//		  htmlunitDriver는 실패!!!
//		WebDriver driver = new HtmlUnitDriver(true);
		  
		  
//		  팬텀js 용
//		  File file = new File("C:\\Users\\sukhyun\\Downloads\\phantomjs-2.1.1-windows\\bin\\phantomjs.exe");
//		  WebDriver driver = new PhantomJSDriver();	
//          System.setProperty("phantomjs.binary.path", file.getAbsolutePath());		
		JavascriptExecutor  js = (JavascriptExecutor) driver;
	    wait=new WebDriverWait(driver, 60);
	    String parentWinHandle = driver.getWindowHandle();

//		driver.manage().window().maximize();
		//쿠키 세션 삭제
//		driver.manage().deleteAllCookies();
		//인터파크 로그인 사이트 ㄱㄱ
//		driver.get("https://ticket.interpark.com/Gate/TPLogin.asp?CPage=B&MN=Y&tid1=main_gnb&tid2=right_top&tid3=login&tid4=login");
		//        driver.get("https://ticket.interpark.com/Gate/TPLogin.asp?CPage=B&MN=Y&tid1=main_gnb&tid2=right_top&tid3=login&tid4=login");
		// 8 | click | css=li:nth-child(1) > .styleInput |  |
		  driver.get("https://ticket.interpark.com/Gate/TPLogin.asp?CPage=B&MN=Y&tid1=main_gnb&tid2=right_top&tid3=login&tid4=login");
			driver.switchTo().defaultContent();
		    driver.switchTo().frame(0);
			
			//아이디에 접근
			// 9 | click | id=userId |  | 
			driver.findElement(By.id("userId")).click();
//			자기 "아이디" 넣어주세요
			driver.findElement(By.id("userId")).sendKeys("jsghak9824");
			

			driver.switchTo().defaultContent();
			driver.switchTo().frame(0);
			driver.findElement(By.id("userPwd")).click();
			
//			자기 "비밀번호" 넣어주세요~~~
			driver.findElement(By.id("userPwd")).sendKeys("!nterpark12");

			driver.findElement(By.id("btn_login")).click();
			
//		driver.switchTo().defaultContent();
			WebElement guru99seleniumlink;
			guru99seleniumlink = wait.until(ExpectedConditions.visibilityOfElementLocated(By.id("Nav_SearchWord")));
			guru99seleniumlink.click();
			
//	    driver.findElement(By.id("Nav_SearchWord")).click();
	    driver.findElement(By.id("Nav_SearchWord")).sendKeys("옥탑방고양이");
	    driver.findElement(By.id("Nav_SearchWord")).sendKeys(Keys.ENTER);
	    WebElement dateCheck;
	    dateCheck = wait.until(ExpectedConditions.visibilityOfElementLocated(By.cssSelector(".Poster:nth-child(1) img")));
	    dateCheck.click();
//	    driver.switchTo().frame(0);
//	    driver.findElement(By.cssSelector(".Poster:nth-child(1) img")).click();
	    Thread.sleep(3000);
	    driver.switchTo().frame(7);
	    WebElement guru99;
	    guru99 = wait.until(ExpectedConditions.visibilityOfElementLocated(By.className("Sun")));
//	    guru99 = wait.until(ExpectedConditions.visibilityOfElementLocated(By.linkText("20")));
//	    guru99.click();
//	    Thread.sleep(3000);
	    driver.findElement(By.linkText("20")).click();
//	    driver.findElement(By.xpath("html/body/div/div[2]/table/tbody/tr[5]/td[1]/a")).click();
//	    driver.findElement(By.id("CellPlayDate10")).click();
	    driver.switchTo().defaultContent();
	    driver.findElement(By.cssSelector(".myValue")).click();
	    driver.findElement(By.cssSelector("li:nth-child(3) > label")).click();
	    {
	      WebElement element = driver.findElement(By.tagName("body"));
	      Actions builder = new Actions(driver);
	      builder.moveToElement(element, 0, 0).perform();
	    }
	    driver.findElement(By.linkText("예매하기")).click();
	    
	    Thread.sleep(3000);
	    Set<String> winHandles = driver.getWindowHandles();
        // Loop through all handles
        for(String handle: winHandles){
            if(!handle.equals(parentWinHandle)){
            driver.switchTo().window(handle);
            Thread.sleep(1000);
//            System.out.println("Title of the new window: " +
//            							driver.getTitle());
//            System.out.println("Closing the new window...");
            }
        }
	    
//	    driver.switchTo().window(vars.get("win3725").toString());
	    
	    
//	    vars.put("win3725", waitForWindow(4000));
//	    WebElement closeWin = driver.findElement(By.cssSelector("#divBookNoticeLayer > div.layerWrap > div.titleArea > a"));
//	   	wait.until(ExpectedConditions.visibilityOf(closeWin));
	    WebElement exit = wait.until(ExpectedConditions.visibilityOfElementLocated(By.cssSelector("#divBookNoticeLayer > div.layerWrap > div.titleArea > a")));
	    exit.click();
	    WebElement next = wait.until(ExpectedConditions.visibilityOfElementLocated(By.id("LargeNextBtnImage")));
	    next.click();
//	    driver.findElement(By.cssSelector("#divBookNoticeLayer > div.layerWrap > div.titleArea > a")).click();
//	    driver.findElement(By.id("LargeNextBtnImage")).click();
//	        WebElement element = driver.findElement(By.tagName("body"));
//	        Actions builder = new Actions(driver);
//	        builder.moveToElement(element, 0, 0).perform();
	    driver.switchTo().frame(1);
	    driver.switchTo().frame(0);
	    WebElement table = wait.until(ExpectedConditions.visibilityOfElementLocated(By.tagName("table")));
//	    String innerText = driver.findElement(By.tagName("table"));
//	    String innerText = driver.findElement(By.id("TmgsTable")).getText();
	    String str = driver.getPageSource();
	    String html = str.substring(str.indexOf("<img id="), str.indexOf("</td"));
	    System.out.println(html);
		driver.quit();    
	}
	  
	  
	
}