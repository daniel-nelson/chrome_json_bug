Demo of Problem on Chrome
-------------------------

This demo illustrates a problem on Chrome in which json retrieved from the server is displayed when a user navigates back to the page by hitting the back button.

The problem arises when both the html and the json are loaded from the same resource. In this example, when navigating to [http://chrome-json-bug.heroku.com/docs](http://chrome-json-bug.heroku.com/docs), javascript loads json from the same URL. The server response depends on the "accept" header.


Reproducing
----------

- visit [http://chrome-json-bug.heroku.com/docs](http://chrome-json-bug.heroku.com/docs)
- click "navigate elsewhere"
- press the back button in the browser
- if the problem is happening on your system, then instead of html, you will see json

The problem exhibits itself in Chrome 16.0.912.63 on my OSX 10.6.8 machine.
