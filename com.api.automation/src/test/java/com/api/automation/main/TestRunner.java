package com.api.automation.main;



import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class TestRunner {
	
	
	@Test
	public Karate runner() {
		
		return Karate.run("classpath:com/api/automation/main/postreq/used_helper.feature");
		
		
		
		
	}

}
