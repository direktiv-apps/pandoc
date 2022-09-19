
# pandoc 1.0

Pandoc can convert between documents between various formats.

---
- #### Categories: misc, docs
- #### Image: gcr.io/direktiv/functions/pandoc 
- #### License: [Apache-2.0](https://www.apache.org/licenses/LICENSE-2.0)
- #### Issue Tracking: https://github.com/direktiv-apps/pandoc/issues
- #### URL: https://github.com/direktiv-apps/pandoc
- #### Maintainer: [direktiv.io](https://www.direktiv.io) 
---

## About pandoc

Pandoc is a document converter. It can convert from various formats like markup, HTML etc. into other formats like PDF or HTML.  All supported formats can be found on the pandoc website: [Docs](https://pandoc.org/MANUAL.html#options). This function can return the converted document as Base64 encoded file or can be stored in a scoped variable in Direktiv. 

### Example(s)
  #### Function Configuration
```yaml
functions:
- id: pandoc
  image: gcr.io/direktiv/functions/pandoc:1.0
  type: knative-workflow
```
   #### Basic
```yaml
- id: pandoc
  type: action
  action:
    function: pandoc
    files: 
    - key: in.html
      scope: workflow
    input: 
      from: html
      to: pdf
      input: in.html
```
   #### Base64 return value
```yaml
- id: pandoc
  type: action
  action:
    function: pandoc
    files: 
    - key: in.html
      scope: workflow
    input: 
      from: html
      to: pdf
      input: in.html
      return: true
```

   ### Secrets


*No secrets required*







### Request



#### Request Attributes
[PostParamsBody](#post-params-body)

### Response
  List of executed commands.
#### Reponse Types
    
  

[PostOKBody](#post-o-k-body)
#### Example Reponses
    
```json
"JVBERi0xLjUKJdDUxdgKNSAwIG9iago8PAov=="
```

### Errors
| Type | Description
|------|---------|
| io.direktiv.command.error | Command execution failed |
| io.direktiv.output.error | Template error for output generation of the service |
| io.direktiv.ri.error | Can not create information object from request |


### Types
#### <span id="post-o-k-body"></span> postOKBody

  



**Properties**

| Name | Type | Go type | Required | Default | Description | Example |
|------|------|---------|:--------:| ------- |-------------|---------|
| pandoc | string| `string` |  | |  |  |


#### <span id="post-params-body"></span> postParamsBody

  



**Properties**

| Name | Type | Go type | Required | Default | Description | Example |
|------|------|---------|:--------:| ------- |-------------|---------|
| from | string| `string` | ✓ | |  |  |
| input | string| `string` | ✓ | |  |  |
| output | [PostParamsBodyOutput](#post-params-body-output)| `PostParamsBodyOutput` |  | |  |  |
| return | boolean| `bool` |  | |  |  |
| to | string| `string` | ✓ | |  |  |


#### <span id="post-params-body-output"></span> postParamsBodyOutput

  



**Properties**

| Name | Type | Go type | Required | Default | Description | Example |
|------|------|---------|:--------:| ------- |-------------|---------|
| name | string| `string` | ✓ | |  |  |
| scope | string| `string` | ✓ | |  |  |

 
