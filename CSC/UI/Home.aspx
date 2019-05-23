<%@ Page Title="SBS GL Deposit Setup" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="CSC.UI.Home" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <link href="<%=ResolveUrl("~/Content/jquery-ui.css")%>" rel="stylesheet" />
    <link href="<%=ResolveUrl("~/Content/bootstrap.css")%>" rel="stylesheet" />
    <link href="<%=ResolveUrl("~/Content/bootstrap-select.css")%>" rel="stylesheet" />
    <link href="<%=ResolveUrl("~/Content/fontawesome-all.css")%>" rel="stylesheet" />
    <link href="<%=ResolveUrl("~/Content/sweetalert.css")%>" rel="stylesheet" />
    <script src="<%=ResolveUrl("~/Scripts/jquery-3.3.1.js")%>"></script>
    <script src="<%=ResolveUrl("~/Scripts/jquery-ui.js")%>"></script>
    <script src="<%=ResolveUrl("~/Scripts/umd/popper.js")%>"></script>
    <script src="<%=ResolveUrl("~/Scripts/bootstrap.js")%>"></script>
    <script src="<%=ResolveUrl("~/Scripts/bootstrap-select.js")%>"></script>
    <script src="<%=ResolveUrl("~/Scripts/sweetalert.min.js")%>"></script>



    <%--data table--%>
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/bs4/dt-1.10.18/datatables.min.css" />
    <script type="text/javascript" src="https://cdn.datatables.net/v/bs4/dt-1.10.18/datatables.min.js"></script>
    <%--data table end--%>

   <script type="text/javascript">
       $(function () {
           $("[id$=dateFromTextbox]").datepicker({
               changeMonth: true,
               changeYear: true,
               yearRange: '1950:2200',
               dateFormat: 'dd/mm/yy',
           });
       });
       $(function () {
           $("[id$=dateToTextbox]").datepicker({
               changeMonth: true,
               changeYear: true,
               yearRange: '1950:2200',
               dateFormat: 'dd/mm/yy'
           });
       });


       $(document).ready(function () {

           $("#searchButton").click(function () {
               LoadAccountDatatable();
               GetSectorDropDown();
               GetGroupDropDown();
               GetDepositDropDown();
           });

           $('#accountTable tbody').on('click', 'tr', function () {

               var table = $('#accountTable').DataTable();
               var data_row = table.row($(this).closest('tr')).data();


               // $("#myModal").modal('show');
               $('#myModal').on('show.bs.modal', function () {
                   $('#acc_sl').val(data_row.GL_ACC_SL);
                   $('#acc_no').val(data_row.GL_ACC_NO);
                   $('#acc_nm').val(data_row.GL_ACC_NM);
                   if (data_row.SERVICE_TYPE_ID == 'I') {
                       $('#acc_typ').val("Islamic");
                   }
                   if (data_row.SERVICE_TYPE_ID == 'C') {
                       $('#acc_typ').val("Conventional");
                   }
                   var date = new Date(parseInt(data_row.OPENING_DT.substr(6)));
				   var day=date.getDate();
                   var month = date.getMonth() + 1;
				   if(day<10){
				   day="0"+day;
				   }
				   if(month<10){
				   month="0"+month;
				   }
				   var fullDate = day + "/" + month + "/" + date.getFullYear();

                   $('#opn_dt').val(fullDate);
                   $("#vt_tx").val('-1');
                   $("#vt_tx").selectpicker("refresh");
                   $("#pay_acc").val('-1');
                   $("#pay_acc").selectpicker("refresh");
                   $("#sbsFlag").val('-1');
                   $("#sbsFlag").selectpicker("refresh");
                   GetsbsDetails();
                   //console.log($("#sect_code option[value='902470']").text());
                   //$("#dp_code").selectpicker("refresh");
               }).modal('show');
           });

           $("#saveChangesButton").click(function () {
               var obj = {};
               obj.acc_sl = $('#acc_sl').val();
               obj.acc_no = $('#acc_no').val();
               obj.acc_nm = $('#acc_nm').val();
               obj.acc_typ = $('#acc_typ').val();
               obj.opn_dt = $('#opn_dt').val();
               obj.sbsFlag = $('#sbsFlag').val();
               obj.pd_group = $('#pd_group').val();
               obj.pay_acc = $('#pay_acc').val();
               obj.dp_code = $('#dp_code').val();
               obj.vt_tx = $('#vt_tx').val();
               obj.sect_code = $('#sect_code').val();
               $.ajax({
                   url: 'GetAccountService.asmx/SaveGlDepoSetup',
                   method: 'post',
                   data: '{obj: ' + JSON.stringify(obj) + '}',
                   contentType: "application/json; charset=utf-8",
                  // dataType: "json",
                   success: function (result) {
                       //console.log(data);
                       if (result.d == "error") {
                           swal("Failed to save", "Press Okay !", "warning")
                       } else {
                           swal(result.d, "Press Okay !", "success")
                       };
                       
                       LoadAccountDatatable();

                   },
                   error: function (err) {
                       console.log(err);
                   }
               });
           });
       });
       function LoadAccountDatatable() {
           if ($.fn.DataTable.isDataTable('#accountTable')) {
               $('#accountTable').DataTable().destroy();
           }
           $('#accountTable tbody').empty();
           $("#accountTable").css('visibility', 'visible');
           $('#accountTable').DataTable(
           {
               "columnDefs": [
                   { "width": "5%", "targets": [0] },
                   { "className": "text-center custom-middle-align", "targets": [0,1,2,3,4,5] },
                   { "orderable": false, "targets": [2,4,5]}
               ],
               "language":
               {
                   "processing": "<div class='overlay custom-loader-background'><img src='../loader.gif' /></div>",
                   "lengthMenu": "Show _MENU_ Accounts",
                   "loadingRecords": "Loading...",
                   //"processing": "Processing...",
                   "search": "Search:",
                   "zeroRecords": "No matching account found",
                   "info": "Showing _START_ to _END_ of _TOTAL_ accounts",
                   "emptyTable": "No data available in table"
               },
               "processing": true,
               "serverSide": true,
               fixedColumns: true,
               scrollY: 400,
               "ajax":
               {
                   "url": "GetAccountService.asmx/GetAccountsByDate1",
                   "contentType": "application/json",
                   "type": "GET",
                   "dataType": "JSON",
                   "data": function (d) {
                       d.dateFrom = $('#dateFromTextbox').val();
                       d.dateTo = $('#dateToTextbox').val();
                       return d;
                   },
                   "dataSrc": function (json) {
                       json.draw = json.d.draw;
                       json.recordsTotal = json.d.recordsTotal;
                       json.recordsFiltered = json.d.recordsFiltered;
                       json.data = json.d.data;

                       var return_data = json;
                       return return_data.data;
                   }
               },
               columns: [
                   { 'data': 'GL_ACC_NO' },
                   { 'data': 'GL_ACC_NM' },
                   {
                       'data': 'SERVICE_TYPE_ID',
                       'render': function (serviceType) {
                           if (serviceType == 'I') {
                               return "Islamic";

                           } else {
                               return "Conventional";
                           }
                       }
                   },
                   {
                       'data': 'OPENING_DT', 'render': function (date) {
                           var date = new Date(parseInt(date.substr(6)));
                           var day = date.getDate();
                           var month = date.getMonth() + 1;
                           if (day < 10) {
                               day = "0" + day;
                           }
                           if (month < 10) {
                               month = "0" + month;
                           }
                           return day + "/" + month + "/" + date.getFullYear();
                       }
                   },
                   {
                       'data': 'SECTOR_NAME',
                       "width": "30%"
                   },
                   {
                       'data': null,
                       'render': function (data) {
                           return '<button type="button" style="font-size:12px" class="btn btn-primary btn-sm"><i class="fas fa-info-circle"></i> Details</button>'
                           //return ' <input id = "detailsButton" type="button" Class="btn btn-primary" value="Details"/>'

                       }
                   }
               ]

           });
       };
       function GetGroupDropDown() {
           $.ajax({
               type: "POST",
               url: "GetAccountService.asmx/GetProductGroupDropdown",
			   dataType:'json',
               data: "{}",
               success: function (result) {
                   var s = '<option title="Please Select Product Group" value="-1"> </option>';
				   //console.log(result);
				   
                  for (var i = 0; i < result.length; i++) {
                       s += '<option value="' + result[i].SBS1_PRODUCT_GROUP_ID + '">' + result[i].SBS1_PRODUCT_GROUP_NM + '</option>';
                   }
                  $("#pd_group").html(s).selectpicker('refresh');
               }
           });
       }

       function GetDepositDropDown() {
           $.ajax({
               type: "POST",
               url: "GetAccountService.asmx/GetDepositDropdown",
               dataType: 'json',
               data: "{}",
               success: function (result) {
                   var s = '<option title="Please Select Deposit Code" value="-1"> </option>';
                   //console.log(result);

                   for (var i = 0; i < result.length; i++) {
                       s += '<option value="' + result[i].CB_DEPOSIT_CODE + '">' + result[i].DEPOSIT_NAME + '</option>';
                   }
                   $("#dp_code").html(s).selectpicker('refresh');
               }
           });
       }

       function GetSectorDropDown() {
           $.ajax({
               type: "POST",
               url: "GetAccountService.asmx/GetSectorDropdown",
               dataType: 'json',
               data: "{}",
               success: function (result) {
                   var s = '<option title="Please Select Sector Code" value="-1"> </option>';
                   //console.log(result);

                   for (var i = 0; i < result.length; i++) {
                       s += '<option value="' + result[i].SECTOR_ID + '">' + result[i].SECTOR_NAME + '</option>';
                   }
                   $("#sect_code").html(s).selectpicker('refresh');
                  
               }
           });
       }

       function GetsbsDetails() {
           $.ajax({
               type: "POST",
               url: "GetAccountService.asmx/GetSbsDetails",
               contentType: "application/json; charset=utf-8",
               dataType: 'json',
               data: JSON.stringify({
                   accNo: $('#acc_no').val(),
                   serviceId: $('#acc_typ').val()
               }),
               success: function (response) {
                   var sbs = jQuery.parseJSON(response.d);
                   console.log(sbs[0]);

                   //console.log(response.d);
                   //if(sbs[0].)
                   if (sbs[0] == null) {
                       DropDownRefresh();
                   } else {
                       $("#dp_code").selectpicker('val', sbs[0].DEPOSIT_CODE);
                       $("#pay_acc").selectpicker('val', sbs[0].IS_PAYABLE_AC);
                       $("#vt_tx").selectpicker('val', sbs[0].IS_VAT_TAX_AC);
                       console.log(sbs[0].SECTOR_ID_SBS);
                      $("#sect_code").selectpicker('val', parseInt(sbs[0].SECTOR_ID_SBS));
                       $("#pd_group").selectpicker('val', sbs[0].SBS1_PRODUCT_GROUP_ID);
                       $("#sbsFlag").selectpicker('val', sbs[0].SBS_ENABLE_FLAG);
                      
                   }

                   sbs = null;


               },
               error: function (err) {
                   alert("error");
                   //console.log(err);
               }
           });
       }
       function DropDownRefresh() {
           var defaultValue = -1;
           $("#dp_code").selectpicker('val', defaultValue);
           $("#pay_acc").selectpicker('val', defaultValue);
           $("#vt_tx").selectpicker('val', defaultValue);
           $("#sect_code").selectpicker('val', defaultValue);
           $("#pd_group").selectpicker('val', defaultValue);
           $("#sbsFlag").selectpicker('val', defaultValue);
       }
   </script>
    <style>
        .ui-datepicker .ui-datepicker-header {
            position: relative;
            padding: .2em 0;
            background-color: cornflowerblue;
            color: white;
        }
    </style>

    <div class="card text-center">
        <div class="card-header" style="background-color: #621e73; color:white">

            <strong>Search Accounts</strong></div>
        <div class="card-body">
            <div class="row">
                <div class="col-md-4"></div>
                <div class="col-md-4">
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text"><i class="far fa-calendar-alt"></i>&nbsp Date From</span>
                        </div>
                        <%--<asp:TextBox ID="dateFromTextbox" runat="server" CssClass="form-control" autocomplete="off"></asp:TextBox>--%>
                        <input type="text" name="name" id="dateFromTextbox"  class="form-control" value="" placeholder="Date From" autocomplete="nope" />
                    </div>
                </div>
                <div class="col-md-4"></div>
            </div>
    <div class="row">
        <div class="col-md-4"></div>
        <div class="col-md-4">
            <div class="input-group mb-3">
                <div class="input-group-prepend">
                   <span class="input-group-text"><i class="fas fa-calendar-check"></i>&nbsp Date To</span>
                </div>
                <%--<asp:TextBox ID="dateToTextbox" runat="server" CssClass="form-control" autocomplete="off"></asp:TextBox>--%>
                <input type="text" name="name"  id="dateToTextbox" class="form-control" value="" placeholder="Date To" autocomplete="nope"/>

            </div>
        </div>
        <div class="col-md-4"></div>
    </div>
    <div class="row">
        <div class="col-md-4"></div>
        <div class="col-md-4">
            <div style="float:right;">
                <%--<i class="fas fa-search"></i><input id = "searchButton" type="button" Class="btn btn-primary" value="Search"/>--%>
                <button type="button" id = "searchButton" class="btn btn-primary">
                    <i class="fas fa-search"></i> Search
                </button>
            </div>
        </div>
        <div class="col-md-4"></div>
    </div>
</div>
</div>
    <%--<div class="row" id="accountLists" style="margin-top: 20px; width: 100%; border:1px solid; visibility:hidden">--%>
        <table id="accountTable" class="table table-responsive table-hover" style="width: 100%; visibility:hidden">
            <thead class="bg-danger text-center text-white">
                <tr>
                    
                    <th>A/C No.</th>
                    <th>A/C Name</th>
                    <th>SERVICE TYPE</th>
                    <th>OPENING DT</th>
                    <th>Sector Name</th>
                    <th></th>
                </tr>
            </thead>
            <tbody style="height:10px"></tbody>
        </table>
    <%--</div>--%>

    <!-- Modal -->


 <div class="modal fade modal-fullscreen  footer-to-bottom" data-backdrop="static" id="myModal" aria-labelledby="myModalLabel" aria-hidden="true">
           <div class="modal-dialog animated zoomInLeft">
 		<div class="modal-content">
                
                <div class="modal-body">
                    <div class="card text-center" id="accountDetails" style="">
                        <div class="card-header" style="background-color: #621e73; color:white">
                            
                                <strong>Account Details</strong>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        </div>
                        
                        <div class="card-body">
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="input-group mb-3">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text">Account Serial</span>
                                            </div>
                                            <input type="text" id="acc_sl" class="form-control" style="background-color: lemonchiffon;"  readonly />
                                        </div>
                                    </div>
                                    <div class="col-md-1"></div>
                                    <div class="col-md-7">
                                        <div class="input-group mb-3">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text">Account Name</span>
                                            </div>
                                            <input type="text" id="acc_nm" class="form-control" style="background-color: lemonchiffon;" readonly />
                                        
                                        </div>
                                </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-4">
                                        
                                        <div class="input-group mb-3">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text">Account Number</span>
                                            </div>
                                            <input type="text" id="acc_no" class="form-control"style="background-color: lemonchiffon;"  readonly/>
                                        </div>
                                    </div>
                                    <div class="col-md-1"></div>
                                    <div class="col-md-3">
                                        <div class="input-group mb-3">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text">Service Type</span>
                                            </div>
                                            <input type="text" id="acc_typ" class="form-control" style="background-color: lemonchiffon;"  readonly/>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="input-group mb-3">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text">Opening Date</span>
                                            </div>
                                            <input type="text" id="opn_dt" class="form-control" style="background-color: lemonchiffon;"  readonly/>
                                        </div>
                                    </div>
                                </div>
                            </div>
                    </div>
                </div>

                    <div class="card text-center" id="accountDetailsDeposit" style="">
                        <div class="card-header" style="background-color: #621e73; color:white"><strong>SBS Deposit Setup</strong>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        </div>
                        
                        <div class="card-body">
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-md-3">
                                        <div class="input-group mb-3">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text">Enable SBS</span>
                                            </div>
                                            <%--<input type="text" id="sbsFlag" class="form-control" />--%>
                                            <select class="selectpicker form-control show-tick" data-style="btn-info" id="sbsFlag">
                                                <option value="-1">?</option>
                                                <option value="1">Yes</option>
                                                <option value="0">No</option>

                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-2"></div>
                                    <div class="col-md-7">
                                        <div class="input-group mb-3">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text">Product Group</span>
                                            </div>
                                            <select class="selectpicker form-control show-tick" data-live-search="true" data-style="btn-info" id="pd_group">
                                            </select>
                                        </div>
                                        
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-3">
                                        <div class="input-group mb-3">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text">Is Payable Account</span>
                                            </div>
                                            <%--<input type="text" id="sbsFlag" class="form-control" />--%>
                                            <select class="selectpicker form-control show-tick" data-style="btn-info" id="pay_acc">
                                                <option value="-1">?</option>
                                                <option value="1">Yes</option>
                                                <option value="0">No</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-2"></div>
                                    <div class="col-md-7">
                                       <div class="input-group mb-3">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text">Deposit Code</span>
                                            </div>
                                            <select class="selectpicker form-control show-tick" data-live-search="true" data-style="btn-info" id="dp_code"></select>

                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-3">
                                         <div class="input-group mb-3">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text">Is Vat Tax</span>
                                            </div>
                                            <%--<input type="text" id="sbsFlag" class="form-control" />--%>
                                            <select class="selectpicker form-control show-tick" data-style="btn-info" id="vt_tx">
                                                <option value="-1">?</option>
                                                <option value="1">Yes</option>
                                                <option value="0">No</option>
                                            </select>
                                        </div>
                                        
                                    </div>
                                    <div class="col-md-2"></div>
                                    
                                    <div class="col-md-7">
                                        <div class="input-group mb-3">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text">Sector Code</span>
                                            </div>
                                            <select class="selectpicker form-control show-tick" data-live-search="true" data-style="btn-info" id="sect_code"></select>

                                        </div>
                                    </div>
                                </div>
                                
                            </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal"><i class="far fa-window-close"></i> Close</button>
                    <button type="button" id="saveChangesButton" class="btn btn-primary"><i class="fas fa-save"></i> Save changes</button>
                </div>
            </div>
            <!-- /.modal-content -->
        </div>
</div>
     </div>
        <!-- /.modal-dialog -->

    <style>
        th { font-size: 13px; }
       td { font-size: 13px; }
         tr { height: 10px } 
        /*bootstrap select*/
        dropdown-menu.show {
            background-color: seashell;
        }

        /*<!-- .modal-style -->*/
        body {
            padding-top: 50px;
        }
        .dropdown-menu show{
            background-color: saddlebrown;
        }
        .modal.modal-fullscreen .modal-dialog,
        .modal.modal-fullscreen .modal-content {
            bottom: 0;
            left: 0;
            position: absolute;
            right: 0;
            top: 0;
        }
        .modal.modal-fullscreen .modal-dialog {
            margin: 0;
            width: 100%;
            animation-duration:0.6s;
        }
        .modal.modal-fullscreen .modal-content {
            border: none;
            -moz-border-radius: 0;
            border-radius: 0;
            -webkit-box-shadow: inherit;
            -moz-box-shadow: inherit;
            -o-box-shadow: inherit;
            box-shadow: inherit;
            /* change bg color below */
            /* background:#1abc9c; */
            width: 270%;
            height:100%;
            margin: 10px;
            border: 1px solid blue;
        }
        .modal.modal-fullscreen.force-fullscreen {
            /* Remove the padding inside the body */
        }
        .modal.modal-fullscreen.force-fullscreen .modal-body {
            padding: 0;
        }
        .modal.modal-fullscreen.force-fullscreen .modal-header,
        .modal.modal-fullscreen.force-fullscreen .modal-footer {
            left: 0;
            position: absolute;
            right: 0;
        }
        .modal.modal-fullscreen.force-fullscreen .modal-header {
            top: 0;
        }
        .modal.modal-fullscreen.force-fullscreen .modal-footer {
            bottom: 0;
        }


    </style>

</asp:Content>
