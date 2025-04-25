const products = [
  { name: "Product 1", price: "$10", quantity: 5, image: "product1.jpg" },
  { name: "Product 2", price: "$20", quantity: 3, image: "product2.jpg" },
  { name: "Product 3", price: "$15", quantity: 8, image: "product3.jpg" },
];

const productList = document.getElementById("product-list");

products.forEach(product => {
  const productDiv = document.createElement("div");
  productDiv.className = "product";
  productDiv.innerHTML = `
    <img src="${product.image}" alt="${product.name}">
    <h2>${product.name}</h2>
    <p>Price: ${product.price}</p>
    <p>Quantity: ${product.quantity}</p>
  `;
  productList.appendChild(productDiv);
});

// Register the service worker
if ('serviceWorker' in navigator) {
  navigator.serviceWorker.register('service-worker.js')
    .then(() => console.log('Service Worker Registered'))
    .catch(err => console.error('Service Worker Registration Failed:', err));
}