---
layout: title_card
title-card1: Open Health Works
#title-card2: 
title-card3: Sponsorship Payment
title: Open Health Works
subtitle: 
permalink: /stripe
header_image: home_img.jpg
image_credit:
  - Credit: Paul Clarke
    URL: http://paulclarke.com
    Licence: "CC BY-NC"
---

<style>
 .title-card h2 {background:#7c334f;}
</style>

{:class="centre"}
## Use the appropriate button below to make a _Sponsorship Payment_

{:class="centre"}
<button id="checkout-button-sku_EwdVqg3tCIMdCx" role="link" class="btn btn-success">Sponsor (£1,250)</button>
<div id="error-message"></div>

<script src="https://js.stripe.com/v3"></script>
<script>
  var stripe = Stripe('pk_live_fzpKk5hafmL32DNDGUh4YwVK001P7mS42h');
  var checkoutButton = document.getElementById('checkout-button-sku_EwdVqg3tCIMdCx');
  checkoutButton.addEventListener('click', function () {
    stripe.redirectToCheckout({
      items: [{sku: 'sku_EwdVqg3tCIMdCx', quantity: 1}],
      successUrl: window.location.protocol + '//nhshackday.com/stripe/thanks',
      cancelUrl: window.location.protocol + '//nhshackday.com/stripe',
    })
    .then(function (result) {
      if (result.error) {
        var displayError = document.getElementById('error-message');
        displayError.textContent = result.error.message;
      }
    });
  });
</script>

{:class="centre"}
!["Open Health Works"]({% link /assets/branding/openhealthworks-logo-350px.png %}){:style="max-width:100%"}