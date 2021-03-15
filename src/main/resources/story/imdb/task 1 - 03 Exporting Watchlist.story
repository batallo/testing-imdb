Description: Story to Export Watchlist

Scenario: Signing In
When I log in
Then the page title is equal to 'IMDb: Ratings, Reviews, and Where to Watch the Best Movies & TV Shows'
When I click on element located `By.name(Toggle Acount Menu)`
Then the text 'Sign out' exists

Scenario: Opening the Watchlist (Top menu)
Given I am on the main application page
When I click on element located `By.xpath(//*[@class='ipc-button ipc-button--single-padding ipc-button--default-height ipc-button--core-baseAlt ipc-button--theme-baseAlt ipc-button--on-textPrimary ipc-text-button'])`
Then the page title is equal to 'Your Watchlist - IMDb'

Scenario: Opening the Watchlist (User menu)
Given I am on the main application page
When I click on element located `By.name(Toggle Acount Menu)`
And I click on element located `By.xpath(//*[@class='ipc-list-item__text' and text()='Your watchlist'])`
Then the page title is equal to 'Your Watchlist - IMDb'

Scenario: Sorting the Watchlist
When I save number of elements located `By.xpath(//*[@id='lister-sort-by-options']/option)` to scenario variable `s_result`
And I click on element located `By.xpath(//*[@id="lister-sort-by-options"]/option[#{randomInt(1, ${s_result})}])`

Scenario: Exporting the Watchlist
When I click on element located `By.name(Export this list)`
And I execute sequence of actions:
|	type		|	argument		|
|	PRESS_KEYS	|	ENTER			|
