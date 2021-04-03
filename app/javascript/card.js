const pay = () => {
    Payjp.setPublicKey("pk_test_55e69268f1a8bb0a0b5d6849")
    const form = document.getElementById("charge-form");
    form.addEventListener("submit", (e) => {
      e.preventDefault();
    const formResult = document.getElementById("charge-form");
    const formData = new FormData(formResult);

        const card = {
            number: formData.get("item[number]"),
            cvc: formData.get("item[cvc]"),
            exp_month: formData.get("item[exp_month]"),
            exp_year: `20${formData.get("item[exp_year]")}`,
        };

        Payjp.createToken(card, (status, response) => {

            if (status == 200) {
              const token = response.id;
              const renderDom = document.getElementById("charge-form");
              const tokenObj = `<input value=${token} name='token' type="hidden"> `;
              renderDom.insertAdjacentHTML("beforeend", tokenObj);
              debugger;
            }
            document.getElementById("item_number").removeAttribute("name");
            document.getElementById("item_cvc").removeAttribute("name");
            document.getElementById("item_exp_month").removeAttribute("name");
            document.getElementById("item_exp_year").removeAttribute("name");

            document.getElementById("charge-form").submit();
         });
          
    });
  };
  
  window.addEventListener("load", pay);