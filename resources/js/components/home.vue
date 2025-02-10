<template>
  <div class="wrapper">
    <navComponent></navComponent>
    <sidemenuComponent></sidemenuComponent>
    <div class="content-wrapper">
      <section class="content-header">
        <div class="container-fluid">
          <div class="row mb-2">
            <div class="col-sm-6">
              <h1>Dashboards</h1>
            </div>
          </div>
        </div>
      </section>
      <section class="content">
        <div class="container-fluid">
          <div>
            <div class="container-fluid" id="container-wrapper">
              <div class="row mb-3">
                <div class="col-xl-3 col-md-6 mb-4">
                  <div class="card h-100">
                    <div class="card-body">
                      <div class="row align-items-center">
                        <div class="col mr-2">
                          <div class="text-xs font-weight-bold text-uppercase mb-1">{{ this.subscriptionDetails.name }}
                          </div>
                          <div class="h5 mb-0 font-weight-bold text-gray-800">{{
                            getStatus(this.subscriptionDetails.status) }}</div>
                          <div class="mt-2 mb-0 text-muted text-xs">
                            <span class="text-success mr-2"><i class="fa fa-calendar"></i> Will expire on </span>
                            <span>{{ this.subscriptionDetails.nextbilling }}</span>
                          </div>
                        </div>
                        <div class="col-auto">
                          <i class="fas fa-calendar fa-2x text-primary"></i>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-xl-12 col-lg-7 mb-4">
                  <div class="card">
                    <div class="table-responsive">
                      <table class="table align-items-center table-flush">
                        <thead class="thead-light">
                          <tr>
                            <th>Date</th>
                            <th>Amount</th>
                            <th>Status</th>
                          </tr>
                        </thead>
                        <tbody>
                          <tr v-for="subscription in subscriptions.data" :key="subscription.id">
                            <td>{{ subscription.created_at }}</td>
                            <td>{{ subscription.amount }}</td>
                            <td>{{ subscription.status }}</td>
                          </tr>
                        </tbody>
                      </table>
                      <div>
                        <button @click="getPaymets(subscriptions.prev_page_url)" class="btn btn-info btn-xs"
                          :disabled="!subscriptions.prev_page_url">Previous</button>
                        <span>Page {{ subscriptions.current_page }} of {{ subscriptions.last_page }}</span>
                        <button @click="getPaymets(subscriptions.next_page_url)" class="btn btn-info btn-xs"
                          :disabled="!subscriptions.next_page_url">Next</button>
                      </div>
                    </div>
                    <div class="card-footer"></div>
                  </div>
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
import api from '../Helpers/api';

export default {
  created() {
    if (!User.loggedIn()) {
      this.$router.push({ name: '/' })
    }
    this.mysubscription();
    this.getPaymets();
  },
  data() {
    return {
      subscriptions: { data: [] }, // Holds API response
      subscriptionDetails: {}
    }
  },
  methods: {

    getPaymets(url = 'payment_history') {

      api.get(url)
        .then(response => {
          this.subscriptions = response.data;
        }).catch(error => console.log(error))
    },
    mysubscription(id) {
      api.get('current_subscription/' + 0)
        .then(response => {
          this.subscriptionDetails = response.data
        }).catch(error => console.log(error))
    },
    getStatus(id) {
      if (id == 1) {
        return 'Active';
      } else if (id == 2){
        return 'Cancelled';
      }else{        
        return 'No Subscription';
      }
    },
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
</style>