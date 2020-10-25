<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body>
<h2>Hello World!</h2>


<table id="checkTable">
    <thead>
        <tr>
            <td><input type="checkbox" id="all" ></td>
            <td>HEAD</td>
        </tr>
    </thead>

    <tbody>
    <tr>
        <td><input type="checkbox" value="1"></td><td>body</td>

    </tr>
    <tr>
        <td><input type="checkbox" value="2"></td><td>body</td>
    </tr>
    <tr>
        <td><input type="checkbox" value="3"></td><td>body</td>
    </tr>
    <tr>
        <td><input type="checkbox" value="4"></td><td>body</td>
    </tr>

    </tbody>
</table>

</body>
<script src="js/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
    $(function (){
        $("#all").click(function (){
            var flag = this.checked;

            $("#checkTable tbody :checkbox").each(function (i,box){
                box.checked = flag;
            });

            var ids = [];
            var boxList = $("#checkTable tbody :checked");
            $.each(boxList,function (i,box){
                ids[i] = box.value;

            });


            $.ajax({
                url : "${pageContext.request.contextPath}/user/test.do",
                data: JSON.stringify(ids),
                type: "POST",
                dataType: "json",
                contentType: 'application/json; charset=UTF-8',
                success: function(data) {
                    alert(data.success);
                }
            });

        });
    });




</script>
</html>
