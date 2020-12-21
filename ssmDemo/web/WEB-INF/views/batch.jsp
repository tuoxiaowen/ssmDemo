<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<!Doctype>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>寒衣列表</title>
    <!-- 告诉浏览器屏幕自适应 -->
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Font Awesome -->
    <link rel="stylesheet" href="${PATH}/static/plugins/fontawesome-free/css/all.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://cdn.bootcss.com/ionicons/2.0.1/css/ionicons.min.css">
    <!-- DataTables -->
    <link rel="stylesheet" href="${PATH}/static/plugins/datatables-bs4/css/dataTables.bootstrap4.min.css">
    <link rel="stylesheet" href="${PATH}/static/plugins/datatables-responsive/css/responsive.bootstrap4.min.css">
    <!-- 主题样式 -->
    <link rel="stylesheet" href="${PATH}/static/dist/css/adminlte.min.css">
    <!-- 离线 Google 字体: Source Sans Pro -->
<%--    <link href="/AdminLTE-3.x/dist/css/google.css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">--%>
</head>
<body class="hold-transition sidebar-mini">
<div class="wrapper">
    <!-- 导航栏 -->
    <jsp:include page="/WEB-INF/common/header.jsp"/>
    <!-- /.navbar -->

    <!-- 主侧边栏容器 -->
    <jsp:include page="/WEB-INF/common/aside.jsp"/>

    <!-- Content Wrapper. 包含页面内容 -->
    <div class="content-wrapper">
        <!-- 内容标题（页面标题） -->
        <section class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1>数据表格</h1>
                    </div>
                </div>
            </div><!-- /.container-fluid -->
        </section>

        <!-- 主体内容 -->

        <section class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-header">
                                <button class="btn btn-info"  id="addBatch">添加寒衣</button>
                            </div>
                            <!-- /.card-header -->
                            <div class="card-body">
                                <table id="example2" class="table table-bordered table-hover">
                                    <thead>
                                    <tr>
                                        <th>渲染引擎</th>
                                        <th>浏览器</th>
                                        <th>平台</th>
                                        <th>引擎版本</th>
                                        <th>CSS 等级</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>2</td>
                                        <td>3</td>
                                        <td>4</td>
                                        <td>5</td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                            <!-- /.card-body -->
                        </div>

                    </div>
                    <!-- /.col -->
                </div>
                <!-- /.row -->
            </div>
            <!-- /.container-fluid -->
        </section>
        <!-- 模态框 -->
        <div class="modal fade" id="newBatch" style="padding-right: 16.9851px; display: block;">
            <div class="modal-dialog">
                <div class="modal-content bg-info">
                    <div class="modal-header">
                        <h4 class="modal-title">信息弹框</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">×</span></button>
                    </div>
                    <div class="modal-body">
                        <p>一个很好内容…</p>
                    </div>
                    <div class="modal-footer justify-content-between">
                        <button type="button" class="btn btn-outline-light" data-dismiss="modal">关闭</button>
                        <button type="button" class="btn btn-outline-light">保存修改</button>
                    </div>
                </div>
                <!-- /.modal-content -->
            </div>
            <!-- /.modal-dialog -->
        </div>
    </div>
    <!-- /.content-wrapper -->
    <jsp:include page="/WEB-INF/common/footer.jsp"/>

    <!-- Control Sidebar -->
    <aside class="control-sidebar control-sidebar-dark">
        <!-- 控制侧边栏内容在这里 -->
    </aside>
    <!-- /.control-sidebar -->
</div>

</body>
<!-- ./wrapper -->

<!-- jQuery -->
<!-- jQuery -->
<script src="${PATH}/static/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="${PATH}/static/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- DataTables -->
<script src="${PATH}/static/plugins/datatables/jquery.dataTables.min.js"></script>
<script src="${PATH}/static/plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>
<script src="${PATH}/static/plugins/datatables-responsive/js/dataTables.responsive.min.js"></script>
<script src="${PATH}/static/plugins/datatables-responsive/js/responsive.bootstrap4.min.js"></script>
<script src="${PATH}/static/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- Select2 -->
<script src="${PATH}/static/plugins/select2/js/select2.full.min.js"></script>
<!-- Bootstrap4 Duallistbox -->
<script src="${PATH}/static/plugins/bootstrap4-duallistbox/jquery.bootstrap-duallistbox.min.js"></script>
<!-- InputMask -->
<script src="${PATH}/static/plugins/moment/moment.min.js"></script><script src="${PATH}/static/plugins/moment/locale/zh-cn.js"></script>
<script src="${PATH}/static/plugins/inputmask/min/jquery.inputmask.bundle.min.js"></script>
<!-- date-range-picker -->
<script src="${PATH}/static/plugins/daterangepicker/daterangepicker.js"></script>
<!-- bootstrap color picker -->
<script src="${PATH}/static/plugins/bootstrap-colorpicker/js/bootstrap-colorpicker.min.js"></script>
<!-- Tempusdominus Bootstrap 4 -->
<script src="${PATH}/static/plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
<!-- Bootstrap 开关 -->
<script src="${PATH}/static/plugins/bootstrap-switch/js/bootstrap-switch.min.js"></script>
<!-- AdminLTE App -->
<script src="${PATH}/static/dist/js/adminlte.min.js"></script>
<!-- 用于演示 AdminLTE  -->
<script src="${PATH}/static/dist/js/demo.js"></script>
<%--<script src="${PATH}/static/layer/layer.js"></script>--%>
<!-- 页面脚本 -->
<script>

    $(function () {
        $("#addBatch").click(function () {
            $("#newBatch").modal("show");
        })
    });
</script>
</html>

