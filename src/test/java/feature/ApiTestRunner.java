package feature;

import org.junit.runner.RunWith;

import com.intuit.karate.KarateOptions;
import com.intuit.karate.junit4.Karate;

@RunWith(Karate.class)
@KarateOptions(features = {
						"classpath:feature/country.feature",
						"classpath:feature/generateToken.feature",
						"classpath:feature/users.feature",
						"classpath:feature/createUser.feature",
		})
public class ApiTestRunner {
	

}
