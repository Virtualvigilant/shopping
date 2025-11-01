// Wait for the DOM to fully load
document.addEventListener('DOMContentLoaded', function() {
  
  // Get the M-Pesa button
  const mpesaBtn = document.getElementById('mpesaBtn');
  
  // Add a click listener to it
  mpesaBtn.addEventListener('click', function() {
    // Confirm the user actually wants to use M-Pesa
    const confirmPay = confirm("Do you want to pay via M-Pesa?");
    if (!confirmPay) return;

    // Ask for the phone number
    const phone = prompt("Enter your M-Pesa phone number (e.g. 2547XXXXXXXX):");
    if (!phone) {
      alert("Phone number is required!");
      return;
    }

    // Ask for amount — you can replace this with your cart total
    const amount = prompt("Enter amount to pay:");
    if (!amount || isNaN(amount)) {
      alert("Please enter a valid amount!");
      return;
    }

    // Send data to stkpush.php
    fetch('stkpush.php', {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({
        phone: phone,
        amount: amount
      })
    })
    .then(response => response.json())
    .then(data => {
      console.log("Response:", data);
      if (data.success) {
        alert("STK Push sent! Check your phone to complete the payment.");
      } else {
        alert("Error: " + (data.message || "Something went wrong."));
      }
    })
    .catch(error => {
      console.error("Error:", error);
      alert("Please check your phone to complete the payment.");
    });
  });
});
