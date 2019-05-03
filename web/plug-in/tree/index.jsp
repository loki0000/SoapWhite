<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/5/2
  Time: 13:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>文件树</title>
    <style>
        ul, li {
            list-style: none;

        }

        ul {
            padding-left: 20px;
        }

        .close {
            display: inline-block;
            width: 15px;
            height: 15px;
            background: url("close.png") no-repeat center;
            background-size: contain;
        }

        .open {
            display: inline-block;
            width: 15px;
            height: 15px;
            background: url("open.png") no-repeat center;
            background-size: contain;
        }

        .leaf {
            display: inline-block;
            width: 15px;
            height: 15px;
            background: url("leaf.png") no-repeat center;
            background-size: contain;
        }

        .leafName {

            color: green;
            padding-left: 10px;
            padding-right: 10px;

        }

        .openTrue {

            color: gray;

        }
    </style>
</head>
<body>
<div id="tree"></div>
<script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>
<script type="text/javascript" src="../../js/shop/backPage.js"></script>
<script>
    var strinn="待更新"
    function way2(inn){

        var strname=inn.innerText
        //alert(strname)
        if (strname=="商品修改") {
            parent.window.page();

        }else if (strname=="待更新"){
            parent.window.page2();
        }

    }

    var arr = [
        {
            name: "管理选项", open: true,
            children: [
                {
                    name: "商品管理",
                    children: [
                        {name: "商品修改", nid: "nid"}
                    ]
                }
                ]
        },{
            name: "更多", open: true,
            children: [
                {
                    name: "待更新"
                }
            ]
        }
            ];



    var arr1 = [
        {id: 1, pId: 0, name: "选项", open: true},
        {id: 11, pId: 1, name: "父节点11 - 折叠"},
        {id: 111, pId: 11, name: "叶子节点111"},
        {id: 112, pId: 11, name: "叶子节点112"},
        {id: 113, pId: 11, name: "叶子节点113"},
        {id: 114, pId: 11, name: "叶子节点114"},
        {id: 12, pId: 1, name: "父节点12 - 折叠"},
        {id: 121, pId: 12, name: "叶子节点121"},
        {id: 122, pId: 12, name: "叶子节点122"},
        {id: 123, pId: 12, name: "叶子节点123"},
        {id: 124, pId: 12, name: "叶子节点124"},
        {id: 13, pId: 1, name: "父节点13 - 没有子节点", isParent: true},
        {id: 2, pId: 0, name: "父节点2 - 折叠"},
        {id: 21, pId: 2, name: "父节点21 - 展开", open: true},
        {id: 211, pId: 21, name: "叶子节点211"},
        {id: 212, pId: 21, name: "叶子节点212"},
        {id: 213, pId: 21, name: "叶子节点213"},
        {id: 214, pId: 21, name: "叶子节点214"},
        {id: 22, pId: 2, name: "父节点22 - 折叠"},
        {id: 221, pId: 22, name: "叶子节点221"},
        {id: 222, pId: 22, name: "叶子节点222"},
        {id: 223, pId: 22, name: "叶子节点223"},
        {id: 224, pId: 22, name: "叶子节点224"},
        {id: 23, pId: 2, name: "父节点23 - 折叠"},
        {id: 231, pId: 23, name: "叶子节点231"},
        {id: 232, pId: 23, name: "叶子节点232"},
        {id: 233, pId: 23, name: "叶子节点233"},
        {id: 234, pId: 23, name: "叶子节点234"},
        {id: 3, pId: 0, name: "父节点3 - 没有子节点", isParent: true}
    ];

    paintingTree(arr, "tree")


    function paintingTree(arr, id) {
        if(arr[0]["pId"]!==undefined){
            arr=removeEmptyFromPaintData(arr)
        }
        var str = ""
        //渲染树
        function createTree(arr) {
            if (arr) {
                var children = arr;
                str += "<ul>";
                for (var j = 0; j < children.length; j++) {
                    str += "<li>"
                    if (children[j]["children"]) {
                        if (children[j]["open"]) {
                            str += "<div open='true'><span class='close'></span><span class='openTrue'>" + children[j]["name"] + "</span></div>";
                        } else {
                            str += "<div open='false'><span class='open'></span><span class='openTrue'>" + children[j]["name"] + "</span></div>";
                        }

                    } else {
                        str += "<div><span class='leaf'></span><span class='leafName' > <a href='##' onclick='way2(this)'>" + children[j]["name"] + "</a></div>";
                    }

                    createTree(children[j]["children"])
                    str += "</li>"
                }
                str += "</ul>";
            }
        }

        createTree(arr)
        $("#"+id).hide()
        $("#"+id).html(str)
        $("[open=true]").each(function () {
            $(this).next().show()
        })
        $("[open=false]").each(function () {
            $(this).next().hide()
        })
        $(document).on("click", ".close", function () {
            $(this).parent().next().hide()
            $(this).addClass("open").removeClass("close")
        })
        $(document).on("click", ".open", function () {
            $(this).parent().next().show()
            $(this).addClass("close").removeClass("open")
        })
        $("#"+id).show()
        //把简单的数据转化成渲染数据
        function createPaintDataFromSimpleData(zNodes, Nodes) {
            for (var i = 0; i < zNodes.length; i++) {
                if (!!zNodes[i]) {
                    zNodes[i]["children"] = [];
                    for (var j = 0; j < Nodes.length; j++) {

                        if (!!Nodes[j]) {
                            if (Nodes[j]["pId"] == zNodes[i]["id"]) {
                                if (Nodes[j]) {
                                    zNodes[i]["children"].push(Nodes[j])
                                    Nodes[j] = ""
                                }
                            }
                        }
                    }
                    if (zNodes[i]["children"].length == 0) {
                        zNodes[i]["children"] = false
                    } else {
                        createPaintDataFromSimpleData(zNodes[i]["children"], zNodes)
                    }
                }
            }
            return zNodes
        }
        //对渲染数据清除空元素
        function removeEmptyFromPaintData(nodes) {
            var data = createPaintDataFromSimpleData(nodes, nodes);
            var arr = [];
            for (var i = 0; i < data.length; i++) {
                if (!!data[i]) {
                    arr.push(data[i])
                }
            }
            return arr
        }
    }
</script>
</body>
</html>
