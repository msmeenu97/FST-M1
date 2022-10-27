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

/*Goal: Verify the website heading
a. Open a browser.
b. Navigate to ‘ https://alchemy.hguy.co/jobs ’.
c. Get the heading of the webpage.
d. Make sure it matches “Welcome to Alchemy Jobs” exactly.
e. If it matches, close the browser.*/

public class Activity_2 extends base {
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
	public void verifyWebsiteHeading() throws InterruptedException, NullPointerException {
		/* Object Intialization */
		jobsObject = PageFactory.initElements(driver, JobsPage.class);

		title = "Welcome to Alchemy Jobs";
		driver.get("https://alchemy.hguy.co/jobs");
		String headingText = jobsObject.headingTxt.getText();

		try {
			if (headingText.equalsIgnoreCase(title)) {
				System.out.println("Heading Matched");
				driver.close();
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		driver.close();
	}
}
