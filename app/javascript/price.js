window.addEventListener("load", function(){

    const price_field = document.getElementById("item-price")

    price_field.addEventListener("input", function(e){
       let fee = this.value / 10
       let appendfee = document.getElementById('add-tax-price');
       appendfee.textContent = fee
       
       let benefit = this.value - fee
       let appendbenefit = document.getElementById('profit')
       appendbenefit.textContent = benefit
       
    //    const feeHTML =
    //     `<div class="price-content">
    //       <div class="add-tax-price">
    //       ${fee}
    //       </div>
    //     </div>`;
        
    
        // addTaxPrice = document.getElementById("add-tax-price");
        // addTaxPrice.insertAdjacentHTML("afterend", feeHTML);
        // addTaxPrice.textContent(fee)
        

        // const benefitHTML =
        // `<div class="price-content">
        //   <div class="profit">
        //   ${benefit}
        //   </div>
        // </div>`;
        // profit = document.getElementById("profit");
        // profit.insertAdjacentHTML("afterend", benefitHTML);
        

      
    })
     
})


