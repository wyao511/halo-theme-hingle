<script>
    if (document.querySelector("halo-comment")){
        let comment_box = document.querySelector("halo-comment").shadowRoot.querySelector("#halo-comment");

        if(document.cookie.indexOf("night=true") !== -1){
            comment_box.classList.remove("light");
            comment_box.classList.add("dark");
        }
        else{
            comment_box.classList.remove("dark");
            comment_box.classList.add("light");
        }
    };
</script>

<script src="${theme_base!}/source/js/kico.js?v=${theme.version!}"></script>
<script src="${theme_base!}/source/js/hingle.js?v=${theme.version!}"></script>
<script> 
    let config = JSON.stringify({night: ${settings.night?c}, copyright: ${settings.copyright?c}});
    var hingle = new Paul_Hingle(config);
</script> 
