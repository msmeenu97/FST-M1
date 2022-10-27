package com.ibm;

import java.util.concurrent.TimeUnit;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.support.PageFactory;
import org.testng.annotations.BeforeMethod;
import org.testng.annotations.Test;

import pageObjects.JobsPage;
import resources.base;

/*Get the url of the header image
Goal: Print the url of the header image to the console
a. Open a browser.
b. Navigate to ‘ https://alchemy.hguy.co/jobs ’.
c. Get the url of the header image.
d. Print the url to the console.
e. Close the browser.*/

public class Activity_3 extends base {
	public WebDriver driver;
	public String title;
	private JobsPage jobsObject;

	@BeforeMethod
	public void browserSetUp() {
		System.setProperty("webdriver.chrome.driver", "C:\\Users\\0027RQ744\\Downloads\\chromedriver.exe");
		driver = new ChromeDriver();
		driver.manage().window().maximize();
		driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);
	}

	@Test
	public void verifyurlOfHeaderImage() throws InterruptedException {
		/* Object Intialization */

		jobsObject = PageFactory.initElements(driver, JobsPage.class);
		title = "Alchemy Jobs – Job Board Application";
		driver.get("https://alchemy.hguy.co/jobs");
		Thread.sleep(2000);
		String imageURL = jobsObject.urlOfImg.getAttribute("src");

		System.out.println("Matched"+imageURL);
		driver.close();
	}
}
