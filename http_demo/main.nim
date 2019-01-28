import httpClient, json

var client = newHttpClient()
#var client = newAsyncHttpClient()


var url = "https://api.openfigi.com/v2/mapping/"
var querystring = {"\"idType\":":"\"ID_ISIN\"","\"idValue\"":"\"US4592001014\"","%22idValue%22":"%22US4592001014%22","%22idType%22:":"%22ID_ISIN%22"}

var body = %*[{"idType": "ID_ISIN", "idValue": "US4592001014"}]


client.headers= newHttpHeaders({
    "Content-Type": "application/json",     
    "X-OPENFIGI-APIKEY": "c300ab2e-dcba-4a91-b8be-bd8183705892",
    "Cache-Control": "no-cache"
    })

var response = client.request(url, httpmethod = HttpPost, body = $body)

echo response.status


let json_node =parseJson(`$`(response.body))
# pretty print json
echo json_node[0]["data"][0].pretty()#]#


