package com.kh.showticket.common.selenium;

import java.util.HashMap;
import java.util.Map;
import java.util.Set;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.Wait;
import org.openqa.selenium.support.ui.WebDriverWait;
public class Selenium2Example {
  private WebDriver driver;
  private Map<String, Object> vars;
  private static WebDriverWait wait;
  JavascriptExecutor js;
  @Before
  public void setUp() {
	  System.setProperty("webdriver.chrome.driver", "C:\\Users\\sukhyun\\Downloads\\chrome\\chromedriver.exe");
  
    driver = new ChromeDriver();
    js = (JavascriptExecutor) driver;
    vars = new HashMap<String, Object>();
    wait=new WebDriverWait(driver, 60);
  }
  @After
  public void tearDown() {
//    driver.quit();
  }
  public String waitForWindow(int timeout) {
    try {
      Thread.sleep(timeout);
    } catch (InterruptedException e) {
      e.printStackTrace();
    }
    Set<String> whNow = driver.getWindowHandles();
    Set<String> whThen = (Set<String>) vars.get("window_handles");
    if (whNow.size() > whThen.size()) {
      whNow.removeAll(whThen);
    }
    return whNow.iterator().next();
  }
  @Test
  public void aaaaa() {
	  driver.get("https://ticket.interpark.com/Gate/TPLogin.asp?CPage=B&MN=Y&tid1=main_gnb&tid2=right_top&tid3=login&tid4=login");
		driver.switchTo().defaultContent();
	    driver.switchTo().frame(0);
		
		//아이디에 접근
		// 9 | click | id=userId |  | 
		driver.findElement(By.id("userId")).click();
//		자기 "아이디" 넣어주세요
		driver.findElement(By.id("userId")).sendKeys("jsghak9824");
		

		driver.switchTo().defaultContent();
		driver.switchTo().frame(0);
		driver.findElement(By.id("userPwd")).click();
		
//		자기 "비밀번호" 넣어주세요~~~
		driver.findElement(By.id("userPwd")).sendKeys("!nterpark12");

		driver.findElement(By.id("btn_login")).click();
		
		WebElement guru99seleniumlink;
		guru99seleniumlink = wait.until(ExpectedConditions.visibilityOfElementLocated(By.id("Nav_SearchWord")));
		guru99seleniumlink.click();
		
//    driver.findElement(By.id("Nav_SearchWord")).click();
    driver.findElement(By.id("Nav_SearchWord")).sendKeys("옥탑방고양이");
    driver.findElement(By.id("Nav_SearchWord")).sendKeys(Keys.ENTER);
    WebElement guru99selenium;
    guru99selenium = wait.until(ExpectedConditions.visibilityOfElementLocated(By.cssSelector(".Poster:nth-child(1) img")));
    guru99selenium.click();
//    driver.switchTo().defaultContent();
//    driver.switchTo().frame(0);
//    driver.findElement(By.cssSelector(".Poster:nth-child(1) img")).click();
    driver.switchTo().frame(7);
    WebElement guru99;
    guru99 = wait.until(ExpectedConditions.visibilityOfElementLocated(By.className("cal_Wrap")));
//    guru99.click();
    driver.findElement(By.linkText("20")).click();
    driver.switchTo().defaultContent();
    driver.findElement(By.cssSelector(".myValue")).click();
    driver.findElement(By.cssSelector("li:nth-child(3) > label")).click();
    {
      WebElement element = driver.findElement(By.tagName("body"));
      Actions builder = new Actions(driver);
      builder.moveToElement(element, 0, 0).perform();
    }
    vars.put("window_handles", driver.getWindowHandles());
    driver.findElement(By.linkText("예매하기")).click();
    vars.put("win3725", waitForWindow(3000));
    vars.put("root", driver.getWindowHandle());
    driver.switchTo().window(vars.get("win3725").toString());
    

//    vars.put("win3725", waitForWindow(4000));
//    WebElement closeWin = driver.findElement(By.cssSelector("#divBookNoticeLayer > div.layerWrap > div.titleArea > a"));
//   	wait.until(ExpectedConditions.visibilityOf(closeWin));
    WebElement next = wait.until(ExpectedConditions.visibilityOfElementLocated(By.cssSelector("#divBookNoticeLayer > div.layerWrap > div.titleArea > a")));
    next.click();
//    driver.findElement(By.cssSelector("#divBookNoticeLayer > div.layerWrap > div.titleArea > a")).click();
    driver.findElement(By.id("LargeNextBtnImage")).click();
        WebElement element = driver.findElement(By.tagName("body"));
        Actions builder = new Actions(driver);
        builder.moveToElement(element, 0, 0).perform();
    driver.switchTo().frame(1);
    driver.switchTo().frame(0);
    WebElement TextElement = driver.findElement(By.xpath("//*[@id=\"MainMap\"]"));
	wait.until(ExpectedConditions.visibilityOf(TextElement));
  //*[@id="MainMap"]
//    WebElement element = driver.findElement(By.tagName("table"));
    System.out.println(driver.getPageSource());
//    String contents = (String)((JavascriptExecutor)driver).executeScript("return arguments[0].innerHTML;", element);
//	 System.out.println(contents);
//    System.out.println("Title of page is: " +driver.findElement(By.id("MainMap")).getTagName());							
//    System.out.println("Title of page is: " + driver.findElement(By.tagName("img")).getTagName());							
		
		  
		 
  }
}
