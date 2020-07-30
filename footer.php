 <!-- Footer -->
<div class="w3-container sticky fixed-bottom w3-dark-blue bg-primary w3-large w3-padding" style="z-index:4">
  <button class="w3-btn w3-hide-large w3-padding-0 w3-hover-text-grey"><i class="fa fa-bars"></i></button>
  <span class="w3-right">Copyright Samuel</span>
</div>

  <!-- End page content -->
</div>

<script>
// Get the Sidenav
var mySidenav = document.getElementById("mySidenav");

// Get the DIV with overlay effect
var overlayBg = document.getElementById("myOverlay");

// Toggle between showing and hiding the sidenav, and add overlay effect
function w3_open() {
    if (mySidenav.style.display === 'block') {
        mySidenav.style.display = 'none';
        overlayBg.style.display = "none";
    } else {
        mySidenav.style.display = 'block';
        overlayBg.style.display = "block";
    }
}

// Close the sidenav with the close button
function w3_close() {
    mySidenav.style.display = "none";
    overlayBg.style.display = "none";
}

       /* var h = document.getElementById("home");
        var b = document.getElementById("bases");
        var d = document.getElementById("depts");
        var p = document.getElementById("police");
        var m = document.getElementById("mwanted");
        var c = document.getElementById("cfile");

        function home() {
            h.style.display = "block";
            b.style.display = "none";
            d.style.display = "none";
            p.style.display = "none";
            m.style.display = "none";
            c.style.display = "none";
        }
        function bases() {
            b.style.display = "block";
            d.style.display = "none";
            p.style.display = "none";
            m.style.display = "none";
            c.style.display = "none";
            h.style.display = "block";
        }
        function depts() {
            d.style.display = "block";
            p.style.display = "none";
            m.style.display = "none";
            c.style.display = "none";
            h.style.display = "none";
            b.style.display = "none";
        }
         function police() {
            p.style.display = "block";
            d.style.display = "none";
            m.style.display = "none";
            c.style.display = "none";
            h.style.display = "none";
            b.style.display = "none";
        }
        function mwanted() {
            m.style.display = "block";
            p.style.display = "none";
            d.style.display = "none";
            c.style.display = "none";
            h.style.display = "none";
            b.style.display = "none";
        }
        function cfile() {
            c.style.display = "block";
            p.style.display = "none";
            m.style.display = "none";
            d.style.display = "none";
            h.style.display = "block";
            b.style.display = "none";
        }*/
</script>

</body>

<!-- Mirrored from www.w3schools.com/w3css/tryit.asp?filename=tryw3css_templates_analytics&stacked=h by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 05 Oct 2016 10:32:17 GMT -->
</html>
