<template>
  <div class="wrapper">
    <navComponent></navComponent>
    <sidemenuComponent></sidemenuComponent>
    <div class="content-wrapper">

      <section class="content">
        <div class="container mt-5">
          <div class="row">
            <div class="col-md-4" v-for="(plan, index) in plans" :key="index">
              <div class="card text-center shadow-sm">
                <div class="card-header bg-primary text-white">
                  <h4>{{ plan.name }}</h4>
                </div>
                <div class="card-body">
                  <h2 class="text-primary">${{ plan.price }} / month</h2>
                  <button class="btn btn-primary mt-3" @click="confirmCheckout(plan)">Subscribe</button>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>
    </div>
    <footerComponent></footerComponent>
  </div>
</template>

<script type="text/javascript">
import api from '../../Helpers/api';
import { loadStripe } from "@stripe/stripe-js";

export default {
  created() {
    if (!User.loggedIn()) {
      this.$router.push({ name: '/' })
    }
    this.subscription_plans();
  },
  data() {
    return {
      plans: [],
      hasCurrentSubscription: false,
      currentSubscriptionId: 0,
    }
  },
  methods: {
    subscription_plans() {
      api.get('subscription_plans')
        .then(response => {
          this.plans = response.data.data;
          if (response.data.current_subscription != null) {
            this.hasCurrentSubscription = true;
            this.currentSubscriptionId = response.data.current_subscription.id;
          }
        }).catch(error => console.log(error))
    },
    async confirmCheckout(param) {
      if (this.hasCurrentSubscription) {
        Swal.fire({
          title: 'Are you sure?',
          text: "You are currently subscribe",
          icon: 'warning',
          showCancelButton: true,
          confirmButtonColor: '#3085d6',
          cancelButtonColor: '#d33',
          confirmButtonText: 'Yes!'
        }).then((result) => {
          if (result.isConfirmed) {
            this.checkout(param);
          }
        });
      } else {
        this.checkout(param);
      }
    },
    async checkout(param) {
      try {
        const payload = {
          plan: param.id,
          amount: param.price,
          hasCurrent: this.hasCurrentSubscription,
          currentSubscriptionId: this.currentSubscriptionId,
        };
        const response = await api.post("subscribe", payload);
        const stripe = await loadStripe(process.env.VUE_APP_STRIPE_PUBLIC);
        await stripe.redirectToCheckout({ sessionId: response.data.id });
      } catch (error) {
        console.error("Error:", error.response);
      }
    }
  },
}
</script>

<style>
.em_photo {
  height: 40px;
  width: 40px;
}

.to-right {
  float: right;
}

.spin_center {
  position: absolute;
  top: 50%;
  left: 50%;
  width: 300px;
  text-align: center;
  transform: translateX(-50%);
  /*display: none;*/
}

.btn-app {
  height: unset !important;
  padding: 0 1.5em 0 1.5em;
}

.card {
  border-radius: 10px;
  transition: transform 0.3s ease-in-out;
}

.card:hover {
  transform: scale(1.05);
}
</style>