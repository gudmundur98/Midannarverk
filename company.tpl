<!DOCTYPE html>
<html>
<head>
    <title>{{fyritaeki}}</title>
    <meta charset="utf-8">
    <link rel="stylesheet" href="/static/bensinstill.css">
</head>
<body>
    <div class="mynd2">
        <img src="/static/{{fyritaeki}}.png" alt="Mynd 1" height="100" width="100"/>
    </div>
    <table border="2" class="company">
        <tr>
            <th>Fyritæki</th>
            <th>Staður</th>
        </tr>
        % i = 0
        % for nafn in data["results"]:
            % if nafn["company"] == fyritaeki:
                % i = i+1
                <tr>
                    <td><h3><a href="/moreinfo/{{nafn['key']}}">{{nafn["company"]}}</a></h3></td>
                    <td><h3>{{nafn["name"]}}</h3></td>
                </tr>
            % end
        % end
    </table>
    <p>Fjöldi stöðva : {{i}}</p>
    <p><a href="/">Heim</a></p>
</body>
</html>