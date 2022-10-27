package com.ibm;

import java.util.concurrent.TimeUnit;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.PageFactory;
import org.testng.annotations.AfterTest;
import org.testng.annotations.BeforeMethod;
import org.testng.annotations.Test;

import pageObjects.JobsPage;
import pageObjects.JobsSearchPage;
import pageObjects.PostAJobPage;

/*Create a new job listing
Goal: Create a new job listing
a. Open a browser.
b. Navigate to ‘ https://alchemy.hguy.co/jobs ’
c. Locate the navigation menu and click the menu item that says “Post a Job”
d. Fill in the necessary details and click the button that says “Preview”.
e. Click on the button that says “Submit Listing”.
f. Verify that the job listing was posted by visiting the jobs page.
g. Close the browser.*/

public class Activity_7 {
	public WebDriver driver;
	public String jobsURL;
	private JobsPage jobsObject;
	private PostAJobPage postJobObject;

	@BeforeMethod
	public void browserSetUp() {
		System.setProperty("webdriver.chrome.driver", "C:\\Users\\0027RQ744\\Downloads\\chromedriver.exe");
		driver = new ChromeDriver();
		driver.manage().window().maximize();
		driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);
	}

	@Test
	public void verifyNewJobListing() throws InterruptedException {

		jobsObject = PageFactory.initElements(driver, JobsPage.class);
		postJobObject = PageFactory.initElements(driver, PostAJobPage.class);

		driver.get("https://alchemy.hguy.co/jobs");
		Actions action = new Actions(driver);
		Thread.sleep(2000);
		jobsObject.primary.click();

		postJobObject.accountEmail.sendKeys("Archana.Birur.Ravindra.Kumar@ibm.com");
		String job_title = "Full Stack Tester";
		postJobObject.jobTitile.sendKeys(job_title);
		postJobObject.jobLocation.sendKeys("Banglore");

		driver.switchTo().frame(postJobObject.jobDescription);
		postJobObject.textElement.sendKeys("Job Application");
		driver.switchTo().defaultContent();
		postJobObject.application.sendKeys("https://alchemy.hguy.co/jobs/post-a-job/");
		postJobObject.companyName.sendKeys("IBM");
		postJobObject.compWebsite.sendKeys(
				"https://ibmrr.performnet.com/ibmrr/login.do;jsessionid=E9F20176F1F593588B74335223A532E7.jvmRoute");
		postJobObject.compaTagLine.sendKeys("A");
		postJobObject.compaVedio.sendKeys("A");
		postJobObject.compaTwitter.sendKeys("A");
		// postJobObject.compaLogo.sendKeys("");// file path

		postJobObject.previewBtn.click();
		String jobText = postJobObject.jobList.getText();
		if (jobText.equalsIgnoreCase(job_title)) {
			System.out.println("Matched");
		}
	}

	@AfterTest
	public void close() {
		driver.close();
	}
}
