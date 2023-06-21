<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: 24255
  Date: 2019/8/22
  Time: 23:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>Specific Information About The Animals</title>
    <style type="text/css">
        .myDiv {
            margin-top: 40px;
        }
    </style>
    <link rel="stylesheet" href="${path}/static/bootstrap/css/bootstrap.min.css">
    <link href="${path}/static/css/user/jquery.slideBox.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" href="${path}/static/css/user/show.css">
    <script src="${path}/static/js/user/jquery-2.2.3.min.js"></script>
    <script src="${path}/static/bootstrap/js/bootstrap.js"></script>
    <script src="${path}/static/js/user/jquery.slideBox.min.js" type="text/javascript"></script>
    <script src="${path}/static/js/user/jquery.comment.js"></script>
</head>
<body>
<div class="myDiv">
    <div>
        <h2>Animals for adoption</h2>
        <center>
            <div id="demo1" class="slideBox">
                <ul class="items">
                    <c:forEach items="${pics}" var="pic">
                        <li>
                            <a href=""><img class="my-img" src="/static/images/animal/${pic}"></a>
                        </li>
                    </c:forEach>
                </ul>
            </div>
            <div class="name">
                <img src="/static/images/adopt/p1.jpg" height="50px" width="50px">
                <span>My name is ${pet.petName}</span>
            </div>
        </center>
        <div class="animal">
            <div class="group">
                <div class="animalX1">
                    <img src="/static/images/adopt/p2.jpg"><span>serial number</span><br>
                    <p>${pet.id}</p>
                </div>
                <div class="animalX2">
                    <img src="/static/images/adopt/p3.jpg"><span>birthday</span><br>
                    <p>
                        <fmt:formatDate pattern="yyyy-MM-dd" value="${pet.birthday}"/>
                    </p>
                </div>
            </div>
            <div class="group">
                <div class="animalX3">
                    <img src="/static/images/adopt/p4.jpg"><span>breed</span><br>
                    <p>${pet.petType}</p>
                </div>
                <div class="animalX4">
                    <img src="/static/images/adopt/p5.jpg"><span>gender</span><br>
                    <p>${pet.sex}</p>
                </div>
            </div>
        </div>
        <div class="animal_me">
            <div class="animal_me1">
                <img src="/static/images/adopt/p6.jpg">
                <img src="/static/images/adopt/p7.jpg">
                <img src="/static/images/adopt/p8.jpg">
                <img src="/static/images/adopt/p9.jpg">
                <img src="/static/images/adopt/p10.jpg">
            </div>
            <div class="animal_me2"><p>Hi, I am${pet.petName}.${pet.remark}.Can you bring me home？</p></div>
            <div class="animal_me3"><img src="/static/images/adopt/p11.jpg"></div>
        </div>
        <div class="my_btn">
            <button class="btn btn-primary btn-lg" id="pet_adopt_modal_btn">I'd like to adopt</button>
            <button class="btn btn-primary btn-lg" id="tianchuan_btn"
                    style="float: right;position: relative;left: 150px;bottom: 45px">back to center
            </button>
        </div>
    </div>

    <!-- 模态框（Modal） -->
    <div class="modal fade" id="myAdopt" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                        &times;
                    </button>
                    <h4 class="modal-title" id="myModalLabel">
                        Please confirm personal information
                    </h4>
                </div>
                <div class="modal-body">
                    <form class="form-horizontal" id="new_adopt_form">
                        <input type="hidden" value="${user.id}" name="id">
                        <div class="form-group">
                            <label for="new_Name" class="col-sm-2 control-label">
                                Adopter： </label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="new_Name"
                                       placeholder="Please input the name of the adopter" name="userName" value="${user.userName}" />
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="new_petName" class="col-sm-2 control-label">
                                Pet name： </label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="new_petName"
                                       placeholder="Please input the name fo the pet" name="petName" value="${pet.petName}" readonly>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="new_Sex" class="col-sm-2 control-label">
                                gender： </label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="new_Sex"
                                       placeholder="Please input the gender of the adopter" name="sex" value="${user.sex}" />
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="new_tel" class="col-sm-2 control-label">
                                phone number： </label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="new_tel"
                                       placeholder="Please input the phone number of the adopter" name="telephone" value="${user.telephone}" />
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="new_Email" class="col-sm-2 control-label">
                                email： </label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="new_Email"
                                       placeholder="Please input the email of the adopter" name="new_Email" value="${user.email}" />
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="new_Adress" class="col-sm-2 control-label">
                                address： </label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="new_Adress"
                                       placeholder="Please input the address of the adopter" name="address" value="${user.address}" />
                            </div>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal" id="adopt_btn">close
                    </button>
                    <button type="button" class="btn btn-primary" id="submit_btn">submit</button>
                </div>
            </div><!-- /.modal-content -->
        </div><!-- /.modal -->
    </div>

    <div class="container">
        <%--where to store the comments--%>
        <div class="comment-list">

        </div>

        <div class="commentbox">
            <textarea cols="80" rows="50" placeholder="Say something" class="mytextarea" id="content"></textarea>
            <div class="btn btn-info pull-right" id="comment">comment</div>
        </div>
    </div>
</div>
<%--main reply--%>
<div class="modal fade" id="saveAnswer" tabindex="-1" role="dialog" aria-labelledby="myModalLabel1" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel1">comment</h4>
            </div>
            <div class="modal-body">
                <form id="save_answer_form">
                    <input type="hidden" name="id" id="edit_id">
                    <textarea class="form-control" id="edit_content" placeholder="Please submit your comment！" name="content"></textarea>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal" id="comment_btn">close</button>
                <button type="button" class="btn btn-primary" id="save_answer_btn">submit</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>
<div class="modal fade" id="saveAnswers" tabindex="-1" role="dialog" aria-labelledby="myModalLabel2" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel2">comment</h4>
            </div>
            <div class="modal-body">
                <form id="save_answers_form">
                    <input type="hidden" name="id" id="answer_id"<%-- value="${answer.id}"--%>>
                    <input type="hidden" name="comment_id" id="comment_id"<%-- value="${answer.comment.id}"--%>>
                    <textarea class="form-control" id="answer_content" placeholder="Please submit your comment！" name="content"></textarea>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal" id="answer_btn">close</button>
                <button type="button" class="btn btn-primary" id="save_answers_btn">submit</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>
<script>
    var user = "${sessionScope.user}";

    jQuery(function ($) {
        $('#demo1').slideBox();
    });

    var id = "${sessionScope.pet}";

    $(function () {
        to_page();
    });

    function to_page() {
        $("#content").val("");
        //data in session
        $.ajax({
            url: "${path}/comment/petComments?petId=" + "${pet.id}",
            type: "GET",
            success: function (result) {
                submit(result);
            },
            error: function (result) {
                alert("Comment export failure");
            }
        });
    }

    //strings connecting
    function submit(result) {
        //delete data
        $(".comment-list").empty();
        //对结果进行遍历
        var comments = result.extend.comment;
        console.log(result.extend.comment);
        $.each(comments, function (index, comment) {
            var headTd = $("<header></header>").append($("<img>").attr("src", "/static/images/user/" + (comment.user.pic)));
            var head = $("<div></div>").addClass("comment-right");
            var userNameTd = $("<h3></h3>").append(comment.user.userName);
            var bodyTd = $("<div></div>").addClass("comment-content-header");
            var timeTd = $("<span></span>").append($("<i></i>").addClass("glyphicon glyphicon-time")).append(comment.commentTime);
            bodyTd.append(timeTd);
            var commentTd = $("<p></p>").addClass("content").append(comment.content);
            var answer = $("<div></div>").addClass("comment-content-footer");
            var answerHead = $("<div></div>").addClass("row");
            var answerbtn = $("<div></div>").addClass("col-md-2").append($("<span></span>").addClass("reply-btn").append("回复").attr("save-id", comment.id));
            answerHead.append(answerbtn);
            answer.append(answerHead);
            var replayListTd = null;
            if (comment.answer != null) {
                var answers = comment.answer;
                replayListTd = $("<div></div>").addClass("reply-list");
                $.each(answers, function (index, answer) {
                    if (answer.replayId != null) {
                        var replay = $("<div></div>").append($("<a></a>").append(answer.user.userName)).append("回复：").append($("<a></a>").append(answer.answer.user.userName).append("  ")).append($("<span></span>").append(answer.content));
                        var contentTd = $("<p></p>").append($("<span></span>").append(answer.answerTime)).append($("<span></span>").addClass("reply-list-btn").append("回复").attr("saves-id", answer.id));
                        var replayTd = $("<div></div>").addClass("reply").append(replay).append(contentTd);
                        replayListTd.append(replayTd);
                    } else {
                        var replay = $("<div></div>").append($("<a></a>").append(answer.user.userName)).append("回复：").append($("<a></a>").append(comment.user.userName).append("  ")).append($("<span></span>").append(answer.content));
                        var contentTd = $("<p></p>").append($("<span></span>").append(answer.answerTime)).append($("<span></span>").addClass("reply-list-btn").append("回复").attr("saves-id", answer.id));
                        var replayTd = $("<div></div>").addClass("reply").append(replay).append(contentTd);
                        replayListTd.append(replayTd);
                    }
                });
            }
            head.append(userNameTd).append(bodyTd).append(commentTd).append(answer).append(replayListTd);
            $("<div></div>").addClass("comment-info")
                .append(headTd)
                .append(head)
                .appendTo(".comment-list")
        });
    };

    $("#comment").click(function () {
        var comment = $("#content").val();
        if (comment == null) {
            alert("Please input before you submit your comment")
        }
        ;
        $.ajax({
            url: "${path}/comment/create?content=" + comment,
            type: "GET",
            success: function (result) {
                alert("comment success");
                to_page();
            },
            error: function (result) {
                alert("comment fail")
            }
        })
    });


    //remove the type of tables and content
    function reset_form(ele) {
        $(ele)[0].reset();
        //remove the type of tables and content
        $(ele).find("*").removeClass("has-error has-success");
        $(ele).find(".help-block").text("");
    }

    //click the apply button to pop up the modal
    $("#pet_adopt_modal_btn").click(function () {
        //table reset
        reset_form("#new_adopt_form");
        $("#new_id").val("${user.id}");
        $("#new_userName").val("${user.userName}");
        $("#new_sex").val("${user.sex}");
        $("#new_telephone").val("${user.telephone}");
        $("#new_Email").val("${user.email}");
        $("#new_address").val("${user.address}");
        //pop out the modal
        $("#myAdopt").modal({
            backdrop: "static"
        });
    });
    //click save, and saved in apply table
    $("#submit_btn").click(function () {
        var ted = document.getElementById("new_adopt_form");
        var adopt = new FormData(ted);
        console.log(adopt);
        $.ajax({
            url: "${path}/adopt/create",
            type: "POST",
            processData: false,  // tell jQuery do not deal with the data sent
            contentType: false, // tell Query do not setting Content-Type requirement
            date: adopt,//Data not used here ny hr control layer ca be omitted.
            success: function (result) {
                alert("Application submitted successfully");
                $("#adopt_btn").click();
            },
            error: function (result) {
                console.log(result);
                alert("Application submitted failure");
                $("#adopt_btn").click();
            }
        });
    });


    $("#tianchuan_btn").click(function () {
        window.location.href = "${path}/user/service";
    });

    $(document).on("click", ".reply-btn", function () {
        var id = $(this).attr("save-id");
        console.log(id);
        $.ajax({
            url: "${path}/comment/findById?id=" + id,
            type: "GET",
            success: function (result) {
                //fill user info
                $("#edit_id").val(result.extend.comment.id);
            }
        });
        //2、pop out the modal
        $("#saveAnswer").modal({
            backdrop: "static"
        });
    });

    $("#save_answer_btn").click(function () {
        var id = $("#edit_id").val();
        var content = $("#edit_content").val()
        $.ajax({
            url: "${path}/answer/create",
            type: "POST",
            dataType: "json",
            data: {'commentId': id, 'content': content},
            success: function (result) {
                alert("reply successful！");
                $("#comment_btn").click();
                to_page();
            },
            error: function (result) {
                alert("reply failure！");
                $("#comment_btn").click();
            }
        })
    });

    $(document).on("click", ".reply-list-btn", function () {
        var id = $(this).attr("saves-id");
        console.log(id);
        $.ajax({
            url: "${path}/answer/findById?id=" + id,
            type: "GET",
            success: function (result) {
                console.log(result.extend.answer);
                //fill user info
                $("#comment_id").val(result.extend.answer.comment.id);
                $("#answer_id").val(result.extend.answer.id);
            }
        });
        //2、pop out modal
        $("#saveAnswers").modal({
            backdrop: "static"
        });
    });
    $("#save_answers_btn").click(function () {
        var comment_id = $("#comment_id").val();
        var id = $("#answer_id").val();
        var content = $("#answer_content").val()
        $.ajax({
            url: "${path}/answer/creates",
            type: "POST",
            dataType: "json",
            data: {'replayId': id, 'content': content, 'commentId': comment_id},
            success: function (result) {
                alert("reply successful！");
                to_page();
                $("#answer_btn").click();
            },
            error: function (result) {
                alert("reply failure！")
                $("#answer_btn").click();
            }
        })
    })
</script>
</body>
</html>


