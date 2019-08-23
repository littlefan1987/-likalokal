
const initBookingForm = () => {

  const count = document.querySelector("#counter");
  let countValue = 1;
  if (count) {
  count.value = 1;
  }
  // count.step =1;

  const btnDecrement = document.querySelector(".actions a:first-child");
  const btnIncrement = document.querySelector(".actions a:last-child");

  const priceCents = document.querySelector("#price");
  //const priceCentsField = document.querySelector("#price-input");
  //const priceCentsValue = parseInt(priceCents.dataset.amountCents, 10);
  const myinput = document.querySelector("#count");
  const submit = document.querySelector("#submit");


  if (btnDecrement) {
    btnDecrement.addEventListener("click", (event) => {
      event.preventDefault();
      if (countValue > 1) {
        btnDecrement.classList.remove("disabled");
        countValue += parseInt(btnDecrement.dataset.offset, 10);
        count.innerText = countValue;
        //priceCentsField.value = parseInt(priceCents.dataset.amountCents, 10) * countValue;
        myinput.value = countValue;
        submit.value = `Pay ${parseInt(priceCents.dataset.amountCents, 10) * countValue } €`;
      } else {
        btnDecrement.classList.add("disabled");
      }
    });
  }

  if (btnIncrement) {
    btnIncrement.addEventListener("click", (event) => {
        console.log(count.innerText);
      event.preventDefault();
      btnDecrement.classList.remove("disabled");
      countValue += parseInt(btnIncrement.dataset.offset, 10);
      count.innerText = countValue;
      //priceCentsField.value = parseInt(priceCents.dataset.amountCents, 10) * countValue;
      myinput.value = countValue;
      submit.value = `Pay ${parseInt(priceCents.dataset.amountCents, 10) * countValue } €`;
    });
  }
}
export { initBookingForm };
