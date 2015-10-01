package com.verizon.proanalysis.junittest;

import org.junit.runner.RunWith;
import org.junit.runners.Suite;
import org.junit.runners.Suite.SuiteClasses;

@RunWith(Suite.class)
@SuiteClasses({ TestCallCenter.class, TestDatabase.class, TestUsers.class })
public class AllTests {

}
