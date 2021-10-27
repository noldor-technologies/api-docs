---
title: Noldor API v1.0.0
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

<h1 id="noldor-api">Noldor API v1.0.0</h1>

> Scroll down for code samples, example requests and responses. Select a language for code samples from the tabs above or the mobile navigation menu.

This is the Noldor API for sending data to and querying data from the Noldor platform.

Base URLs:

* <a href="https://api.noldor.com">https://api.noldor.com</a>

* <a href="https://api.nldrplayground.net">https://api.nldrplayground.net</a>

Email: <a href="mailto:devops@noldor.com">Noldor</a> Web: <a href="https://www.noldor.com">Noldor</a> 

# Authentication

- HTTP Authentication, scheme: bearer 

<h1 id="noldor-api-general">General</h1>

## Authenticate

<a id="opIdAuthenticate"></a>

> Code samples

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json'
}

r = requests.post('https://api.noldor.com/v1/auth/client', headers = headers)

print(r.json())

```

```javascript
const inputBody = '{
  "id": "string",
  "secret": "string"
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'
};

fetch('https://api.noldor.com/v1/auth/client',
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
curl -X POST https://api.noldor.com/v1/auth/client \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

`POST /v1/auth/client`

Authenticate with service and retrieve an access token required for other API calls.

> Body parameter

```json
{
  "id": "string",
  "secret": "string"
}
```

<h3 id="authenticate-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|object|false|none|
|» id|body|string|false|none|
|» secret|body|string|false|none|

> Example responses

> 200 Response

```json
{
  "access_token": "string",
  "expires": "string",
  "refresh_token": "string",
  "token_type": "string"
}
```

<h3 id="authenticate-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|Inline|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Unauthorized|None|

<h3 id="authenticate-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» access_token|string|true|none|none|
|» expires|string|true|none|none|
|» refresh_token|string|true|none|none|
|» token_type|string|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

<h1 id="noldor-api-querying">Querying</h1>

## List MGAs

<a id="opIdList MGAs"></a>

> Code samples

```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': 'Bearer {access-token}'
}

r = requests.get('https://api.noldor.com/v1/mga', headers = headers)

print(r.json())

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('https://api.noldor.com/v1/mga',
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
curl -X GET https://api.noldor.com/v1/mga \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

`GET /v1/mga`

List of available MGAs.

> Example responses

```json
[
  {
    "mgaId": "string",
    "mgaName": "string"
  }
]
```

<h3 id="list-mgas-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|Inline|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Unauthorized|None|

<h3 id="list-mgas-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» mgaId|string|false|none|none|
|» mgaName|string|false|none|none|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
JWTAuth
</aside>

## List reports

<a id="opIdList reports"></a>

> Code samples

```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': 'Bearer {access-token}'
}

r = requests.get('https://api.noldor.com/v1/mga/{mga_id}/report', headers = headers)

print(r.json())

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('https://api.noldor.com/v1/mga/{mga_id}/report',
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
curl -X GET https://api.noldor.com/v1/mga/{mga_id}/report \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

`GET /v1/mga/{mga_id}/report`

List available reports for given MGA.

<h3 id="list-reports-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|mga_id|path|string|true|none|

> Example responses

```json
[
  {
    "createdUtcTime": "string",
    "reportId": "string",
    "reportName": "string"
  }
]
```

<h3 id="list-reports-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|Inline|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Unauthorized|None|

<h3 id="list-reports-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» createdUtcTime|string|false|none|none|
|» reportId|string|false|none|none|
|» reportName|string|false|none|none|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
JWTAuth
</aside>

## List report formats

<a id="opIdList report formats"></a>

> Code samples

```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': 'Bearer {access-token}'
}

r = requests.get('https://api.noldor.com/v1/mga/{mga_id}/report/{report_id}/format', headers = headers)

print(r.json())

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('https://api.noldor.com/v1/mga/{mga_id}/report/{report_id}/format',
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
curl -X GET https://api.noldor.com/v1/mga/{mga_id}/report/{report_id}/format \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

`GET /v1/mga/{mga_id}/report/{report_id}/format`

List available formats for the given report.

<h3 id="list-report-formats-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|report_id|path|string|true|none|
|mga_id|path|string|true|none|

> Example responses

```json
[
  "string"
]
```

<h3 id="list-report-formats-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|Inline|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Unauthorized|None|

<h3 id="list-report-formats-responseschema">Response Schema</h3>

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
JWTAuth
</aside>

## Download report for format

<a id="opIdDownload report for format"></a>

> Code samples

```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': 'Bearer {access-token}'
}

r = requests.get('https://api.noldor.com/v1/mga/{mga_id}/report/{report_id}/format/{format_type}', headers = headers)

print(r.json())

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('https://api.noldor.com/v1/mga/{mga_id}/report/{report_id}/format/{format_type}',
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
curl -X GET https://api.noldor.com/v1/mga/{mga_id}/report/{report_id}/format/{format_type} \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

`GET /v1/mga/{mga_id}/report/{report_id}/format/{format_type}`

Get a URL to download the raw data dump of the report for the given format.

<h3 id="download-report-for-format-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|report_id|path|string|true|none|
|format_type|path|string|true|none|
|mga_id|path|string|true|none|

> Example responses

```json
{
  "url": "string"
}
```

<h3 id="download-report-for-format-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[UrlResponse](#schemaurlresponse)|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Unauthorized|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
JWTAuth
</aside>

## List report format entities

<a id="opIdList report format entities"></a>

> Code samples

```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': 'Bearer {access-token}'
}

r = requests.get('https://api.noldor.com/v1/mga/{mga_id}/report/{report_id}/format/{format_type}/entities', headers = headers)

print(r.json())

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('https://api.noldor.com/v1/mga/{mga_id}/report/{report_id}/format/{format_type}/entities',
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
curl -X GET https://api.noldor.com/v1/mga/{mga_id}/report/{report_id}/format/{format_type}/entities \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

`GET /v1/mga/{mga_id}/report/{report_id}/format/{format_type}/entities`

List available entities for the given report format.

<h3 id="list-report-format-entities-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|report_id|path|string|true|none|
|format_type|path|string|true|none|
|mga_id|path|string|true|none|

> Example responses

```json
[
  "string"
]
```

<h3 id="list-report-format-entities-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|Inline|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Unauthorized|None|

<h3 id="list-report-format-entities-responseschema">Response Schema</h3>

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
JWTAuth
</aside>

## Download report for format entity

<a id="opIdDownload report for format entity"></a>

> Code samples

```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': 'Bearer {access-token}'
}

r = requests.get('https://api.noldor.com/v1/mga/{mga_id}/report/{report_id}/format/{format_type}/entities/{entity}', headers = headers)

print(r.json())

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('https://api.noldor.com/v1/mga/{mga_id}/report/{report_id}/format/{format_type}/entities/{entity}',
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
curl -X GET https://api.noldor.com/v1/mga/{mga_id}/report/{report_id}/format/{format_type}/entities/{entity} \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

`GET /v1/mga/{mga_id}/report/{report_id}/format/{format_type}/entities/{entity}`

Get a URL to download the raw data dump of the report for the given format and entity

<h3 id="download-report-for-format-entity-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|report_id|path|string|true|none|
|format_type|path|string|true|none|
|mga_id|path|string|true|none|
|entity|path|string|true|none|
|file_type|query|string|false|Return a url to download the data in the given file type. Valid values are json, csv. Defaults to json|

> Example responses

```json
{
  "url": "string"
}
```

<h3 id="download-report-for-format-entity-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[UrlResponse](#schemaurlresponse)|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Unauthorized|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
JWTAuth
</aside>

# Schemas

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

