Description: Story to Add a movie to the Watchlist

Scenario: Signing In
When I log in
Then the page title is equal to 'IMDb: Ratings, Reviews, and Where to Watch the Best Movies & TV Shows'
When I click on element located `By.name(Toggle Acount Menu)`
Then the text 'Sign out' exists

Scenario: Search for movie
Given I am on the main application page
When I enter `${movie}` in field located `By.xpath(//*[@id='suggestion-search'])`
And I click on element located `By.xpath(//*[@id='suggestion-search-button'])`
Then the page title is equal to 'Find - IMDb'

Scenario: Filtering movies
When I click on element located `By.name(Movie)`
Then the page title is equal to 'Find - IMDb'
And the text 'Search category: Movie Titles' exists

Scenario: Opening movie page
When I save number of elements located `By.xpath(//*[@class='result_text'])` to scenario variable `s_result`
And I click on element located `By.xpath(//*[@class='findList']/tbody/tr[#{randomInt(1, ${s_result})}]/td[2]/a)`

Scenario: Adding to the Watchlist
When I click on element located `By.xpath(//*[@class='ipc-button__text' and text()='Add to Watchlist'])`
Then the text 'Added to Watchlist' exists

