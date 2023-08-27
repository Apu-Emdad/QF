{{-- for modal --}}
<!-- Modal -->
<button type="button" class="btn btn-sm btn-primary" data-toggle="modal" data-target="#exampleModalCenter">
    Launch demo modal
</button>
<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle"
    aria-hidden="true">
    <div class="modal-dialog " role="document">
        <div class="modal-content">
            <div class="modal-header">

                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="input-group ">
                    <input type="text" class="form-control datepicker-range calendar" placeholder="dd/mm/yyyy">
                    <div class="input-group-append calendar-button" style="cursor: pointer;">

                        <span class="input-group-text">
                            <i class="fa fa-calendar"></i>
                        </span>


                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary">Save changes</button>
            </div>
        </div>
    </div>
</div>


{{-- for input --}}
<input type="text" class="form-control datepicker-range calendar" placeholder="dd/mm/yyyy">
<div class="input-group-append calendar-button" style="cursor: pointer;">

    <span class="input-group-text">
        <i class="fa fa-calendar"></i>
    </span>


</div>
