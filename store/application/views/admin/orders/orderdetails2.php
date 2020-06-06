<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Admin | Dashboard</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.5 -->
    <link rel="stylesheet" href="<?php echo base_url($this->config->item("theme_admin")."/bootstrap/css/bootstrap.min.css"); ?>" />
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.12/css/jquery.dataTables.min.css" />
    <link rel="stylesheet" href="https://cdn.datatables.net/buttons/1.2.1/css/buttons.dataTables.min.css" />
    <!-- DataTables -->
    <link rel="stylesheet" href="<?php echo base_url($this->config->item("theme_admin")."/plugins/datatables/dataTables.bootstrap.css"); ?>">
    <!-- Theme style -->
    <link rel="stylesheet" href="<?php echo base_url($this->config->item("theme_admin")."/dist/css/AdminLTE.css
    "); ?>">
    <!-- AdminLTE Skins. Choose a skin from the css/skins
         folder instead of downloading all of them to reduce the load. -->
    <link rel="stylesheet" href="<?php echo base_url($this->config->item("theme_admin")."/dist/css/skins/_all-skins.min.css"); ?>">
    
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <style>
     @media print{
        .non-print{
            display: none;
        }
     }
     .table { 
        margin-bottom: 2px; 
        border-width: 0px; 
        }
     
     
     </style> 
  </head>
  <body class="hold-transition skin-blue sidebar-mini">
    <div class="wrapper">
        <!--sider -->
        <?php  $this->load->view("admin/common/sidebar"); ?>
        
        <div class="main-panel">
            <!--head -->
            <?php  $this->load->view("admin/common/header"); ?>
            <!--content -->
            <div class="content">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-12">
                            <?php  if(isset($error)){ echo $error; }
                                    echo $this->session->flashdata('success_req'); ?>
                            <div class="card">
                                <div class="card-header card-header-icon" data-background-color="purple">
                                    <i class="material-icons">assignment</i>
                                </div>
                                <div class="card-content">
                                    <h4 class="card-title"><?php echo $this->lang->line("Order Detail");?></h4>
                                    <!--a class="pull-right" href="<?php echo site_url(""); ?>">ADD NEW STORE</a-->
                                    <div class="toolbar">
                                        <!--        Here you can write extra buttons/actions for the toolbar              -->
                                    </div>
                                    <div class="material-datatables">
                                        <table id="datatables" class="table table-striped table-no-bordered table-hover" cellspacing="0" width="100%" style="width:100%">
                                            <thead>
                                                <tr>
                                                    <th colspan="3" class="text-center"><?php echo $this->lang->line("Order Details");?></th>
                                                    
                                                    <!--th class="text-center" style="width: 100px;"> <?php echo $this->lang->line("Action");?></th-->
                                                </tr>
                                            </thead>
                                            <!--tfoot>
                                                <tr>
                                                    <th class="text-center">Product Name</th>
                                                    <th class="text-center">Price</th>
                                                    <th class="text-center">Start Date</th>
                                                    <th class="text-center">Start Time</th>
                                                    <th class="text-center">End Date</th>
                                                    <th class="text-center">End Time</th>
                                                    <th class="text-center">Expire</th>
                                                    <th class="text-center" style="width: 100px;"> <?php echo $this->lang->line("Action");?></th>
                                                </tr>
                                            </tfoot-->
                                            <tbody>
                                                <tr>
                                                    <td colspan="3">
                                                        <table class="table">
                                                            <tr>
                                                                <td valign="top">
                                                                <strong> <?php echo $this->lang->line("Order Id : ");?><?php echo $order->sale_id; ?></strong>
                                                                <br />

                                                                <strong>  <?php echo $this->lang->line("Order Date : ");?><?php echo $order->on_date; ?></strong>
                                                                <br />

                                                                </td>
                                                                <td>
                                                                    <strong> <?php echo $this->lang->line("Delivery Details :");?></strong><br />
                                                                    <strong>  <?php echo $this->lang->line("Contact : ");?><?php echo $order->user_fullname ; ?>, <br/> <?php echo $this->lang->line("Contact : ");?> <?php echo $order->user_phone; ?></strong>
                                                                    <br />
                                                                    <strong>  <?php echo $this->lang->line("Address :");?></strong>
                                                                    <address>
                                                                        <?php echo $order->socity_name; ?><br />
                                                                        <?php echo $order->house_no; ?>
                                                                    </address>
                                                                    <br />
                                                                     <?php echo $this->lang->line("Delivery Time :");?> <?php echo $order->delivery_time_from." to ".$order->delivery_time_to; ?></p>
                                                                 </td>
                                                                
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <th><?php echo $this->lang->line("Product Name");?></th>
                                                    <th><?php echo $this->lang->line("Qty");?></th>
                                                    <th> <?php echo $this->lang->line("Total Price");?><?php echo $this->config->item("currency");?></th>
                                                </tr>
                                                <?php
                                                    $total_price = 0;
                                                    foreach($order_items as $items){
                                                        ?>
                                                        <tr>
                                                            <td><?php echo $items->product_name; ?><br />
                                                            <?php echo $items->unit_value." ".$items->unit. " (".$this->config->item("currency")." $items->price ) "; ?>
                                                            </td>
                                                            <td>
                                                                <?php echo $items->qty ; ?>
                                                            </td>
                                                            <td>
                                                                <?php echo $items->qty * $items->price;
                                                                $total_price = $total_price + ($items->qty * $items->price);
                                                                 ?>
                                                            </td>
                                                        </tr>
                                                        <?php
                                                    }
                                                ?>
                                                <tr>
                                                    <td colspan="2"><strong class="pull-right"> <?php echo $this->lang->line("Total :");?></strong></td>
                                                    <td >
                                                        <strong class=""><?php echo $total_price; ?>  <?php echo $this->config->item("currency");?></strong>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td colspan="2"><strong class="pull-right"><?php echo $this->lang->line("Delivery Charges");?> :</strong></td>
                                                    <td >
                                                        <strong class=""><?php echo $order->delivery_charge; ?> <?php echo $this->config->item("currency");?></strong>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2"><strong class="pull-right"><?php echo $this->lang->line("Net Total Amount");?> :</strong></td>
                                                    <td >
                                                        <strong class=""><?php echo $net = $total_price + $order->delivery_charge; ?><?php echo $this->config->item("currency");?> </strong>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                <!-- end content-->
                            </div>
                            <!--  end card  -->
                        </div>
                        <!-- end col-md-12 -->
                    </div>
                    <!-- end row -->
                </div>
            </div>
            <!--footer -->
            <?php  $this->load->view("admin/common/footer"); ?>
        </div>
    </div>

    <!-- jQuery 2.1.4 -->
    <script src="<?php echo base_url($this->config->item("theme_admin")."/plugins/jQuery/jQuery-2.1.4.min.js"); ?>"></script>
    <!-- jQuery UI 1.11.4 -->
    <script src="https://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
    <script src="//code.jquery.com/jquery-1.12.3.js"></script>
    <script src="https://cdn.datatables.net/1.10.12/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.2.1/js/dataTables.buttons.min.js"></script>
    <script src="//cdn.datatables.net/buttons/1.2.1/js/buttons.print.min.js"></script>
    <script>
    $(document).ready(function() {
    $('.data_table').DataTable( {
        dom: 'Bfrtip',
        buttons: [
             'print'
        ]
    } );
} );
    </script>
    <!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
    <script>
      $.widget.bridge('uibutton', $.ui.button);
    </script>
    <!-- Bootstrap 3.3.5 -->
    <script src="<?php echo base_url($this->config->item("theme_admin")."/bootstrap/js/bootstrap.min.js"); ?>"></script>
    <!-- DataTables -->
    <script src="<?php echo base_url($this->config->item("theme_admin")."/plugins/datatables/jquery.dataTables.min.js"); ?>"></script>
    <script src="<?php echo base_url($this->config->item("theme_admin")."/plugins/datatables/dataTables.bootstrap.min.js"); ?>"></script>
    <!-- AdminLTE App -->
    <script src="<?php echo base_url($this->config->item("theme_admin")."/dist/js/app.min.js"); ?>"></script>
    <!-- AdminLTE for demo purposes -->
    <script src="<?php echo base_url($this->config->item("theme_admin")."/dist/js/demo.js"); ?>"></script>
    
    <script>
      $(function () {
        
        $('#example2').DataTable({
          "paging": true,
          "lengthChange": false,
          "searching": true,
          "ordering": true,
          "info": true,
          "autoWidth": false
        });
        $("body").on("change",".tgl_checkbox",function(){
            var table = $(this).data("table");
            var status = $(this).data("status");
            var id = $(this).data("id");
            var id_field = $(this).data("idfield");
            var bin=0;
                                         if($(this).is(':checked')){
                                            bin = 1;
                                         }
            $.ajax({
              method: "POST",
              url: "<?php echo site_url("admin/change_status"); ?>",
              data: { table: table, status: status, id : id, id_field : id_field, on_off : bin }
            })
              .done(function( msg ) {
                alert(msg);
              }); 
        });
      });
    </script>
  </body>
</html>
