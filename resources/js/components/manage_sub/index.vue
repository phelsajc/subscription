<template>
  <div class="wrapper">
    <navComponent></navComponent>
    <sidemenuComponent></sidemenuComponent>
    <div class="content-wrapper">
      <section class="content-header">
        <div class="container-fluid">
          <div class="row mb-2">
            <div class="col-sm-6">
              <h1>&nbsp;</h1>
            </div>
          </div>
        </div>
      </section>

      <section class="content">
        <div class="container-fluid">
          <div class="row">
            <div class="col-12">


              <div class="card card-primary">
                <div class="card-header">
                  <h3 class="card-title">Subcription Details</h3>
                  <div class="card-tools">
                    <button type="button" class="btn btn-tool" data-card-widget="collapse">
                      <i class="fas fa-minus"></i>
                    </button>
                  </div>
                </div>
                <div class="card-body">
                  <form class="user" @submit.prevent="addUser" enctype="multipart/form-data">
                    <div class="form-group">
                      <input type="text" class="form-control" placeholder="Promo" v-model="form.promo">
                    </div>
                    <div class="form-group">
                      <input type="text" class="form-control" placeholder="Amount" v-model="form.amount">
                    </div>
                    <div class="form-group">
                      <input type="text" class="form-control" placeholder="Status" v-model="form.status">
                    </div>
                    <div class="form-group">
                      <input type="text" class="form-control" placeholder="Next Billing" v-model="form.nextbilling">
                    </div>
                    <div class="form-group">
                      <button type="button" class="btn btn-warning btn-block" @click="change()">
                        Change Subcription
                      </button>
                    </div>
                  </form>

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
import Datepicker from 'vuejs-datepicker'
import api from '../../Helpers/api';

export default {
  components: {
    Datepicker
  },
  created() {
    if (!User.loggedIn()) {
      this.$router.push({ name: '/' })
    }
    const sessionId = new URLSearchParams(window.location.search).get("session_id");
    let id = sessionId ? sessionId : 0;

    const error = new URLSearchParams(window.location.search).get("error");
    if (error) {
      this.errorCheckout(sessionId);
      id = 0
    }
    
    this.mysubscription(id);
  },
  data() {
    return {
      form: {
        promo: '',
        amount: '',
        status: '',
        nextbilling: ''
      },
    }
  },
  methods: {
    mysubscription(id) {
      api.get('current_subscription/' + id)
        .then(response => {
          this.form.promo = response.data.name;
          this.form.amount = response.data.price;
          this.form.status = this.getStatus(response.data.status);
          this.form.nextbilling = response.data.nextbilling;
          if (id != 0) {
            Swal.fire(
              'Activated!',
              'You are now subscribeb to ' + response.data.name,
              'success'
            )
          }
        }).catch(error => console.log(error))
    },
    errorCheckout(id) {
      api.get('error_checkout/' + id)
        .then(response => {
          Swal.fire({
            title: 'Error Transaction',
            text: "Your transaction did not proceed.",
            icon: 'error',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Yes!'
          })

          Swal.fire(
            'Error Transaction!',
            'Your transaction did not proceed.',
            'error'
          )
        }).catch(error => console.log(error))
    },
    getStatus(id) {
      if (id == 1) {
        return 'Active';
      } else {
        return 'Cancelled';
      }
    },
    change() {
      location = '/subscription-plans'
    }
  }
}

</script>

<style>
.pull-right {
  float: right !important;
}
</style>