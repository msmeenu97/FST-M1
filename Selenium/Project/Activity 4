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

/*Verify the website’s second heading
Goal: Read the second heading of the website and verify the text
a. Open a browser.
b. Navigate to ‘ https://alchemy.hguy.co/jobs ’.
	c. Get the second heading on the page.
	d. Make sure it matches “Quia quis non” exactly.
	e. If it matches, close the browser.*/

public class Activity_4 extends base {
	public WebDriver driver;
	private String title;
	private JobsPage jobsObject;

	@BeforeMethod
	public void browserSetUp() {
		System.setProperty("webdriver.chrome.driver", "C:\\Users\\0027RQ744\\Downloads\\chromedriver.exe");
		driver = new ChromeDriver();
		driver.manage().window().maximize();
		driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);
	}

	@Test
	public void verifySecondWebsiteHeading() throws InterruptedException {
		/* Object Intialization */
		jobsObject = PageFactory.initElements(driver, JobsPage.class);
		title = "Quia quis non";
		driver.get("https://alchemy.hguy.co/jobs");
		Thread.sleep(2000);
		String headingText = jobsObject.secHeadingTxt.getText();
		try {
			if (headingText.equalsIgnoreCase(title)) {
				System.out.println("Second Heading Matched");
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		driver.close();
	}

}
