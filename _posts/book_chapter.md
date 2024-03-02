<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Book Chapter Display</title>
</head>
<body>
    <div id="bookContent">
        <!-- Content will be loaded here by JavaScript -->
    </div>

    <script>
        // Example book abbreviation and chapter number
        var bookAbbrev = 'gn'; // You might want to dynamically set this based on the URL or another method
        var chapterNumber = '1'; // Same here for the chapter number

        // Construct the file path
        var filePath = '/_data/' + bookAbbrev + '/' + chapterNumber + '.json';

        // Fetch the JSON data
        fetch(filePath)
            .then(response => response.json())
            .then(data => {
                var contentDiv = document.getElementById('bookContent');

                // Populate the data into your HTML
                contentDiv.innerHTML = `
                    <h1>${data.book.name}</h1>
                    <h2>Author: ${data.book.author}</h2>
                    <h3>Group: ${data.book.group}, Version: ${data.book.version}</h3>
                    <h4>Chapter ${data.chapter.number} - Verses ${data.chapter.verses}</h4>
                    <ul>
                        ${data.verses.map(verse => `<li><strong>Verse ${verse.number}:</strong> ${verse.text}</li>`).join('')}
                    </ul>
                `;
            })
            .catch(error => {
                console.error('Error fetching the JSON data: ', error);
            });
    </script>
</body>
</html>
