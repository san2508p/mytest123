package com.api.automation.main.getreq;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class TestRunner {
	
	
	@Test
	public Karate runner() {
		
		return Karate.run("used_helper").relativeTo(getClass());
		
		
		
		
	}

}
