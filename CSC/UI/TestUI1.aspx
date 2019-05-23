<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="TestUI1.aspx.cs" Inherits="CSC.UI.TestUI1" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
<link href="<%=ResolveUrl("~/Content/jquery-ui.css") %>" rel="stylesheet" />
<link href="<%=ResolveUrl("~/Content/font-awesome.min.css") %>" rel="stylesheet" />
<script src="<%=ResolveUrl("~/Scripts/jquery-3.3.1.js") %>"></script>
<script src="<%=ResolveUrl("~/Scripts/jquery-ui.js") %>"></script>

<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/bs4/dt-1.10.18/datatables.min.css"/>
 
<script type="text/javascript" src="https://cdn.datatables.net/v/bs4/dt-1.10.18/datatables.min.js"></script>
    
<script type="text/javascript">
    $(document).ready(function () {
        $("#searchButton").click(function () {
            $('#TableId').DataTable({
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
                        'data': 'OPENING_DT',
                        'render': function(data) {
                            var date = new Date(data);
                            var month = date.getMonth() + 1;

                            return date.getDate() +
                                "/" +
                                (month.length > 1 ? month : "0" + month) +
                                "/" +
                                date.getFullYear();
                        }
                    }
                ],
                "data": function (d) {
                    return d;
                },
                bServerSide: true,
                sAjaxSource: 'GetAccountService.asmx/GetAccountsByDate1',
                sServerMethod: 'post'
            });
         });
        });

</script>
    <div class="row">
        <div class="col-md-4"></div>
        <div class="col-md-4">
            <div style="float:right;">
                <input id = "searchButton" type="button" Class="btn btn-primary" value="Search"/>
            </div>
        </div>
        <div class="col-md-4"></div>
    </div>
    <div class="row">
        <section class="col-md-12 col-md-push-0">
            <section>
                <div class="well bs-component">
                    <br />

                    <div class="row">
                        <div>
                            <table class="table table-striped table-bordered table-hover" id="TableId"
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