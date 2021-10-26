---
title: counterparty-api v1
language_tabs:
  - python: Python
  - javascript: JavaScript
  - shell: cURL
toc_footers: []
includes: []
search: true
highlight_theme: darkula
headingLevel: 2

---

<!-- Generator: Widdershins v4.0.1 -->

<h1 id="counterparty-api">counterparty-api v1</h1>

> Scroll down for code samples, example requests and responses. Select a language for code samples from the tabs above or the mobile navigation menu.

<h1 id="counterparty-api-default">Default</h1>

## post__v1_auth_client

> Code samples

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': '*/*'
}

r = requests.post('/v1/auth/client', headers = headers)

print(r.json())

```

```javascript
const inputBody = '{
  "id": "string",
  "secret": "string"
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'*/*'
};

fetch('/v1/auth/client',
{
  method: 'POST',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```shell
# You can also use wget
curl -X POST /v1/auth/client \
  -H 'Content-Type: application/json' \
  -H 'Accept: */*'

```

`POST /v1/auth/client`

Authenticate with service and retrieve an access_token required for other endpoints.

> Body parameter

```json
{
  "id": "string",
  "secret": "string"
}
```

<h3 id="post__v1_auth_client-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|object|false|none|
|» id|body|string|false|none|
|» secret|body|string|false|none|

> Example responses

> default Response

<h3 id="post__v1_auth_client-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|default|Default|none|[AuthorizationResponse](#schemaauthorizationresponse)|

<aside class="success">
This operation does not require authentication
</aside>

## get__v1_mga

> Code samples

```python
import requests
headers = {
  'Accept': '*/*',
  'Authorization': 'string'
}

r = requests.get('/v1/mga', headers = headers)

print(r.json())

```

```javascript

const headers = {
  'Accept':'*/*',
  'Authorization':'string'
};

fetch('/v1/mga',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```shell
# You can also use wget
curl -X GET /v1/mga \
  -H 'Accept: */*' \
  -H 'Authorization: string'

```

`GET /v1/mga`

List of available MGAs.

<h3 id="get__v1_mga-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|Authorization|header|string|true|Header with access token retrieved from /v1/auth/client. e.g. Bearer xxxxxx.yyyyyyy.zzzzzz|

> Example responses

> default Response

<h3 id="get__v1_mga-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|default|Default|none|Inline|

<h3 id="get__v1_mga-responseschema">Response Schema</h3>

Status Code **default**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|*anonymous*|[[MgaResponse](#schemamgaresponse)]|false|none|none|
|» mgaId|string|false|none|none|
|» mgaName|string|false|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## get__v1_mga_{mga_id}_report

> Code samples

```python
import requests
headers = {
  'Accept': '*/*',
  'Authorization': 'string'
}

r = requests.get('/v1/mga/{mga_id}/report', headers = headers)

print(r.json())

```

```javascript

const headers = {
  'Accept':'*/*',
  'Authorization':'string'
};

fetch('/v1/mga/{mga_id}/report',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```shell
# You can also use wget
curl -X GET /v1/mga/{mga_id}/report \
  -H 'Accept: */*' \
  -H 'Authorization: string'

```

`GET /v1/mga/{mga_id}/report`

List available reports for given MGA.

<h3 id="get__v1_mga_{mga_id}_report-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|mga_id|path|string|true|none|
|Authorization|header|string|true|Header with access token retrieved from /v1/auth/client. e.g. Bearer xxxxxx.yyyyyyy.zzzzzz|

> Example responses

> default Response

<h3 id="get__v1_mga_{mga_id}_report-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|default|Default|none|Inline|

<h3 id="get__v1_mga_{mga_id}_report-responseschema">Response Schema</h3>

Status Code **default**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|*anonymous*|[[ReportResponse](#schemareportresponse)]|false|none|none|
|» createdUtcTime|string|false|none|none|
|» reportId|string|false|none|none|
|» reportName|string|false|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## get__v1_mga_{mga_id}_report_{report_id}_format

> Code samples

```python
import requests
headers = {
  'Authorization': 'string'
}

r = requests.get('/v1/mga/{mga_id}/report/{report_id}/format', headers = headers)

print(r.json())

```

```javascript

const headers = {
  'Authorization':'string'
};

fetch('/v1/mga/{mga_id}/report/{report_id}/format',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```shell
# You can also use wget
curl -X GET /v1/mga/{mga_id}/report/{report_id}/format \
  -H 'Authorization: string'

```

`GET /v1/mga/{mga_id}/report/{report_id}/format`

List available formats for the given report.

<h3 id="get__v1_mga_{mga_id}_report_{report_id}_format-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|report_id|path|string|true|none|
|mga_id|path|string|true|none|
|Authorization|header|string|true|Header with access token retrieved from /v1/auth/client. e.g. Bearer xxxxxx.yyyyyyy.zzzzzz|

<h3 id="get__v1_mga_{mga_id}_report_{report_id}_format-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|

<aside class="success">
This operation does not require authentication
</aside>

## get__v1_mga_{mga_id}_report_{report_id}_format_{format_type}

> Code samples

```python
import requests
headers = {
  'Accept': '*/*',
  'Authorization': 'string'
}

r = requests.get('/v1/mga/{mga_id}/report/{report_id}/format/{format_type}', headers = headers)

print(r.json())

```

```javascript

const headers = {
  'Accept':'*/*',
  'Authorization':'string'
};

fetch('/v1/mga/{mga_id}/report/{report_id}/format/{format_type}',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```shell
# You can also use wget
curl -X GET /v1/mga/{mga_id}/report/{report_id}/format/{format_type} \
  -H 'Accept: */*' \
  -H 'Authorization: string'

```

`GET /v1/mga/{mga_id}/report/{report_id}/format/{format_type}`

Returns a url to download the raw data dump of the report.

<h3 id="get__v1_mga_{mga_id}_report_{report_id}_format_{format_type}-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|report_id|path|string|true|none|
|format_type|path|string|true|none|
|mga_id|path|string|true|none|
|Authorization|header|string|true|Header with access token retrieved from /v1/auth/client. e.g. Bearer xxxxxx.yyyyyyy.zzzzzz|

> Example responses

> default Response

<h3 id="get__v1_mga_{mga_id}_report_{report_id}_format_{format_type}-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|default|Default|none|[UrlResponse](#schemaurlresponse)|

<aside class="success">
This operation does not require authentication
</aside>

## get__v1_mga_{mga_id}_report_{report_id}_format_{format_type}_entities

> Code samples

```python
import requests
headers = {
  'Authorization': 'string'
}

r = requests.get('/v1/mga/{mga_id}/report/{report_id}/format/{format_type}/entities', headers = headers)

print(r.json())

```

```javascript

const headers = {
  'Authorization':'string'
};

fetch('/v1/mga/{mga_id}/report/{report_id}/format/{format_type}/entities',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```shell
# You can also use wget
curl -X GET /v1/mga/{mga_id}/report/{report_id}/format/{format_type}/entities \
  -H 'Authorization: string'

```

`GET /v1/mga/{mga_id}/report/{report_id}/format/{format_type}/entities`

List available entities for the given report format.

<h3 id="get__v1_mga_{mga_id}_report_{report_id}_format_{format_type}_entities-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|report_id|path|string|true|none|
|format_type|path|string|true|none|
|mga_id|path|string|true|none|
|Authorization|header|string|true|Header with access token retrieved from /v1/auth/client. e.g. Bearer xxxxxx.yyyyyyy.zzzzzz|

<h3 id="get__v1_mga_{mga_id}_report_{report_id}_format_{format_type}_entities-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|

<aside class="success">
This operation does not require authentication
</aside>

## get__v1_mga_{mga_id}_report_{report_id}_format_{format_type}_entities_{entity}

> Code samples

```python
import requests
headers = {
  'Accept': '*/*',
  'Authorization': 'string'
}

r = requests.get('/v1/mga/{mga_id}/report/{report_id}/format/{format_type}/entities/{entity}', headers = headers)

print(r.json())

```

```javascript

const headers = {
  'Accept':'*/*',
  'Authorization':'string'
};

fetch('/v1/mga/{mga_id}/report/{report_id}/format/{format_type}/entities/{entity}',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```shell
# You can also use wget
curl -X GET /v1/mga/{mga_id}/report/{report_id}/format/{format_type}/entities/{entity} \
  -H 'Accept: */*' \
  -H 'Authorization: string'

```

`GET /v1/mga/{mga_id}/report/{report_id}/format/{format_type}/entities/{entity}`

Entity data of the report in the specified file type.

<h3 id="get__v1_mga_{mga_id}_report_{report_id}_format_{format_type}_entities_{entity}-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|report_id|path|string|true|none|
|format_type|path|string|true|none|
|mga_id|path|string|true|none|
|entity|path|string|true|none|
|file_type|query|string|false|Return a url to download the data in the given file type. Valid values are json, csv. Defaults to json|
|Authorization|header|string|true|Header with access token retrieved from /v1/auth/client. e.g. Bearer xxxxxx.yyyyyyy.zzzzzz|

> Example responses

> default Response

<h3 id="get__v1_mga_{mga_id}_report_{report_id}_format_{format_type}_entities_{entity}-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|default|Default|none|[UrlResponse](#schemaurlresponse)|

<aside class="success">
This operation does not require authentication
</aside>

## get__v1_oed_account

> Code samples

```python
import requests
headers = {
  'Accept': '*/*',
  'Authorization': 'string',
  'accept': 'application/json'
}

r = requests.get('/v1/oed/account', headers = headers)

print(r.json())

```

```javascript

const headers = {
  'Accept':'*/*',
  'Authorization':'string',
  'accept':'application/json'
};

fetch('/v1/oed/account',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```shell
# You can also use wget
curl -X GET /v1/oed/account \
  -H 'Accept: */*' \
  -H 'Authorization: string' \
  -H 'accept: application/json'

```

`GET /v1/oed/account`

Account table for the Oasis OED input.

<h3 id="get__v1_oed_account-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|Authorization|header|string|true|Header with access token retrieved from /v1/auth/client. e.g. Bearer xxxxxx.yyyyyyy.zzzzzz|
|accept|header|string|false|Provide text/json or text/csv as the accept header and you can recieve the response as a url to download a file. application/json is return of data|

> Example responses

> default Response

<h3 id="get__v1_oed_account-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|default|Default|none|Inline|

<h3 id="get__v1_oed_account-responseschema">Response Schema</h3>

Status Code **default**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|*anonymous*|[[AccountsResponse](#schemaaccountsresponse)]|false|none|none|
|» AccCurrency|string|false|none|none|
|» AccName|string|false|none|none|
|» AccNumber|string|false|none|none|
|» ExpiringPolNumber|string|false|none|none|
|» PolExpiryDate|string|false|none|none|
|» PolInceptionDate|string|false|none|none|
|» PolNumber|string|false|none|none|
|» PolPerilsCovered|string|false|none|none|
|» PortName|string|false|none|none|
|» PortNumber|string|false|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## get__v1_oed_location

> Code samples

```python
import requests
headers = {
  'Accept': '*/*',
  'Authorization': 'string',
  'accept': 'application/json'
}

r = requests.get('/v1/oed/location', headers = headers)

print(r.json())

```

```javascript

const headers = {
  'Accept':'*/*',
  'Authorization':'string',
  'accept':'application/json'
};

fetch('/v1/oed/location',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```shell
# You can also use wget
curl -X GET /v1/oed/location \
  -H 'Accept: */*' \
  -H 'Authorization: string' \
  -H 'accept: application/json'

```

`GET /v1/oed/location`

Location table for the Oasis OED input.

<h3 id="get__v1_oed_location-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|Authorization|header|string|true|Header with access token retrieved from /v1/auth/client. e.g. Bearer xxxxxx.yyyyyyy.zzzzzz|
|accept|header|string|false|Provide text/json or text/csv as the accept header and you can recieve the response as a url to download a file. application/json is return of data|

> Example responses

> default Response

<h3 id="get__v1_oed_location-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|default|Default|none|Inline|

<h3 id="get__v1_oed_location-responseschema">Response Schema</h3>

Status Code **default**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|*anonymous*|[[LocationsResponse](#schemalocationsresponse)]|false|none|none|
|» AccNumber|string|false|none|none|
|» AreaCode|string|false|none|none|
|» AreaName|string|false|none|none|
|» BITIV|string|false|none|none|
|» BuildingID|string|false|none|none|
|» BuildingTIV|string|false|none|none|
|» City|string|false|none|none|
|» ContentsTIV|string|false|none|none|
|» CountryCode|string|false|none|none|
|» ExpiringAccNumber|string|false|none|none|
|» LocCurrency|string|false|none|none|
|» LocNumber|string|false|none|none|
|» LocPerilsCovered|string|false|none|none|
|» OtherTIV|string|false|none|none|
|» PortNumber|string|false|none|none|
|» PostalCode|string|false|none|none|
|» StreetAddress|string|false|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## get__v1_oed_reinsuranceinfo

> Code samples

```python
import requests
headers = {
  'Accept': '*/*',
  'Authorization': 'string',
  'accept': 'application/json'
}

r = requests.get('/v1/oed/reinsuranceinfo', headers = headers)

print(r.json())

```

```javascript

const headers = {
  'Accept':'*/*',
  'Authorization':'string',
  'accept':'application/json'
};

fetch('/v1/oed/reinsuranceinfo',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```shell
# You can also use wget
curl -X GET /v1/oed/reinsuranceinfo \
  -H 'Accept: */*' \
  -H 'Authorization: string' \
  -H 'accept: application/json'

```

`GET /v1/oed/reinsuranceinfo`

ReinsuranceInfo table for the Oasis OED input.

<h3 id="get__v1_oed_reinsuranceinfo-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|Authorization|header|string|true|Header with access token retrieved from /v1/auth/client. e.g. Bearer xxxxxx.yyyyyyy.zzzzzz|
|accept|header|string|false|Provide text/json or text/csv as the accept header and you can recieve the response as a url to download a file. application/json is return of data|

> Example responses

> default Response

<h3 id="get__v1_oed_reinsuranceinfo-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|default|Default|none|Inline|

<h3 id="get__v1_oed_reinsuranceinfo-responseschema">Response Schema</h3>

Status Code **default**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|*anonymous*|[[ReinsuranceInfoResponse](#schemareinsuranceinforesponse)]|false|none|none|
|» AggAttachment|string|false|none|none|
|» AggLimit|string|false|none|none|
|» AttachmentBasis|string|false|none|none|
|» CededPercent|string|false|none|none|
|» DeemedPercentPlaced|string|false|none|none|
|» InuringPriority|string|false|none|none|
|» OccAttachment|string|false|none|none|
|» OccFranchiseDed|string|false|none|none|
|» OccLimit|string|false|none|none|
|» OccReverseFranchise|string|false|none|none|
|» PlacedPercent|string|false|none|none|
|» ReinsCurrency|string|false|none|none|
|» ReinsExpiryDate|string|false|none|none|
|» ReinsFXrate|string|false|none|none|
|» ReinsInceptionDate|string|false|none|none|
|» ReinsLayerNumber|string|false|none|none|
|» ReinsName|string|false|none|none|
|» ReinsNumber|string|false|none|none|
|» ReinsPeril|string|false|none|none|
|» ReinsPremium|string|false|none|none|
|» ReinsType|string|false|none|none|
|» Reinstatement|string|false|none|none|
|» ReinstatementCharge|string|false|none|none|
|» RiskAttachment|string|false|none|none|
|» RiskLimit|string|false|none|none|
|» TreatyShare|string|false|none|none|
|» UseReinsDates|string|false|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## get__v1_oed_reinsurancescope

> Code samples

```python
import requests
headers = {
  'Accept': '*/*',
  'Authorization': 'string',
  'accept': 'application/json'
}

r = requests.get('/v1/oed/reinsurancescope', headers = headers)

print(r.json())

```

```javascript

const headers = {
  'Accept':'*/*',
  'Authorization':'string',
  'accept':'application/json'
};

fetch('/v1/oed/reinsurancescope',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```shell
# You can also use wget
curl -X GET /v1/oed/reinsurancescope \
  -H 'Accept: */*' \
  -H 'Authorization: string' \
  -H 'accept: application/json'

```

`GET /v1/oed/reinsurancescope`

ReinsuranceScope table for the Oasis OED input.

<h3 id="get__v1_oed_reinsurancescope-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|Authorization|header|string|true|Header with access token retrieved from /v1/auth/client. e.g. Bearer xxxxxx.yyyyyyy.zzzzzz|
|accept|header|string|false|Provide text/json or text/csv as the accept header and you can recieve the response as a url to download a file. application/json is return of data|

> Example responses

> default Response

<h3 id="get__v1_oed_reinsurancescope-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|default|Default|none|Inline|

<h3 id="get__v1_oed_reinsurancescope-responseschema">Response Schema</h3>

Status Code **default**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|*anonymous*|[[ReinsuranceScopeResponse](#schemareinsurancescoperesponse)]|false|none|none|
|» AccNumber|string|false|none|none|
|» CedantName|string|false|none|none|
|» CededPercent|string|false|none|none|
|» CountryCode|string|false|none|none|
|» LOB|string|false|none|none|
|» LocGroup|string|false|none|none|
|» LocNumber|string|false|none|none|
|» PolNumber|string|false|none|none|
|» PortNumber|string|false|none|none|
|» ProducerName|string|false|none|none|
|» ReinsNumber|string|false|none|none|
|» ReinsTag|string|false|none|none|
|» RiskLevel|string|false|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## get__v1_status

> Code samples

```python
import requests
headers = {
  'Accept': '*/*',
  'Authorization': 'string'
}

r = requests.get('/v1/status', headers = headers)

print(r.json())

```

```javascript

const headers = {
  'Accept':'*/*',
  'Authorization':'string'
};

fetch('/v1/status',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```shell
# You can also use wget
curl -X GET /v1/status \
  -H 'Accept: */*' \
  -H 'Authorization: string'

```

`GET /v1/status`

Readiness status of the data

<h3 id="get__v1_status-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|Authorization|header|string|true|Header with access token retrieved from /v1/auth/client. e.g. Bearer xxxxxx.yyyyyyy.zzzzzz|

> Example responses

> default Response

<h3 id="get__v1_status-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|default|Default|none|[StatusResponse](#schemastatusresponse)|

<aside class="success">
This operation does not require authentication
</aside>

# Schemas

<h2 id="tocS_AccountsResponse">AccountsResponse</h2>
<!-- backwards compatibility -->
<a id="schemaaccountsresponse"></a>
<a id="schema_AccountsResponse"></a>
<a id="tocSaccountsresponse"></a>
<a id="tocsaccountsresponse"></a>

```json
{
  "AccCurrency": "string",
  "AccName": "string",
  "AccNumber": "string",
  "ExpiringPolNumber": "string",
  "PolExpiryDate": "string",
  "PolInceptionDate": "string",
  "PolNumber": "string",
  "PolPerilsCovered": "string",
  "PortName": "string",
  "PortNumber": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|AccCurrency|string|false|none|none|
|AccName|string|false|none|none|
|AccNumber|string|false|none|none|
|ExpiringPolNumber|string|false|none|none|
|PolExpiryDate|string|false|none|none|
|PolInceptionDate|string|false|none|none|
|PolNumber|string|false|none|none|
|PolPerilsCovered|string|false|none|none|
|PortName|string|false|none|none|
|PortNumber|string|false|none|none|

<h2 id="tocS_AuthorizationResponse">AuthorizationResponse</h2>
<!-- backwards compatibility -->
<a id="schemaauthorizationresponse"></a>
<a id="schema_AuthorizationResponse"></a>
<a id="tocSauthorizationresponse"></a>
<a id="tocsauthorizationresponse"></a>

```json
{
  "access_token": "string",
  "expires": "string",
  "refresh_token": "string",
  "token_type": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|access_token|string|false|none|none|
|expires|string|false|none|none|
|refresh_token|string|false|none|none|
|token_type|string|false|none|none|

<h2 id="tocS_LocationsResponse">LocationsResponse</h2>
<!-- backwards compatibility -->
<a id="schemalocationsresponse"></a>
<a id="schema_LocationsResponse"></a>
<a id="tocSlocationsresponse"></a>
<a id="tocslocationsresponse"></a>

```json
{
  "AccNumber": "string",
  "AreaCode": "string",
  "AreaName": "string",
  "BITIV": "string",
  "BuildingID": "string",
  "BuildingTIV": "string",
  "City": "string",
  "ContentsTIV": "string",
  "CountryCode": "string",
  "ExpiringAccNumber": "string",
  "LocCurrency": "string",
  "LocNumber": "string",
  "LocPerilsCovered": "string",
  "OtherTIV": "string",
  "PortNumber": "string",
  "PostalCode": "string",
  "StreetAddress": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|AccNumber|string|false|none|none|
|AreaCode|string|false|none|none|
|AreaName|string|false|none|none|
|BITIV|string|false|none|none|
|BuildingID|string|false|none|none|
|BuildingTIV|string|false|none|none|
|City|string|false|none|none|
|ContentsTIV|string|false|none|none|
|CountryCode|string|false|none|none|
|ExpiringAccNumber|string|false|none|none|
|LocCurrency|string|false|none|none|
|LocNumber|string|false|none|none|
|LocPerilsCovered|string|false|none|none|
|OtherTIV|string|false|none|none|
|PortNumber|string|false|none|none|
|PostalCode|string|false|none|none|
|StreetAddress|string|false|none|none|

<h2 id="tocS_MgaResponse">MgaResponse</h2>
<!-- backwards compatibility -->
<a id="schemamgaresponse"></a>
<a id="schema_MgaResponse"></a>
<a id="tocSmgaresponse"></a>
<a id="tocsmgaresponse"></a>

```json
{
  "mgaId": "string",
  "mgaName": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|mgaId|string|false|none|none|
|mgaName|string|false|none|none|

<h2 id="tocS_ReinsuranceInfoResponse">ReinsuranceInfoResponse</h2>
<!-- backwards compatibility -->
<a id="schemareinsuranceinforesponse"></a>
<a id="schema_ReinsuranceInfoResponse"></a>
<a id="tocSreinsuranceinforesponse"></a>
<a id="tocsreinsuranceinforesponse"></a>

```json
{
  "AggAttachment": "string",
  "AggLimit": "string",
  "AttachmentBasis": "string",
  "CededPercent": "string",
  "DeemedPercentPlaced": "string",
  "InuringPriority": "string",
  "OccAttachment": "string",
  "OccFranchiseDed": "string",
  "OccLimit": "string",
  "OccReverseFranchise": "string",
  "PlacedPercent": "string",
  "ReinsCurrency": "string",
  "ReinsExpiryDate": "string",
  "ReinsFXrate": "string",
  "ReinsInceptionDate": "string",
  "ReinsLayerNumber": "string",
  "ReinsName": "string",
  "ReinsNumber": "string",
  "ReinsPeril": "string",
  "ReinsPremium": "string",
  "ReinsType": "string",
  "Reinstatement": "string",
  "ReinstatementCharge": "string",
  "RiskAttachment": "string",
  "RiskLimit": "string",
  "TreatyShare": "string",
  "UseReinsDates": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|AggAttachment|string|false|none|none|
|AggLimit|string|false|none|none|
|AttachmentBasis|string|false|none|none|
|CededPercent|string|false|none|none|
|DeemedPercentPlaced|string|false|none|none|
|InuringPriority|string|false|none|none|
|OccAttachment|string|false|none|none|
|OccFranchiseDed|string|false|none|none|
|OccLimit|string|false|none|none|
|OccReverseFranchise|string|false|none|none|
|PlacedPercent|string|false|none|none|
|ReinsCurrency|string|false|none|none|
|ReinsExpiryDate|string|false|none|none|
|ReinsFXrate|string|false|none|none|
|ReinsInceptionDate|string|false|none|none|
|ReinsLayerNumber|string|false|none|none|
|ReinsName|string|false|none|none|
|ReinsNumber|string|false|none|none|
|ReinsPeril|string|false|none|none|
|ReinsPremium|string|false|none|none|
|ReinsType|string|false|none|none|
|Reinstatement|string|false|none|none|
|ReinstatementCharge|string|false|none|none|
|RiskAttachment|string|false|none|none|
|RiskLimit|string|false|none|none|
|TreatyShare|string|false|none|none|
|UseReinsDates|string|false|none|none|

<h2 id="tocS_ReinsuranceScopeResponse">ReinsuranceScopeResponse</h2>
<!-- backwards compatibility -->
<a id="schemareinsurancescoperesponse"></a>
<a id="schema_ReinsuranceScopeResponse"></a>
<a id="tocSreinsurancescoperesponse"></a>
<a id="tocsreinsurancescoperesponse"></a>

```json
{
  "AccNumber": "string",
  "CedantName": "string",
  "CededPercent": "string",
  "CountryCode": "string",
  "LOB": "string",
  "LocGroup": "string",
  "LocNumber": "string",
  "PolNumber": "string",
  "PortNumber": "string",
  "ProducerName": "string",
  "ReinsNumber": "string",
  "ReinsTag": "string",
  "RiskLevel": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|AccNumber|string|false|none|none|
|CedantName|string|false|none|none|
|CededPercent|string|false|none|none|
|CountryCode|string|false|none|none|
|LOB|string|false|none|none|
|LocGroup|string|false|none|none|
|LocNumber|string|false|none|none|
|PolNumber|string|false|none|none|
|PortNumber|string|false|none|none|
|ProducerName|string|false|none|none|
|ReinsNumber|string|false|none|none|
|ReinsTag|string|false|none|none|
|RiskLevel|string|false|none|none|

<h2 id="tocS_ReportResponse">ReportResponse</h2>
<!-- backwards compatibility -->
<a id="schemareportresponse"></a>
<a id="schema_ReportResponse"></a>
<a id="tocSreportresponse"></a>
<a id="tocsreportresponse"></a>

```json
{
  "createdUtcTime": "string",
  "reportId": "string",
  "reportName": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|createdUtcTime|string|false|none|none|
|reportId|string|false|none|none|
|reportName|string|false|none|none|

<h2 id="tocS_StatusResponse">StatusResponse</h2>
<!-- backwards compatibility -->
<a id="schemastatusresponse"></a>
<a id="schema_StatusResponse"></a>
<a id="tocSstatusresponse"></a>
<a id="tocsstatusresponse"></a>

```json
{
  "accountsCsvLocation": null,
  "accountsJsonLocation": null,
  "jobId": null,
  "locationsCsvLocation": null,
  "locationsJsonLocation": null,
  "noldorDefaultCsvLocation": null,
  "noldorDefaultJsonLocation": null,
  "reinsuranceinfoCsvLocation": null,
  "reinsuranceinfoJsonLocation": null,
  "reinsurancescopesCsvLocationreinsurancescopesJsonLocation": null,
  "status": null
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|accountsCsvLocation|any|false|none|none|
|accountsJsonLocation|any|false|none|none|
|jobId|any|false|none|none|
|locationsCsvLocation|any|false|none|none|
|locationsJsonLocation|any|false|none|none|
|noldorDefaultCsvLocation|any|false|none|none|
|noldorDefaultJsonLocation|any|false|none|none|
|reinsuranceinfoCsvLocation|any|false|none|none|
|reinsuranceinfoJsonLocation|any|false|none|none|
|reinsurancescopesCsvLocationreinsurancescopesJsonLocation|any|false|none|none|
|status|any|false|none|none|

<h2 id="tocS_UrlResponse">UrlResponse</h2>
<!-- backwards compatibility -->
<a id="schemaurlresponse"></a>
<a id="schema_UrlResponse"></a>
<a id="tocSurlresponse"></a>
<a id="tocsurlresponse"></a>

```json
{
  "url": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|url|string|false|none|none|

