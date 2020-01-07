    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        
        <!-- Small boxes (Stat box) -->
        <div class="row">
          <div class="col-lg-3 col-6"> 
            @include("layouts.small-box")
          </div>
          <!-- ./col -->
          <div class="col-lg-3 col-6">
            @include("layouts.small-box")
          </div>
          <!-- ./col -->
          <div class="col-lg-3 col-6">
            @include("layouts.small-box")
          </div>
          <!-- ./col -->
          <div class="col-lg-3 col-6">            
            @include("layouts.small-box")
          </div>
          <!-- ./col -->
        </div>
        <!-- /.row -->
        
        <!-- Main row -->
        <div class="row">
          <!-- Left col -->
          <section class="col-lg-7 connectedSortable">
            @include("layouts.Customtabs")
            @include("layouts.directchat")
            @include("layouts.todolist")
          </section>
          <!-- /.Left col -->

          <!-- right col (We are only adding the ID to make the widgets sortable)-->
          <section class="col-lg-5 connectedSortable">
            @include("layouts.Mapcard")
            @include("layouts.solidsalesgraph")
            @include("layouts.calendar")
          </section>
          <!-- right col -->
        </div>
        <!-- /.row (main row) -->
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->