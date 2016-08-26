(function() {
  (function() {
    var dropdown, i, len, ref, results, toggler;
    ref = document.getElementsByClassName('dropdown');
    results = [];
    for (i = 0, len = ref.length; i < len; i++) {
      dropdown = ref[i];
      toggler = dropdown.querySelector('[data-toggle="dropdown"]');
      if (toggler) {
        results.push(toggler.addEventListener("click", function(event) {
          return dropdown.classList.toggle("open");
        }));
      } else {
        results.push(void 0);
      }
    }
    return results;
  })();

}).call(this);
