<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="common/base.jsp" %>
<%@ include file="/common/commons.jsp" %>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">


    <title> - 富文本编辑器</title>
    <meta name="keywords" content="">
    <meta name="description" content="">


</head>

<body class="gray-bg" id="addLeaveMsg">
<div class="wrapper wrapper-content">

    <div class="row">
        <div class="col-sm-12">
            <div class="ibox float-e-margins">

                <div class="ibox-content">

                    <div class="form-horizontal">

                        <div class="form-group">

                            <div class="col-sm-10 col-md-7">

                            </div>
                        </div>
                        <div class="row">
                            <label class="col-sm-1 col-md-2  control-label"></label>
                            <div class="col-sm-10 col-md-7 ">
                                <div class="ibox float-e-margins">

                                    <div class="ibox-content" id="eg">
                                        <div class="click2edit wrapper" id="content">
                                        </div>
                                    </div>
                                    <div id="zishu">
                                        <p>最多只能输入200个字</p>
                                    </div>
                                </div>
                                <div>
                                    <button type="button" onclick="submitMyTopic();" class="btn btn-primary"
                                            style="float: right; margin-right: 0px" id="btn">提交
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>

</div>


<!-- 自定义js -->
<script src="${staticPath}/js/content.js?v=1.0.0"></script>


<script>




    function getUrlParam(name) {
        var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)");
        var r = window.location.search.substr(1).match(reg);
        if (r != null) return unescape(r[2]);
        return null;
    };
    $(function () {
        $("#eg").addClass("no-padding");
        $('.click2edit').summernote({
            lang: 'zh-CN',
            focus: true
        });
    });
    var save = function () {
        $("#eg").removeClass("no-padding");
        var aHTML = $('.click2edit').code(); //save HTML If you need(aHTML: array).
        $('.click2edit').destroy();
    };


    var submitMyTopic = function () {
        var count = $('#content').code();
        count = count.replace(/[\r\n]/g, "");
        count = count.replace(/\ +/g, "");


        if (count == null || count === '') {
            layer.tips("不能为空", $('#btn'), {anim: 6});
            return false;
        }

        if (count.length > 1640) {
            layer.msg("内容不能超过200个字！")
            return false;
        }
        $.ajax({
            type: 'post',
            url: '${staticPath}/addLeaveMsg',
            dataType: "json",
            data: {"count": count},
            success: function (data) {
                if (data.code === 100) {
                    layer.tips("留言成功,等待审核！", $('#btn'), {anim: 6});
                    setTimeout(function () {
                        location.replace("${staticPath}/leaveMsg");
                    }, 1000);
                } else {
                    layer.tips("留言失败", $('#btn'), {anim: 6});
                    setTimeout(function () {
                        location.replace("${staticPath}/leaveMsg");
                    }, 1000);
                }
                // setTimeout(function (args) {
                // layer.confirm('继续留言吗？', {
                //     btn: ['是', '否'] //按钮
                // }, function () {
                //     location.reload();
                // }, function () {
                //
                // });
                // },3000);

            }
        });
    }
</script>


</body>

</html>

