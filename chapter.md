<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Book Display</title>
</head>
<body>
    <h1>{{ site.data.book_data.book.name }}</h1>
    <h2>Author: {{ site.data.book_data.book.author }}</h2>
    <h3>Group: {{ site.data.book_data.book.group }}, Version: {{ site.data.book_data.book.version }}</h3>
    <h4>Chapter {{ site.data.book_data.chapter.number }} - Verses {{ site.data.book_data.chapter.verses }}</h4>

    <ul>
        {% for verse in site.data.book_data.verses %}
            <li><strong>Verse {{ verse.number }}:</strong> {{ verse.text }}</li>
        {% endfor %}
    </ul>
</body>
</html>
