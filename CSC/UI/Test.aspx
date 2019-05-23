<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Test.aspx.cs" Inherits="CSC.UI.Test" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
<link href="<%=ResolveUrl("~/Content/jquery-ui.css") %>" rel="stylesheet" />
<link href="<%=ResolveUrl("~/Content/font-awesome.min.css") %>" rel="stylesheet" />
<script src="<%=ResolveUrl("~/Scripts/jquery-3.3.1.js") %>"></script>
<script src="<%=ResolveUrl("~/Scripts/jquery-ui.js") %>"></script>

<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/bs4/dt-1.10.18/datatables.min.css"/>
 
<script type="text/javascript" src="https://cdn.datatables.net/v/bs4/dt-1.10.18/datatables.min.js"></script>
    
<script type="text/javascript">
    $(function () {
        $("[id$=dateFromTextbox]").datepicker({
            changeMonth: true,
            changeYear: true,
            yearRange: '1950:2200',
            dateFormat: 'dd/mm/yy'
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
            if ($.fn.DataTable.isDataTable('#accountTable')) {
                $('#accountTable').DataTable().destroy();
            }
            $('#accountTable tbody').empty();
            $('#accountTable').DataTable(
            {
                "columnDefs": [
                    { "width": "5%", "targets": [0] },
                    { "className": "text-center custom-middle-align", "targets": [0, 1, 2, 3, 4] }
                ],
                "language":
                {
                    "processing": "<div class='overlay custom-loader-background'><img src='../loader.gif' /></div>"
                },
                "processing": true,
                "serverSide": true,
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
                    { 'data': 'GL_ACC_SL' },
                    { 'data': 'GL_ACC_NO' },  
                    { 'data': 'GL_ACC_NM' },
                    {
                        'data': 'SERVICE_TYPE_ID',
                        'render': function(serviceType) {
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
                            var month = date.getMonth() + 1;  
                            return date.getDate() + "/" + month + "/" + date.getFullYear();  
                        }  
                    },
                    {
                        'data': null,
                        'render': function (data) {
                            return ' <input id = "detailsButton" type="button" Class="btn btn-primary" value="Details"/>'
                        }
                    }
                ]
                
            });

        });
    });

</script>
    <div class="card text-center">
        <div class="card-header" style="background-color: #621e73; color: white"><strong>Search Accounts</strong></div>
        <div class="card-body">
            <div class="row">
                <div class="col-md-4"></div>
                <div class="col-md-4">
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <i class="far fa-calendar-plus"></i><span class="input-group-text"><span class="glyphicon glyphicon-calendar"></span>Date From</span>
                        </div>
                        <%--<asp:TextBox ID="dateFromTextbox" runat="server" CssClass="form-control" autocomplete="off"></asp:TextBox>--%>
                        <input type="text" name="name" id="dateFromTextbox" class="form-control" value="" placeholder="Date From" autocomplete="off" />
                    </div>
                </div>
                <div class="col-md-4"></div>
            </div>
            <div class="row">
                <div class="col-md-4"></div>
                <div class="col-md-4">
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="glyphicon glyphicon-calendar"></span><span class="input-group-text">Date To</span>
                        </div>
                        <%--<asp:TextBox ID="dateToTextbox" runat="server" CssClass="form-control" autocomplete="off"></asp:TextBox>--%>
                        <input type="text" name="name" id="dateToTextbox" class="form-control" value="" placeholder="Date To" autocomplete="off" />

                    </div>
                </div>
                <div class="col-md-4"></div>
            </div>
            <div class="row">
                <div class="col-md-4"></div>
                <div class="col-md-4">
                    <div style="float: right;">
                        <input id="searchButton" type="button" class="btn btn-primary" value="Search" />
                    </div>
                </div>
                <div class="col-md-4"></div>
            </div>
        </div>
    </div>
    <div class="row">
        <section class="col-md-12 col-md-push-0">
            <section>
                <div class="well bs-component">
                    <br />

                    <div class="row">
                        <div>
                            <table class="table table-striped table-bordered table-hover"
                                   id="accountTable"
                                   cellspacing="0"
                                   align="center"
                                   width="100%">
                                <thead>
                                <tr>
                                    <th>GL A/C Sl</th>
                                    <th>A/C No.</th>
                                    <th>A/C Name</th>
                                    <th>SERVICE TYPE ID</th>
                                    <th>OPENING DT</th>
                                    <th></th>
                                </tr>
                                </thead>
                            </table>
                        </div>
                    </div>
                </div>
            </section>
        </section>
    </div>
</asp:Content>
