const albums = [
    {
        name: "Album 1",
        singer: "Singer 1",
        songs: ["Song A", "Song B", "Song C"],
        image: "album1.jpg"
    },
    {
        name: "Album 2",
        singer: "Singer 2",
        songs: ["Song D", "Song E", "Song F"],
        image: "album2.jpg"
    }
];

const albumsContainer = document.getElementById('albums');

albums.forEach(album => {
    const albumDiv = document.createElement('div');
    albumDiv.className = 'album';
    albumDiv.innerHTML = `
        <img src="${album.image}" alt="${album.name}">
        <h2>${album.name}</h2>
        <p><strong>Singer:</strong> ${album.singer}</p>
        <p><strong>Songs:</strong> ${album.songs.join(', ')}</p>
    `;
    albumsContainer.appendChild(albumDiv);
});

// Register service worker
if ('serviceWorker' in navigator) {
    navigator.serviceWorker.register('service-worker.js')
        .then(() => console.log('Service Worker Registered'))
        .catch(err => console.error('Service Worker Registration Failed:', err));
}