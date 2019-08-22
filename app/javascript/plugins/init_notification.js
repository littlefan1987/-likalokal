const initNotification = () => {

  $(document).ready(function() {
    $(".alert-success").hide();
    $(".alert-success").fadeTo(2000, 500).slideUp(500, function(){
        $(".alert-success").slideUp(500);
    });
    $(".alert-danger").hide();
    $(".alert-danger").fadeTo(2000, 500).slideUp(500, function(){
        $(".alert-danger").slideUp(500);
    });
  });

};

export { initNotification };
