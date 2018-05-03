<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/4/18
  Time: 15:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-1.9.1.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/bootstrap/3.3.7/js/bootstrap.js"></script>
    <link href="<%=request.getContextPath()%>/bootstrap/3.3.7/css/bootstrap.css" rel="stylesheet"/>
</head>
<body>
${userId}+"*****"+${userPwd}
<input type="text" id="userId" name="userId" value="${userId}"  />
<input type="text" id="userPwd" name="userPwd" value="${userPwd}"  />
<div class="col-md-12 column">
    <br><br><br>
    <div class="row clearfix">
        <div class="col-md-3 column">
        </div>
        <div class="col-md-4 column">
            <form role="form" class="form-horizontal"
                  action="<%=request.getContextPath()%>/NewTouchMRB/msgAndPass/modifyMyInfor.do" method="post"
                  id="modifyUserInfo">

                <div class="form-group ">
                    <label for="userNo" class="col-sm-4 control-label">工号</label>
                    <div class="col-sm-8"><input type="text"
                                                 class="form-control "
                                                 value="${UserInformationDto.userNo}" disabled
                    /></div>
                    <input type="text" id="userNo" name="userNo" value="${UserInformationDto.userNo}" hidden
                    />
                </div>
                <div class="form-group ">
                    <label for="userName" class="col-sm-4 control-label">姓名</label>
                    <div class="col-sm-8"><input type="text"
                                                 class="form-control "
                                                 value="${UserInformationDto.userName}" disabled
                    /></div>
                    <input type="text"  id="userName" name="userName" value="${UserInformationDto.userName}" hidden
                    />
                </div>
                <div class="form-group ">
                    <label for="userMail" class="col-sm-4 control-label">邮箱</label>
                    <div class="col-sm-8"><input type="text"
                                                 class="form-control "
                                                 id="userMail" name="userMail" value="${UserInformationDto.userMail}"
                    /></div>
                </div>
                <div class="form-group ">
                    <label for="userPhone" class="col-sm-4 control-label">手机号码</label>
                    <div class="col-sm-8"><input type="text"
                                                 class="form-control "
                                                 id="userPhone" name="userPhone" value="${UserInformationDto.userPhone}" maxlength="12"
                    /></div>
                </div>
                <div class="form-group ">
                    <label for="userDepartment" class="col-sm-4 control-label">部门</label>
                    <div class="col-sm-8"><input type="text"
                                                 class="form-control "
                                                 id="userDepartment" name="userDepartment" value="${UserInformationDto.userDepartment}"
                    /></div>
                </div>
                <div class="form-group">
                    <div class="col-xs-4 col-xs-offset-4">
                        <button type="submit"  class="btn btn-primary btn-sm"
                        >提交
                        </button>
                    </div>
                    <div class="col-xs-1 col-xs-offset-1">
                        <button type="reset" id="reset" class="btn btn-default btn-sm" onclick="formReset()">重置</button>
                    </div>
                </div>
                <input type="text" id="returnMsg" hidden value="${returnMsg}"/>
                <div id="msgDiv" hidden class="alert alert-info alert-dismissable">
                    <strong>${returnMsg}</strong>
                </div>
            </form>
        </div>
        <div class="col-md-4 column">
        </div>
    </div>
</div>
</body>
</html>
