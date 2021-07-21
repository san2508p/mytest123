package com.api.automation.main;

import org.junit.jupiter.api.Test;
import com.intuit.karate.Runner.Builder;

public class ParallelRunner {
	
	@Test
	public void trstrun() {
		
		Builder arunner = new Builder();
		arunner.path("classpath:com/api/automation/main");
		arunner.parallel(5);
	
		
		
	}

}
