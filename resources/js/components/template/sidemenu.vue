<template>
  <aside id="sidebar" class="main-sidebar sidebar-dark-primary elevation-4">
    
    <span class="brand-text font-weight-light">&nbsp;</span>
    <div class="sidebar">
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">

          <li class="nav-item">
            <router-link to="/dashboards"> <a href="#" class="nav-link"
                :class="{ 'active': this.$route.name == 'dashboards' || this.$route.name == 'dashboards' }">
                <i class="far fa-circle nav-icon"></i>
                Dashboard
              </a></router-link>
          </li>

          <li class="nav-item">
            <router-link to="/subscription-plans"> <a href="#" class="nav-link"
                :class="{ 'active': this.$route.name == 'subscription-plans' || this.$route.name == 'subscription-plans' }">
                <i class="far fa-circle nav-icon"></i>
                Subscription Plans
              </a></router-link>
          </li>

          <li class="nav-item">
            <router-link to="/manage-subscription?session_id=0"> <a href="#" class="nav-link"
                :class="{ 'active': this.$route.name == 'manage-subscription' || this.$route.name == 'manage-subscription' }">
                <i class="far fa-circle nav-icon"></i>
                Manage Subscription
              </a></router-link>
          </li>

          <li class="nav-item">
            <router-link to="/logout" class="nav-link">
              <p>Logout</p>
            </router-link>
          </li>
        </ul>
      </nav>
    </div>
  </aside>
</template>
<script>
export default {
  data() {
    return {

    }
  },
}
</script>