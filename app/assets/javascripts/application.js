//= require rails-ujs
//= require_tree .

var buttons = document.querySelectorAll('.stripe-button-el')

for (var i = 0; i < buttons.length ; i++) {
  buttons[i].addEventListener("click", function(){
    document.getElementById('amount-user').value = this.previousElementSibling.dataset.amount
  });
}
