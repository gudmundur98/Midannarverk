from bottle import route, run, template, static_file, error
import os

myndir = [
    {
        "mynd": "Atlantsolía.png",
    },
    {
        "mynd": "Costco Iceland.png",
    },
    {
        "mynd": "Dælan.png",
    },
    {
        "mynd": "N1.png",
    },
    {
        "mynd": "ÓB.png",
    },
    {
        "mynd": "Olís.png",
    },
    {
        "mynd": "Orkan.png",
    },
    {
        "mynd": "Orkan X.png",
    },
    {
        "mynd": "skeljungur.png",
    }
]

import urllib.request, json

with urllib.request.urlopen("http://apis.is/petrol") as url:
    data = json.loads(url.read().decode())

@route("/")
def index():
    return template("adal", data=data, myndir=myndir)

@route("/static/<filename>")
def server_static(filename):
    return static_file(filename, root="./myndir")

@route("/company/<fyritaeki>")
def company(fyritaeki):
    return template("company", fyritaeki=fyritaeki, data=data)

@route("/moreinfo/<lykill>")
def key(lykill):
    return template("moreinfo", lykill=lykill, data=data)

@error(404)
def error404(error):
    return "Þessi síða er ekki til"
run(host="0.0.0.0", port=int(os.environ.get("PORT", 5000)))
