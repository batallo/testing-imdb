Description: Story to Sign in

Scenario: Verify page title
Given I am on the main application page
Then the page title is equal to 'IMDb: Ratings, Reviews, and Where to Watch the Best Movies & TV Shows'

Scenario: Going to Sign in page (top menu/Sign in to IMDb button)
Given I am on the main application page
When I click on element located `<location>`
Then the page title is equal to '<title>'

Examples:
|	location					|	title						|
|	By.name(Sign In)			|	Sign in with IMDb - IMDb	|
|	By.name(Sign in to IMDb)	|	Sign in with IMDb - IMDb	|


Scenario: Going to Sign in with IMDb page
When I click on element located `By.name(Sign in with IMDb)`
Then the page title is equal to 'IMDb Sign-In'

Scenario: Signing In
When I enter `${login}` in field located `By.xpath(//*[@id='ap_email'])`
And I enter `${pass}` in field located `By.xpath(//*[@id='ap_password'])`
And I click on element located `By.name(Details)`
And I click on element located `By.name(Close)`
And I check checkbox located by `By.xpath(//*[@type='checkbox'])`
And I click on element located `By.xpath(//*[@id='a-autoid-0'])`
Then the page title is equal to 'IMDb: Ratings, Reviews, and Where to Watch the Best Movies & TV Shows'

Scenario: Verify Signing In
When I click on element located `By.name(Toggle Acount Menu)`
Then the text 'Sign out' exists