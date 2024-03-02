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
    <ul>
<li><strong>{{ post.name }}</strong> ({{ post.abbrev.pt }})</li>
<li>Group: {{ post.group }}</li>
<li>Author: {{ post.author }}</li>
<li>Chapters: {{ post.chapters }}</li>
</ul>

<!-- https://www.abibliadigital.com.br/api/verses/nvi/gn/1 -->

    <!-- {"abbrev":{"pt":"gn","en":"gn"},"author":"Moisés","chapters":50,"group":"Pentateuco","name":"Gênesis","testament":"VT"} -->

  </article>
{% endfor %}

