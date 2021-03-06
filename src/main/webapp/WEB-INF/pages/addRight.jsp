<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../../common/base.jsp" %>
<%@ include file="../../common/commons.jsp" %>
<html>
<head>
    <title>角色管理</title>
</head>
<body style="width: 90%">

<div class="container">
    <input type="hidden" value="${requestScope.rid}" id="rid"/>
    <div class="row">
        <div class="col-md-1">
        </div>
    </div>
    <!--显示表格数据-->
    <div class="row">
        <div class="col-md-3">

        </div>
        <div class="col-md-8" id="rights">
            <ul class="sidebar-menu">

            </ul>
        </div>
    </div>

</div>
</body>
<script>

    $(function () {
        var rid = $("#rid").val();
        $.ajax({
            url: "${staticPath}/addRights",
            type: "get",
            dataType: "json",
            success: function (result) {
                $.each(result.extend.rights, function (index, item) {
                    if (item.fid == null) {
                        var FIDTd = $("<a href='#'></a>").append($("<i></i>").addClass(item.url))
                            .append($("<span></span>").append(item.right));
                    }
                    var UidTd = $("<ul style='list-style-type: none'></ul>");
                    $.each(result.extend.rights, function (index, s) {
                        if (s.fid == item.id) {
                            UidTd.addClass("treeview-menu").append($("<li></li>").append($("<a href='#'></a>").append(s.right))
                                .append("&nbsp;&nbsp;&nbsp;&nbsp;")
                                .append($("<i style='cursor: pointer' class='add_id' del_id='" + s.id + "' del_name='" + s.right + "' fid='" + s.fid + "' data-toggle=\"tooltip\" data-placement=\"top\" title=\"添加\" ></i>")
                                    .addClass("glyphicon glyphicon-plus")));
                        }
                    });
                    $("<li style='list-style-type: none'></li>").append(FIDTd).append(UidTd).appendTo(".sidebar-menu");

                });
            }
        });
    });

    $(document).on("click", ".add_id", function () {
        var rgId = $(this).attr("del_id");
        var fid = $(this).attr("fid");
        var del_name = $(this).attr("del_name");
        var rid = $("#rid").val();

        layer.confirm("确认添加 " + del_name + " 吗？", {
            btn: ['确定', '取消'] //按钮
        }, function () {
            $.ajax({
                url: "${staticPath}/addRight",
                type: "get",
                dataType: "json",
                data: {"rid": rid, "rgId": rgId, "fid": fid},
                success: function (result) {
                    if (result.code == 100) {
                        layer.load(0, {time: 1000});
                        setTimeout(function (args) {
                            layer.msg("添加成功！");
                        }, 1500);
                    }
                    else {
                        layer.load(0, {time: 1000});
                        setTimeout(function (args) {
                            layer.msg("添加失败！");
                        }, 1500);
                    }
                    setTimeout(function () {
                        location.reload();
                    }, 2000);
                }
            });
        }, function () {

        });

    });


</script>
</html>





