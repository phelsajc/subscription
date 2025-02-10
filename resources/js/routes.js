
let login = require('./components/auth/login.vue').default;
let register = require('./components/auth/register.vue').default
let logout = require('./components/auth/logout.vue').default
let home = require('./components/home.vue').default
let sub_plans = require('./components/subscription_plans/index.vue').default
let manage_sub = require('./components/manage_sub/index.vue').default

export const routes = [
    { path: '/', component: login, name: '/' },
    { path: '/register', component: register, name: 'register' },
    { path: '/logout', component: logout, name: 'forget' },
    { path: '/dashboards', component: home, name: 'dashboards' },
    { path: '/subscription-plans', component: sub_plans, name: 'subscription-plans' },
    { path: '/manage-subscription', component: manage_sub, name: 'manage-subscription' },
]


