<!DOCTYPE html>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@ page import = "java.sql.*, java.util.*" %>
<%@ page language="java" contentType="text/html; charset=utf-8"%>
<html>

<head>
    <title>會員專區</title>
    <link rel="stylesheet" type="text/css" href="assets/css/style_index.css">
    <link rel="stylesheet" href="assets/css/member-area.css" />
    <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.css">
    <link href="https://fonts.googleapis.com/css?family=Noto+Sans+TC:700&display=swap" rel="stylesheet">
</head>
<body>
    <!--    會員專區/開始-->
    <div class="tabs p-5" style=" margin-top: 50px;">
        <div class="tab-2">
            <label for="tab2-1">會員專區</label>
            <input id="tab2-1" name="tabs-two" type="radio" checked="checked">
            <div class="p-0">
                <div class="p-5">
                    <h4 class="cont mb-5">會員資料</h4>
                    <form>
                        <div class="input-group mb-3">
                            <div class="input-group-prepend">
                                <span class="input-group-text">會員等級</span>
                            </div>
                            <input type="text" class="form-control" value="一般會員" disabled="disabled">
                        </div>
                        <div class="input-group mb-3">
                            <div class="input-group-prepend">
                                <span class="input-group-text">會員名稱</span>
                            </div>
                            <input type="text" class="form-control" placeholder="名字" value="ym">
                            <input type="text" class="form-control" placeholder="姓氏" value="chen">
                        </div>

                        <div class="input-group mb-3">
                            <div class="input-group-prepend">
                                <span class="input-group-text">帳號</span>
                            </div>
                            <input type="text" class="form-control" placeholder="請填寫此欄位" value="87112800">
                        </div>
                        <div class="input-group mb-3">
                            <div class="input-group-prepend">
                                <span class="input-group-text">密碼</span>
                            </div>
                            <input type="text" class="form-control" placeholder="請填寫此欄位" value="1234">
                        </div>
                        <div class="input-group mb-3">
                            <div class="input-group-prepend">
                                <span class="input-group-text">地址</span>
                            </div>
                            <input type="text" class="form-control" placeholder="請填寫此欄位" value="埼玉县春日部市双叶町904">
                        </div>
                        <div class="input-group mb-4">
                            <div class="input-group-prepend">
                                <span class="input-group-text">電話</span>
                            </div>
                            <input type="text" class="form-control" placeholder="請填寫此欄位" value="0912345678">
                        </div>
                        <div class="text-align mt-5" >
                            <input type="submit" class="button button1" value="確認送出">
                            &emsp;
                            <button class="button button1" onClick="window.location.reload();">重新輸入</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <!--    會員專區/結束-->

        <div class="tab-2">
            <label for="tab2-2">購物紀錄</label>
            <input id="tab2-2" name="tabs-two" type="radio">
            <div class="p-5">
                <h4 class="cont mb-5">購物紀錄</h4>
                <!--一個購物紀錄/START-->
                <form>
                    <div class="container-fluid">
                        <div class="d-flex bx-shape mb-3">
                            <div class="cont p-3">
                                <h6>購買日期:2019/11/28</h6>
                            </div>
                            <div class="d-flex p-2 bx-shape2">

                                <div class="cont p-2">
                                    <section>
                                        <nobr>
                                            <strong>
                                                <span style="font-size: 20px">品名:垂涎欲滴的餃子</span>
                                                <span style="font-size: 20px">/&emsp;數量:2個</span>
                                                <span style="font-size: 20px">/&emsp;價錢:$500</span>
                                            </strong>
                                        </nobr>
                                    </section>
                                </div>
                            </div>
                            <div class="p-2 flex-fill bx-shape3">
                                <textarea class="form-control mb-3" rows="4" name="comment"></textarea>
                                <input type="submit" class="button button3 " value="送出評論">
                            </div>
                        </div>
                    </div>
                </form>
                <!-- 一個購物紀錄/END-->
                <form>
                    <div class="container-fluid">
                        <div class="d-flex bx-shape mb-3">
                            <div class="cont p-3">
                                <h6>購買日期:2019/11/28</h6>
                            </div>
                            <div class="d-flex p-2 bx-shape2">

                                <div class="cont p-2">
                                    <section>
                                        <nobr>
                                            <strong>
                                                <span style="font-size: 20px">品名:垂涎欲滴的餃子</span>
                                                <span style="font-size: 20px">/&emsp;數量:2個</span>
                                                <span style="font-size: 20px">/&emsp;價錢:$500</span>
                                            </strong>
                                        </nobr>
                                    </section>
                                </div>
                            </div>
                            <div class="p-2 flex-fill bx-shape3">
                                <textarea class="form-control mb-3" rows="4" name="comment"></textarea>
                                <input type="submit" class="button button3 " value="送出評論">
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>

</body>

</html>