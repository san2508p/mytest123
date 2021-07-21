package com.api.automation.main;

import org.junit.jupiter.api.Test;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import com.intuit.karate.Runner.Builder;

public class Parallelrun2 {
	
	
	@Test
	public void trstrun() {
		
		//Runner.parallel(getClass(), 5);
		Builder arunner = new Builder();
		arunner.path("classpath:com/api/automation/main");
		Results result = arunner.parallel(5);
		System.out.println("Total feature exists :" +result.getFeaturesTotal());
		System.out.println("Total Scenario executed :" +result.getScenariosTotal());
		System.out.println("Total Scenario passed :" +result.getScenariosPassed());
		System.out.println("Total Scenario failed :" +result.getScenariosFailed());
		
		
		
	
	
		
		
	}

}
