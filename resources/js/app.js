require('./bootstrap');

import Vue from 'vue'
import VueRouter from 'vue-router'
Vue.use(VueRouter)

//Router Imported
import {routes} from './routes'

// Import User Class
import User from './Helpers/User'
window.User = User

// Import Notification Class
import Notification from './Helpers/Notification'
window.Notification = Notification

//Sweetalert2
import Swal from 'sweetalert2';
window.Swal = Swal;

import VuePdfApp from "vue-pdf-app";
window.VuePdfApp = VuePdfApp;
Vue.component('navComponent', require('./components/template/nav.vue').default);
Vue.component('sidemenuComponent', require('./components/template/sidemenu.vue').default);
Vue.component('footerComponent', require('./components/template/footer.vue').default);

const Toast = Swal.mixin({
    toast: true,
    position: 'top-end',
    showConfirmButton: false,
    timer: 3000,
    timerProgressBar: true,
    didOpen: (toast) => {
      toast.addEventListener('mouseenter', Swal.stopTimer)
      toast.addEventListener('mouseleave', Swal.resumeTimer)
    }
});

window.Toast = Toast
  

const router = new VueRouter({
    routes,
    mode:'history'
})
  

const app = new Vue({
    el: '#app',
    router,
    data() {
        return {
        }
    }
});
