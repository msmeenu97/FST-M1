package com.ibm;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.concurrent.TimeUnit;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import org.testng.annotations.AfterTest;
import org.testng.annotations.BeforeMethod;
import org.testng.annotations.Test;

import pageObjects.JobsPage;
import pageObjects.LoginPage;
import resources.base;

/*Login into the website’s backend
Goal: Visit the site’s backend and login
a. Open a browser.
b. Navigate to ‘ https://alchemy.hguy.co/jobs/wp-admin ’.
c.Find the username field of the login form and enter the username into that field.
d. Find the password field of the login form and enter the password into that field.
e. Find the login button and click it.
f. Verify that you have logged in.
g. Close the browser.*/
public class Activity_8 extends base {

	private WebDriver driver;
	public String jobsURL;
	private LoginPage login;

	@BeforeMethod
	public void browserSetUp() {
		System.setProperty("webdriver.chrome.driver", "C:\\Users\\0027RQ744\\Downloads\\chromedriver.exe");
		driver = new ChromeDriver();
		driver.get("https://alchemy.hguy.co/jobs/wp-admin/");
		driver.manage().window().maximize();
		driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);
		driver.get("https://alchemy.hguy.co/jobs/wp-admin");
		login = PageFactory.initElements(driver, LoginPage.class);
	}

	//
	@Test
	public void verifyLogin() throws InterruptedException {
		try {
			login.getUserName().sendKeys("root");
			login.getPassword().sendKeys("pa$$w0rd");
			login.getCheckBox().click();
			login.getSubmitBtn().click();
		} catch (Exception e) {
			e.printStackTrace();
		}

	}
	
	@AfterTest
	public void close() {
		driver.close();
	}
}
