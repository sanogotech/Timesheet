package jfang.project.timesheet.repository;

import static org.junit.Assert.assertEquals;

import javax.annotation.Resource;

import jfang.project.timesheet.config.DataAccessConfig;
import jfang.project.timesheet.config.DataSourceConfig;
import jfang.project.timesheet.model.Employee;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.TestPropertySource;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = {
        DataAccessConfig.class,
        DataSourceConfig.class})
@ActiveProfiles("test")
@TestPropertySource("classpath:application-test.properties")
public class EmployeeRepositoryTest {

	@Resource
	private EmployeeRepository employeeRepository;
	
	@Test
	public void testFindByUsername() {
		Employee employee = employeeRepository.findByUsername("emp1");
		assertEquals(1l, employee.getEmployeeId());
	}
}