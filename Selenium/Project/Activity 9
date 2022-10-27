package com.ibm;

import java.util.concurrent.TimeUnit;

import org.openqa.selenium.Alert;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.PageFactory;
import org.testng.annotations.AfterTest;
import org.testng.annotations.BeforeMethod;
import org.testng.annotations.BeforeTest;
import org.testng.annotations.Test;

import pageObjects.JobsAdmin;
import pageObjects.LoginPage;

/*Create a job listing using the backend
Goal: Visit the site’s backend and create a job listing
a. Open a browser.
b. Navigate to ‘ https://alchemy.hguy.co/jobs/wp-admin ’ and log in.
c.Locate the left hand menu and click the menu item that says “Job Listings”.
d. LocateLocate the “Add New” button and click it
e. Fill in the necessary details.
f. Click the “Publish” button.
g. Verify that the job listing was created.
h. Close the browser.*/

public class Activity_9 {
	public WebDriver driver;
	public String jobsURL;
	public LoginPage login;
	public JobsAdmin jobsAdmin;

	@BeforeMethod
	public void browserSetUp() {
		System.setProperty("webdriver.chrome.driver", "C:\\Users\\0027RQ744\\Downloads\\chromedriver.exe");
		driver = new ChromeDriver();
		driver.manage().window().maximize();
		driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);
		driver.get("https://alchemy.hguy.co/jobs/wp-admin");
		login = PageFactory.initElements(driver, LoginPage.class);

	}

	@Test
	public void verifyNewJobUsingBackend() throws InterruptedException {
		login.getUserName().sendKeys("root");
		login.getPassword().sendKeys("pa$$w0rd");
		login.getCheckBox().click();
		login.getSubmitBtn().click();

		Thread.sleep(1000);
		jobsAdmin = PageFactory.initElements(driver, JobsAdmin.class);
		jobsAdmin.jobsListing.click();
		jobsAdmin.jobsAddNew.click();
		
		jobsAdmin.position.sendKeys("Trainee");
		jobsAdmin.companyName.sendKeys("Alchemy");
		jobsAdmin.companyTagline.sendKeys("test");
		jobsAdmin.companyWebsite.sendKeys("https://lms.training-support.net/alchemy/");
		jobsAdmin.checkBox.click();
		jobsAdmin.calendar.click();
		jobsAdmin.date.click();

		jobsAdmin.publishBtn.click();
		jobsAdmin.publish.click();

		String text = jobsAdmin.verifyTxt.getText();
		if (text.equalsIgnoreCase("Published")) {

			System.out.println("Successfully Published");
		} else {
			System.out.println("Failed to Publish");
		}

	}
	@AfterTest
	public void close() {
		driver.close();
	}
	
}
