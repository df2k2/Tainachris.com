---
title: Books
layout: collection
permalink: /books/
collection: books
entries_layout: grid
---

Sample document listing for the collection `_books`.

{% for post in site.data.books %}
  <article>
    <h2>{{ post.name }}</h2>
    <p>{{ post.author }}</p>
<p>{{ post.chapters }}</p>
  </article>
{% endfor %}