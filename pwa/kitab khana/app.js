const books = [
    { name: "Book 1", image: "book1.jpg", author: "Author 1", price: "$10" },
    { name: "Book 2", image: "book2.jpg", author: "Author 2", price: "$15" },
    { name: "Book 3", image: "book3.jpg", author: "Author 3", price: "$20" },
    { name: "Book 4", image: "book4.jpg", author: "Author 4", price: "$25" },
    { name: "Book 5", image: "book5.jpg", author: "Author 5", price: "$30" },
    { name: "Book 6", image: "book6.jpg", author: "Author 6", price: "$35" },
];

const bookList = document.getElementById('book-list');

books.forEach(book => {
    const bookDiv = document.createElement('div');
    bookDiv.className = 'book';
    bookDiv.innerHTML = `
        <img src="${book.image}" alt="${book.name}">
        <h2>${book.name}</h2>
        <p>Author: ${book.author}</p>
        <p>Price: ${book.price}</p>
    `;
    bookList.appendChild(bookDiv);
});

// Register service worker
if ('serviceWorker' in navigator) {
    navigator.serviceWorker.register('service-worker.js')
        .then(() => console.log('Service Worker Registered'))
        .catch(err => console.error('Service Worker Registration Failed:', err));
}