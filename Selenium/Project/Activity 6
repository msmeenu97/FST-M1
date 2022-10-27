package com.ibm;

import java.util.concurrent.TimeUnit;

import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;
import org.testng.annotations.AfterTest;
import org.testng.annotations.BeforeMethod;
import org.testng.annotations.Test;

import pageObjects.JobsPage;
import pageObjects.JobsSearchPage;
import resources.base;

/*Apply to a job
Goal: Search for a job and apply for it
a. Open browser with Alchemy Jobs site and navigate to the Jobs page.
b. Search for a particular job and wait for listings to show.
c.Click and open any one of the jobs listed.
d.Click the apply button and print the email to the console.
e. Close the browser.*/

public class Activity_6 extends base {
	public WebDriver driver;
	public String jobsURL;
	private JobsPage jobsObject;
	private JobsSearchPage search;

	@BeforeMethod
	public void browserSetUp() {
		System.setProperty("webdriver.chrome.driver", "C:\\Users\\0027RQ744\\Downloads\\chromedriver.exe");
		driver = new ChromeDriver();
		driver.manage().window().maximize();
		driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);
	}

	@Test
	public void verifyApplyingAJob() throws InterruptedException {
		/* Object Intialization */
		jobsObject = PageFactory.initElements(driver, JobsPage.class);
		search = PageFactory.initElements(driver, JobsSearchPage.class);

		/* Wait Time */
		WebDriverWait wait = new WebDriverWait(driver, 5);
		jobsURL = "https://alchemy.hguy.co/jobs/jobs/";
		driver.get(jobsURL);
		Thread.sleep(2000);
		jobsObject.primaryJobs.click();

		search.searchKeywords.sendKeys("Banking clerk");
		wait.until(ExpectedConditions
				.visibilityOf(driver.findElement(By.xpath("//h3[contains(text(),'Banking clerk')]"))));
		search.searchSubmitBtn.click();
		search.searchInput.click();
		search.applyForJob.click();
		String email = search.emailTxt.getText();
		System.out.println(email);
	}

	@AfterTest
	public void close() {
		driver.close();
	}
}
