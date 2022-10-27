package com.ibm;

import java.util.concurrent.TimeUnit;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.support.PageFactory;
import org.testng.annotations.AfterTest;
import org.testng.annotations.BeforeMethod;
import org.testng.annotations.Test;

import pageObjects.JobsPage;

/*Navigate to another page
Goal: Navigate to the “Jobs” page on the site.
a. Open a browser.
b. Navigate to ‘ https://alchemy.hguy.co/jobs ’.
c. Find the navigation bar.
d. Select the menu item that says “Jobs” and click it.
e. Read the page title and verify that you are on the correct page.
f. Close the browser.*/
public class Activity_5 {
	public WebDriver driver;
	private String jobsURL;
	private JobsPage jobsObject;

	@BeforeMethod
	public void browserSetUp() {
		System.setProperty("webdriver.chrome.driver", "C:\\Users\\0027RQ744\\Downloads\\chromedriver.exe");
		driver = new ChromeDriver();
		driver.manage().window().maximize();
		driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);
	}

	@Test
	public void verifyJobspage() throws InterruptedException {
		/* Object Intialization */
		jobsObject = PageFactory.initElements(driver, JobsPage.class);
		jobsURL = "https://alchemy.hguy.co/jobs/jobs/";
		driver.get("https://alchemy.hguy.co/jobs");
		Thread.sleep(2000);
		jobsObject.primaryJobs.click();

		String title = driver.getTitle();
		String URL = driver.getCurrentUrl();
		if (URL.equalsIgnoreCase(jobsURL)) {
			System.out.println("Page Title" + title + " URL" + URL);
		}
	}

	@AfterTest
	public void close() {
		driver.close();
	}
}
