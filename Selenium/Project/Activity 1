package com.ibm;

import java.io.IOException;
import java.util.concurrent.TimeUnit;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.testng.annotations.BeforeMethod;
import org.testng.annotations.Test;

import resources.base;

/*Goal: Read the title of the website and verify the text
    a. Open a browser.
    b. Navigate to ‘ https://alchemy.hguy.co/jobs ’.
    c. Get the title of the website.
    d. Make sure it matches “Alchemy Jobs – Job Board Application” exactly.
    e. If it matches, close the browser.*/

public class Activity_1 {
	private WebDriver driver;
	private String title;

	@BeforeMethod
	public void browserSetUp() {
		System.setProperty("webdriver.chrome.driver", "C:\\Users\\0027RQ744\\Downloads\\chromedriver.exe");
		driver = new ChromeDriver();
		driver.manage().window().maximize();
		driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);
	}

	@Test
	public void verifyWebsiteTitle() throws InterruptedException, IOException {
		title = "Alchemy Jobs – Job Board Application";

		driver.get("https://alchemy.hguy.co/jobs");
		Thread.sleep(1000);
		String websiteTitle = driver.getTitle();
		if (websiteTitle.equalsIgnoreCase(title)) {
			System.out.println("Title matches");
		}
		driver.close();
	}

}
