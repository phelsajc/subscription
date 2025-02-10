<template>
    <div class="hold-transition login-page">
        <div class="login-box">
            <div class="card card-outline card-primary">
                <div class="card-header text-center">
                    <a href="javascript:void(0);" class="h1"><b>SUBSCRIPTION </b></a>
                </div>
                <div class="card-body">
                    <p class="login-box-msg">Sign in to start your session</p>

                    <small class="text-danger" v-if="errors == true">Please check your login credentials.</small>
                    <form class="user" @submit.prevent="login">
                        <div class="input-group mb-3">
                            <input type="text" class="form-control" id="exampleInputEmail" aria-describedby="emailHelp"
                                placeholder="Enter Email" v-model="form.email">
                            <div class="input-group-append">
                                <div class="input-group-text">
                                    <span class="fas fa-user"></span>
                                </div>
                            </div>
                        </div>
                        <div class="input-group mb-3">
                            <input type="password" class="form-control" id="exampleInputPassword"
                                placeholder="Enter Password" v-model="form.password">
                            <div class="input-group-append">
                                <div class="input-group-text">
                                    <span class="fas fa-lock"></span>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <button type="submit" class="btn btn-primary btn-block">Login</button>
                            <button type="button" @click="register()"
                                class="btn btn-success btn-block">Register</button>
                        </div>
                        <hr>
                    </form>
                </div>
            </div>
        </div>
    </div>
</template>

<style lang="scss" scoped>
@import "../../../../public/backend2/dist/css/adminlte.min.css";
</style>

<script type="text/javascript">

import api from '../../Helpers/api';
export default {
    created() {
    },

    data() {
        return {
            form: {
                email: null,
                password: null,
            },
            errors: false,
            img: '../../../../backend2/premier.jpg'
        }
    },
    methods: {
        login() {
            api.post('auth/login', this.form)
                .then(response => {
                    this.errors = true;
                    User.responseAfterLogin(response)
                    location = '/dashboards'
                    Toast.fire({
                        icon: 'success',
                        title: 'Signed-in Successfully'
                    })
                })
                .catch(error => error ? this.errors = true : false)
                .catch(

                    Toast.fire({
                        icon: 'warning',
                        title: 'User Not Found!'
                    }),
                    console.log(this.errors)
                )
        },
        register() {
            this.$router.push('/register')
        }
    },
}

</script>

<style></style>