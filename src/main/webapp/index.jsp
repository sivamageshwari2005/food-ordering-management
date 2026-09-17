<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Foodie - Food Ordering Management</title>

<style>

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:Arial, sans-serif;
}

body{
    background:#fff8f2;
    color:#222;
}

/* HEADER */

header{
    background:#ff5722;
    color:white;
    padding:18px 7%;
    display:flex;
    justify-content:space-between;
    align-items:center;
    position:sticky;
    top:0;
    z-index:1000;
}

.logo{
    font-size:28px;
    font-weight:bold;
}

nav{
    display:flex;
    gap:25px;
}

nav button{
    background:none;
    border:none;
    color:white;
    font-size:16px;
    cursor:pointer;
    font-weight:bold;
}

/* HERO */

.hero{
    min-height:450px;

    background:
    linear-gradient(rgba(0,0,0,.55),rgba(0,0,0,.55)),
    url("https://images.unsplash.com/photo-1504674900247-0877df9cc836?auto=format&fit=crop&w=1600&q=80");

    background-size:cover;
    background-position:center;

    display:flex;
    align-items:center;
    padding:60px 8%;
    color:white;
}

.hero-content{
    max-width:600px;
}

.hero h1{
    font-size:55px;
    margin-bottom:20px;
}

.hero p{
    font-size:20px;
    line-height:1.6;
    margin-bottom:30px;
}

.hero button{
    padding:15px 30px;
    border:none;
    background:#ff5722;
    color:white;
    border-radius:8px;
    font-size:17px;
    cursor:pointer;
}

/* SECTION */

.section{
    padding:50px 7%;
}

.section-title{
    text-align:center;
    font-size:35px;
    margin-bottom:30px;
}

/* SEARCH */

.search-box{
    max-width:500px;
    margin:0 auto 35px;
}

.search-box input{
    width:100%;
    padding:15px;
    border:1px solid #ddd;
    border-radius:25px;
    font-size:16px;
}

/* FOOD */

.food-container{
    display:grid;
    grid-template-columns:repeat(auto-fit,minmax(250px,1fr));
    gap:25px;
}

.food-card{
    background:white;
    border-radius:15px;
    overflow:hidden;
    box-shadow:0 5px 20px rgba(0,0,0,.12);
    transition:.3s;
}

.food-card:hover{
    transform:translateY(-7px);
}

.food-card img{
    width:100%;
    height:200px;
    object-fit:cover;
}

.food-info{
    padding:18px;
}

.food-info h3{
    font-size:21px;
    margin-bottom:8px;
}

.food-info p{
    color:#777;
    margin-bottom:10px;
}

.price{
    color:#ff5722;
    font-size:21px;
    font-weight:bold;
    margin-bottom:12px;
}

.add-btn{
    width:100%;
    padding:12px;
    background:#ff5722;
    color:white;
    border:none;
    border-radius:7px;
    cursor:pointer;
    font-size:16px;
}

/* CART */

.cart-section{
    display:none;
    padding:50px 7%;
}

.cart-container{
    max-width:900px;
    margin:auto;
}

.cart-item{
    background:white;
    margin-bottom:15px;
    padding:15px;
    border-radius:12px;
    display:flex;
    align-items:center;
    gap:20px;
    box-shadow:0 3px 12px rgba(0,0,0,.1);
}

.cart-item img{
    width:90px;
    height:70px;
    object-fit:cover;
    border-radius:8px;
}

.cart-details{
    flex:1;
}

.quantity{
    display:flex;
    align-items:center;
    gap:10px;
    margin-top:8px;
}

.quantity button{
    width:30px;
    height:30px;
    border:none;
    background:#ff5722;
    color:white;
    border-radius:5px;
    cursor:pointer;
}

.remove-btn{
    border:none;
    background:#e53935;
    color:white;
    padding:8px 12px;
    border-radius:5px;
    cursor:pointer;
}

.cart-total{
    background:white;
    padding:25px;
    border-radius:12px;
    margin-top:25px;
    text-align:right;
}

.checkout-btn{
    background:#2e7d32;
    color:white;
    border:none;
    padding:14px 25px;
    border-radius:7px;
    margin-top:15px;
    cursor:pointer;
    font-size:16px;
}

/* ORDER */

.order-section{
    display:none;
    padding:50px 7%;
}

.order-box{
    max-width:600px;
    margin:auto;
    background:white;
    padding:30px;
    border-radius:15px;
    box-shadow:0 5px 20px rgba(0,0,0,.12);
}

.order-box h2{
    text-align:center;
    margin-bottom:25px;
}

.form-group{
    margin-bottom:18px;
}

.form-group label{
    display:block;
    margin-bottom:7px;
    font-weight:bold;
}

.form-group input,
.form-group textarea,
.form-group select{
    width:100%;
    padding:13px;
    border:1px solid #ccc;
    border-radius:7px;
    font-size:15px;
}

.form-group textarea{
    height:100px;
    resize:none;
}

.place-order{
    width:100%;
    padding:14px;
    border:none;
    background:#ff5722;
    color:white;
    border-radius:7px;
    font-size:17px;
    cursor:pointer;
}

/* SUCCESS */

.success-section{
    display:none;
    padding:80px 20px;
    text-align:center;
}

.success-box{
    max-width:600px;
    margin:auto;
    background:white;
    padding:45px;
    border-radius:20px;
    box-shadow:0 5px 25px rgba(0,0,0,.15);
}

.success-icon{
    width:80px;
    height:80px;
    border-radius:50%;
    background:#2e7d32;
    color:white;
    font-size:50px;
    line-height:80px;
    margin:0 auto 20px;
}

.success-box h1{
    color:#2e7d32;
    margin-bottom:15px;
}

.home-btn{
    margin-top:25px;
    padding:13px 25px;
    border:none;
    background:#ff5722;
    color:white;
    border-radius:7px;
    cursor:pointer;
}

/* FOOTER */

footer{
    background:#222;
    color:white;
    text-align:center;
    padding:25px;
    margin-top:50px;
}

/* MOBILE */

@media(max-width:600px){

    header{
        padding:15px 4%;
    }

    .logo{
        font-size:22px;
    }

    nav{
        gap:10px;
    }

    nav button{
        font-size:13px;
    }

    .hero h1{
        font-size:38px;
    }

    .hero p{
        font-size:16px;
    }

    .cart-item{
        flex-direction:column;
        align-items:flex-start;
    }

}

</style>
</head>

<body>

<!-- HEADER -->

<header>

<div class="logo">Foodie</div>

<nav>

<button onclick="showHome()">Home</button>

<button onclick="showMenu()">Menu</button>

<button onclick="showCart()">
Cart (<span id="cartCount">0</span>)
</button>

</nav>

</header>


<!-- HOME -->

<section id="home">

<div class="hero">

<div class="hero-content">

<h1>Delicious Food<br>Delivered Fast</h1>

<p>
Order your favourite food from Foodie.
Fresh food, tasty meals and fast delivery
at your doorstep.
</p>

<button onclick="showMenu()">
Order Now
</button>

</div>

</div>

</section>


<!-- MENU -->

<section id="menu" class="section">

<h2 class="section-title">
Our Delicious Menu
</h2>

<div class="search-box">

<input
type="text"
id="search"
placeholder="Search your favourite food..."
onkeyup="searchFood()">

</div>


<div class="food-container" id="foodContainer">


<!-- PIZZA -->

<div class="food-card" data-name="pizza">

<img src="https://images.unsplash.com/photo-1574071318508-1cdbab80d002?auto=format&fit=crop&w=600&q=80">

<div class="food-info">

<h3>Cheese Pizza</h3>

<p>Fresh cheesy pizza with delicious toppings.</p>

<div class="price">Rs:249</div>

<button class="add-btn"
onclick="addToCart('Cheese Pizza',249,'https://images.unsplash.com/photo-1574071318508-1cdbab80d002?auto=format&fit=crop&w=600&q=80')">

Add to Cart

</button>

</div>

</div>


<!-- BURGER -->

<div class="food-card" data-name="burger">

<img src="https://images.unsplash.com/photo-1568901346375-23c9450c58cd?auto=format&fit=crop&w=600&q=80">

<div class="food-info">

<h3>Chicken Burger</h3>

<p>Juicy chicken burger with fresh vegetables.</p>

<div class="price">Rs:179</div>

<button class="add-btn"
onclick="addToCart('Chicken Burger',179,'https://images.unsplash.com/photo-1568901346375-23c9450c58cd?auto=format&fit=crop&w=600&q=80')">

Add to Cart

</button>

</div>

</div>




<!-- PASTA -->

<div class="food-card" data-name="pasta">

<img src="https://images.unsplash.com/photo-1555949258-eb67b1ef0ceb?auto=format&fit=crop&w=600&q=80">

<div class="food-info">

<h3>Creamy Pasta</h3>

<p>Creamy Italian pasta with rich flavour.</p>

<div class="price">Rs:199</div>

<button class="add-btn"
onclick="addToCart('Creamy Pasta',199,'https://images.unsplash.com/photo-1555949258-eb67b1ef0ceb?auto=format&fit=crop&w=600&q=80')">

Add to Cart

</button>

</div>

</div>


<!-- FRIES -->

<div class="food-card" data-name="fries">

<img src="https://images.unsplash.com/photo-1573080496219-bb080dd4f877?auto=format&fit=crop&w=600&q=80">

<div class="food-info">

<h3>French Fries</h3>

<p>Crispy golden french fries.</p>

<div class="price">Rs:99</div>

<button class="add-btn"
onclick="addToCart('French Fries',99,'https://images.unsplash.com/photo-1573080496219-bb080dd4f877?auto=format&fit=crop&w=600&q=80')">

Add to Cart

</button>

</div>

</div>


<!-- DOSA -->

<div class="food-card" data-name="dosa">

<img src="https://images.unsplash.com/photo-1668236543090-82eba5ee5976?auto=format&fit=crop&w=600&q=80">

<div class="food-info">

<h3>Masala Dosa</h3>

<p>Crispy South Indian masala dosa.</p>

<div class="price">Rs:90</div>

<button class="add-btn"
onclick="addToCart('Masala Dosa',90,'https://images.unsplash.com/photo-1668236543090-82eba5ee5976?auto=format&fit=crop&w=600&q=80')">

Add to Cart

</button>

</div>

</div>


<!-- NOODLES -->

<div class="food-card" data-name="noodles">

<img src="https://images.unsplash.com/photo-1612929633738-8fe44f7ec841?auto=format&fit=crop&w=600&q=80">

<div class="food-info">

<h3>Veg Noodles</h3>

<p>Hot and tasty vegetable noodles.</p>

<div class="price">Rs:150</div>

<button class="add-btn"
onclick="addToCart('Veg Noodles',150,'https://images.unsplash.com/photo-1612929633738-8fe44f7ec841?auto=format&fit=crop&w=600&q=80')">

Add to Cart

</button>

</div>

</div>


<!-- BIRYANI -->

<div class="food-card" data-name="biryani">

<img src="https://images.unsplash.com/photo-1589302168068-964664d93dc0?auto=format&fit=crop&w=600&q=80">

<div class="food-info">

<h3>Chicken Biryani</h3>

<p>Hot and spicy traditional chicken biryani.</p>

<div class="price">Rs:220</div>

<button class="add-btn"
onclick="addToCart('Chicken Biryani',220,'https://images.unsplash.com/photo-1563379091339-03246963d96c?auto=format&fit=crop&w=600&q=80')">

Add to Cart

</button>

</div>

</div>


<!-- ICE CREAM -->

<div class="food-card" data-name="ice cream">

<img src="https://images.unsplash.com/photo-1563805042-7684c019e1cb?auto=format&fit=crop&w=600&q=80">

<div class="food-info">

<h3>Ice Cream</h3>

<p>Sweet and creamy vanilla ice cream.</p>

<div class="price">Rs:120</div>

<button class="add-btn"
onclick="addToCart('Ice Cream',120,'https://images.unsplash.com/photo-1563805042-7684c019e1cb?auto=format&fit=crop&w=600&q=80')">

Add to Cart

</button>

</div>

</div>

</div>

</section>


<!-- CART -->

<section id="cart" class="cart-section">

<div class="cart-container">

<h2 class="section-title">
Your Cart
</h2>

<div id="cartItems"></div>

<div class="cart-total">

<h2>
Total: Rs<span id="total">0</span>
</h2>

<button class="checkout-btn"
onclick="showOrder()">

Proceed to Checkout

</button>

</div>

</div>

</section>


<!-- ORDER -->

<section id="order" class="order-section">

<div class="order-box">

<h2>Complete Your Order </h2>

<form onsubmit="placeOrder(event)">

<div class="form-group">

<label>Customer Name</label>

<input
type="text"
id="customerName"
placeholder="Enter your name"
required>

</div>


<div class="form-group">

<label>Mobile Number</label>

<input
type="tel"
id="mobile"
placeholder="Enter mobile number"
pattern="[0-9]{10}"
required>

</div>


<div class="form-group">

<label>Delivery Address</label>

<textarea
id="address"
placeholder="Enter your complete address"
required></textarea>

</div>


<div class="form-group">

<label>Payment Method</label>

<select id="payment">

<option>Cash on Delivery</option>

<option>UPI</option>

<option>Credit / Debit Card</option>

</select>

</div>


<button class="place-order">
Place Order
</button>

</form>

</div>

</section>


<!-- SUCCESS -->

<section id="success" class="success-section">

<div class="success-box">

<div class="success-icon">
✓
</div>

<h1>Order Placed Successfully!</h1>

<p>
Thank you, <b id="successName"></b> 
</p>

<p>
Your delicious food is being prepared.
</p>

<br>

<p>
<strong>Delivery Address:</strong>
</p>

<p id="successAddress"></p>

<br>

<p>
<strong>Payment:</strong>
<span id="successPayment"></span>
</p>

<button class="home-btn"
onclick="showHome()">

Back to Home

</button>

</div>

</section>


<footer>

<p>
© 2026 Foodie | Food Ordering Management System
</p>

</footer>


<script>

let cart=[];


/* ADD TO CART */

function addToCart(name,price,image){

let existing=cart.find(item=>item.name===name);

if(existing){

existing.quantity++;

}else{

cart.push({
name:name,
price:price,
image:image,
quantity:1
});

}

updateCart();

alert(name+" added to cart!");

}


/* UPDATE CART */

function updateCart(){

let cartItems=document.getElementById("cartItems");

let count=0;
let total=0;

cartItems.innerHTML="";

cart.forEach((item,index)=>{

count+=item.quantity;

total+=item.price*item.quantity;

function updateCartDisplay(){
	let cartHTML="";
	cart.forEach(item =>{
cartItems.innerHTML+=`

<div class="cart-item">

<img src="${item.image}">

<div class="cart-details">

<h3>${item.name}</h3>

<p>Rs${item.price}</p>

<div class="quantity">

<button onclick="decrease(${index})">−</button>

<span>${item.quantity}</span>

<button onclick="increase(${index})">+</button>

</div>

</div>

<button
class="remove-btn"
onclick="removeItem(${index})">

Remove

</button>

</div>
`;

});
document.getElementById("cart-container").innerHTML = cartHTML;
}

});

document.getElementById("cartCount").innerText=count;

document.getElementById("total").innerText=total;

}


/* INCREASE */

function increase(index){

cart[index].quantity++;

updateCart();

}


/* DECREASE */

function decrease(index){

if(cart[index].quantity>1){

cart[index].quantity--;

}else{

cart.splice(index,1);

}

updateCart();

}


/* REMOVE */

function removeItem(index){

cart.splice(index,1);

updateCart();

}


/* SHOW HOME */

function showHome(){

document.getElementById("home").style.display="block";

document.getElementById("menu").style.display="block";

document.getElementById("cart").style.display="none";

document.getElementById("order").style.display="none";

document.getElementById("success").style.display="none";

window.scrollTo(0,0);

}


/* SHOW MENU */

function showMenu(){

document.getElementById("home").style.display="block";

document.getElementById("menu").style.display="block";

document.getElementById("cart").style.display="none";

document.getElementById("order").style.display="none";

document.getElementById("success").style.display="none";

document.getElementById("menu").scrollIntoView();

}


/* SHOW CART */

function showCart(){

document.getElementById("home").style.display="none";

document.getElementById("menu").style.display="none";

document.getElementById("cart").style.display="block";

document.getElementById("order").style.display="none";

document.getElementById("success").style.display="none";

updateCart();

window.scrollTo(0,0);

}


/* SHOW ORDER */

function showOrder(){

if(cart.length===0){

alert("Please add food to cart first! ");

return;

}

document.getElementById("home").style.display="none";

document.getElementById("menu").style.display="none";

document.getElementById("cart").style.display="none";

document.getElementById("order").style.display="block";

document.getElementById("success").style.display="none";

window.scrollTo(0,0);

}


/* PLACE ORDER */

function placeOrder(event){

event.preventDefault();

let name=document.getElementById("customerName").value;

let address=document.getElementById("address").value;

let payment=document.getElementById("payment").value;

document.getElementById("successName").innerText=name;

document.getElementById("successAddress").innerText=address;

document.getElementById("successPayment").innerText=payment;

document.getElementById("home").style.display="none";

document.getElementById("menu").style.display="none";

document.getElementById("cart").style.display="none";

document.getElementById("order").style.display="none";

document.getElementById("success").style.display="block";

cart=[];

updateCart();

window.scrollTo(0,0);

}


/* SEARCH */

function searchFood(){

let value=document
.getElementById("search")
.value
.toLowerCase();

let cards=document
.querySelectorAll(".food-card");

cards.forEach(card=>{

let name=card
.getAttribute("data-name")
.toLowerCase();

if(name.includes(value)){

card.style.display="block";

}else{

card.style.display="none";

}

});

}

</script>

</body>
</html>