---
title: Books
layout: collection
permalink: /books/
collection: books
entries_layout: grid
---

{% for post in site.data.books %}
  <article>
    <ul>
      <li><strong>{{ post.name }}</strong> ({{ post.abbrev.pt }})</li>
      <li>Group: {{ post.group }}</li>
      <li>Author: {{ post.author }}</li>
      <li>Chapters: {{ post.chapters }}</li>
<li><a target="_blank" href="/b?{{ post.abbrev.pt }}/1/{{ post.chapters }}">{{ post.name }} 1:</a></li>
    </ul>
  </article>
{% endfor %}
