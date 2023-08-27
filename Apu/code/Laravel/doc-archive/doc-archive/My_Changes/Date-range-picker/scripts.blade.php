{{-- For testing --}}
{{-- line 7-13 starts --}}
<script type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />
{{-- line 7-13 ends --}}

{{-- line 7-13 starts --}}
{{-- daterangepicker imports --}}
<script src="{{ asset('admin-assets/assets/js/moment.min.js') }}"></script>
<script src="{{ asset('admin-assets/assets/js/daterangepicker.min.js') }}"></script>
<link rel="stylesheet" type="text/css" href="{{ asset('admin-assets/assets/css/daterangepicker.css') }}" />

{{-- obsolete --}}
<script src="{{ asset('admin-assets/assets/js/datepicker/dist/js/bootstrap-datepicker.min.js') }}"></script>

{{-- line 7-13 ends --}}

{{-- line 22-28 starts --}}
    $(function() {
        $('[data-toggle="tooltip"]').tooltip();
        $.fn.datepicker.defaults.format = "dd-mm-yyyy";

        $(".datepicker").datepicker({
            format: 'dd-mm-yyyy',
            autoclose: true
        });
        /* ====Use .datepicker-range class to select two dates at a time ==== */
        $(".datepicker-range").daterangepicker({
            opens: 'center'
        });
        // Trigger datepicker on button click
        $('.calendar-button').on('click', function() {
            $(this).prev('.calendar').trigger('click');
        });
    });
{{-- line 22-28 ends --}}

add
-moment.min.js
-daterangepicker.min.js
-daterangepicker.css

delete
-bootstrap-datepicker.min.js
