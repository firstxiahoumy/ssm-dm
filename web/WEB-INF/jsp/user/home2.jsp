<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- ico图片 -->
    <link rel="icon" href="../../../favicon.ico">
    <!--  -->
    <title>home2 || Directory Management</title>
    <!-- 引入 bootstrap css文件 -->
    <link rel="stylesheet" href="../../../bootstrap/dist/css/bootstrap.min.css" type="text/css">
    <!-- 引入 bootstrap js文件 -->
    <script href="../../../bootstrap/dist/js/bootstrap.min.js" type="text/javascript"></script>
    <!-- 自己定义css -->
    <link rel="stylesheet" href="../../../css/admin/" type="text/css">
    <!-- 自定义js -->
    <script src="../../../js/admin/" type="text/javascript"></script>
    <!-- jquery -->
    <script src="../../../jquery/jquery-3.5.0.min.js" type="text/javascript"></script>
    <!-- 网络文件 -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>

    <style>
        body {
            font-family: Georgia, "Times New Roman", Times, serif;
            color: #555;
        }

        h1, .h1,
        h2, .h2,
        h3, .h3,
        h4, .h4,
        h5, .h5,
        h6, .h6 {
            margin-top: 0;
            font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
            font-weight: normal;
            color: #333;
        }


        /*
         * Footer
         */

        .blog-footer {
            padding: 40px 0;
            color: #999;
            text-align: center;
            background-color: #1f2d3d;
            border-top: 1px solid #e5e5e5;
        }

        .blog-footer p:last-child {
            margin-bottom: 0;
        }

        .blog-nav-float {
            float: right;
        }
    </style>
</head>
<body>

<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <nav class="navbar navbar-default navbar-inverse" role="navigation">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                        <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span
                            class="icon-bar"></span></button> <a class="navbar-brand" href="#">dm</a>
                </div>

                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <li class="active">
                            <a href="#">home</a>
                        </li>
                        <li>
                            <a href="#">content</a>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown<strong class="caret"></strong></a>
                            <ul class="dropdown-menu">
                                <li>
                                    <a href="#">Action</a>
                                </li>
                                <li>
                                    <a href="#">Another action</a>
                                </li>
                                <li>
                                    <a href="#">Something else here</a>
                                </li>
                                <li class="divider">
                                </li>
                                <li>
                                    <a href="#">Separated link</a>
                                </li>
                                <li class="divider">
                                </li>
                                <li>
                                    <a href="#">One more separated link</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                    <form class="navbar-form navbar-left" role="search">
                        <div class="form-group">
                            <input type="text" class="form-control" />
                        </div> <button type="submit" class="btn btn-default">search</button>
                    </form>
                    <ul class="nav navbar-nav navbar-right">
                        <li>
                            <a href="#">setting</a>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown<strong class="caret"></strong></a>
                            <ul class="dropdown-menu">
                                <li>
                                    <a href="#">about</a>
                                </li>
                                <li>
                                    <a href="#">oneself</a>
                                </li>
                                <li>
                                    <a href="#">use other</a>
                                </li>
                                <li class="divider">
                                </li>
                                <li>
                                    <a href="#">logout</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>

            </nav>
            <ul class="breadcrumb">
                <li>
                    <a href="#">Home</a>
                </li>
                <li>
                    <a href="#">Library</a>
                </li>
                <li class="active">
                    Data
                </li>
            </ul>
        </div>
    </div>
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="tabbable">
                <ul class="nav nav-tabs" id="tabs-353446">
                    <li class="active">
                        <a href="#panel-859753" data-toggle="tab">个人数据</a>
                    </li>
                    <li>
                        <a href="#panel-833108" data-toggle="tab">使用日志</a>
                    </li>
                    <li>
                        <a href="#panel-812636" data-toggle="tab">登录日志</a>
                    </li>
                </ul>
                <div class="tab-content">
                    <div class="tab-pane active" id="panel-859753">
                        <table class="table">
                            <thead>
                            <tr>
                                <th>编号</th>
                                <th>名称</th>
                                <th>提交时间</th>
                                <th>地址</th>
                                <th>注释</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>1</td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr class="success">
                                <td>2</td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr class="error">
                                <td>3</td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr class="warning">
                                <td>4</td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr class="warning">
                                <td>5</td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr class="info">
                                <td>6</td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="tab-pane" id="panel-833108">
                        <table class="table">
                            <thead>
                            <tr>
                                <th>编号</th>
                                <th>操作</th>
                                <th>操作时间</th>
                                <th>系统</th>
                                <th>#</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>1</td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr class="success">
                                <td>2</td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr class="error">
                                <td>3</td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr class="warning">
                                <td>4</td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr class="warning">
                                <td>5</td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr class="info">
                                <td>6</td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="tab-pane" id="panel-812636">
                        <table class="table">
                            <thead>
                            <tr>
                                <th>编号</th>
                                <th>操作</th>
                                <th>操作时间</th>
                                <th>系统</th>
                                <th>#</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>1</td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr class="success">
                                <td>2</td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr class="error">
                                <td>3</td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr class="warning">
                                <td>4</td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr class="warning">
                                <td>5</td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr class="info">
                                <td>6</td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<footer class="blog-footer">
    <p>More template built for <a href="http://getbootstrap.com">Bootstrap</a> by <a
            href="https://twitter.com/mdo">@mdo</a>.</p>

    <div class="inner">
        <p>Copyright &copy; 2020. <a href="http://dm.net">DM.net</a> All rights reserved.</p>
    </div>
    <p>Quick navigation || Friendship connection <a href="http://ningci.com">ningci.com</a></p>
    <p>Feedback email <em> <b> onexiahoumy@outlook.com </b> </em> or QQmail<em> <b> aliketh.my@foxmail.com </b> </em>
    </p>
    <p>Program source code <em> gitee </em><a href="https://gitee.com/summer_hou/ssm">
        https://gitee.com/summer_hou/ssm </a>or<em> github </em><a href="https://github.com/firstxiahoumy/ssm-dm">
        https://github.com/firstxiahoumy/ssm-dm </a></p>
    <p><a href="#">Back to top</a></p>
</footer>
</body>

</html>