---
layout: single
title: "Search"
permalink: /search/
author_profile: false
---

<input type="text" id="search-input" placeholder="Search articles...">

<ul id="results-container"></ul>

<script src="https://unpkg.com/simple-jekyll-search@latest/dest/simple-jekyll-search.min.js"></script>

<script>
SimpleJekyllSearch({
  searchInput: document.getElementById('search-input'),
  resultsContainer: document.getElementById('results-container'),
  json: '/search.json',
  searchResultTemplate: '<li><a href="{url}">{title}</a></li>',
  noResultsText: 'No results found',
  limit: 20,
  fuzzy: false
})
</script>
