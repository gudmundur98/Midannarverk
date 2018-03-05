<!DOCTYPE html>
<html>
<head>
    <title>Verð</title>
    <meta charset="utf-8">
    <link rel="stylesheet" href="/static/bensinstill.css">
</head>
<body>
    <h1>Nánari Upplýsingar : </h1>
    <%
    soluadili = "Ekki til"
    stadur = "Ekki til"
    bensin95 = "Ekki til"
    bensin95discount = "Ekki til"
    diesel = "Ekki til"
    dieseldiscount = "Ekki til"

    for nafn in data["results"]:
        if nafn["key"] == lykill:
            soluadili = nafn["company"]
            stadur = nafn["name"]
            bensin95 = nafn["bensin95"]
            bensin95discount = nafn["bensin95_discount"]
            diesel = nafn["diesel"]
            dieseldiscount = nafn["diesel_discount"]
        end
    end %>
    <table border="2" class="moreinfo">
        <tr>
            <th><h2>Söluaðili : </h2></th>
            <td><h2>{{soluadili}}</h2></td>
        </tr>
        <tr>
            <th><h2>Staður : </h2></th>
            <td><h2>{{stadur}}</h2></td>
        </tr>
        <tr>
            <th><h2>Bensín 95 : </h2></th>
            <td><h2>{{bensin95}}</h2></td>
        </tr>
        <tr>
            <th><h2>Bensín 95 discount : </h2></th>
            <td><h2>{{bensin95discount}}</h2></td>
        </tr>
        <tr>
            <th><h2>Dísel : </h2></th>
            <td><h2>{{diesel}}</h2></td>
        </tr>
        <tr>
            <th><h2>Dísel discount : </h2></th>
            <td><h2>{{dieseldiscount}}</h2></td>
        </tr>
    </table>
    <p><a href="/">Heim</a></p>
</body>
</html>