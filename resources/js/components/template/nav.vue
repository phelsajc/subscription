<template>
  <nav id="topbar" class="main-header navbar navbar-expand navbar-white navbar-light" style="display: none"
    v-show="$route.path === '/' || $route.path === '/register' || $route.path === '/forget' ? false : true">
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" data-widget="pushmenu" href="#" role="button">
          <i class="fas fa-bars"></i>
        </a>
      </li>
      <li class="nav-item d-none d-sm-inline-block">
        <router-link to="/dashboards" class="nav-link">Home</router-link>
      </li>
    </ul>
  </nav>
</template>
<script>
export default {
  data() {
    return {}
  },
}
</script>