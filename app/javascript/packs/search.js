console.log("hello from search.js");


const search = instantsearch({
  // Replace with your own values
  appId: process.env.ALGOLIA_APP_ID,
  apiKey: process.env.ALGOLIA_API, // search only API key, no ADMIN key
  indexName: 'books',
  routing: true,
  searchParameters: {
    hitsPerPage: 10
  }
});

search.addWidget(
  instantsearch.widgets.searchBox({
    container: '#search-input'
  })
);

search.addWidget(
  instantsearch.widgets.hits({
    container: '#hits',
    templates: {
      item: document.getElementById('hit-template').innerHTML,
      empty: "We didn't find any results for the search <em>\"{{query}}\"</em>"
    }
  })
);

search.start();

console.log("hello from search.js");
