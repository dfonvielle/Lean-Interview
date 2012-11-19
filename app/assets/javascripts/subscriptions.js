// var subscription;
// 
// jQuery(function() {
//   Stripe.setPublishableKey($('meta[name="stripe-key"]').attr('content'));
//   return subscription.setupForm();
// });
// 
// subscription = {
//   setupForm: function() {
//     return $('#new_subscription').submit(function() {
//       $('input[type=submit]').attr('disabled', true);
//       if ($('#card_number').length) {
//         subscription.processCard();
//         return false;
//       } else {
//         return true;
//       }
//     });
//   },
//   processCard: function() {
//     var card;
//     card = {
//       number: $('#card_number').val(),
//       cvc: $('#card_code').val(),
//       expMonth: $('#card_month').val(),
//       expYear: $('#card_year').val()
//     };
//     return Stripe.createToken(card, subscription.handleStripeResponse);
//   },
//   handleStripeResponse: function(status, response) {
//     if (status === 200) {
// 			alert(response.id);
//       $('#subscription_stripe_card_token').val(response.id);
//       return $('#new_subscription')[0].submit();
//     } else {
// 			alert(response.error.message);
//       $('#stripe_error').text(response.error.message);
// 			// adds alert classes that create Bootstrap styling of red error messages in red block
//  			$('#stripe_error').addClass("alert alert-error");
//       return $('input[type=submit]').attr('disabled', false);
//     }
//   }
// };
// 
// 
