document.addEventListener('htmx:afterRequest', function(event) {
    switch(event.detail.requestConfig.verb){
        case "post":
            htmx.ajax("GET","/tasks?order=id.asc","#tasklist")
            
        case "delete":
            htmx.ajax("GET","/tasks?order=id.asc","#tasklist")
        case "patch":
            htmx.ajax("GET","/tasks?order=id.asc","#tasklist")
        default:
            window.document.getElementById("title").value = ""
    }
});