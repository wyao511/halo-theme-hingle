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
<footer>
    <style>
        .mdui-img-circle {
            border-radius: 50%;
            }
    </style>
    <div class="buttons">
        <a class="to-top" href="#"></a>
    </div>
    <div class="wrap min">
        <section class="sub-footer">
            <div align="middle">
                <img class="mdui-img-circle" height="24" width="24" src="${blog_logo!}">
                <a>${blog_title!}</a>
                <div>© <span id="timeyear">${.now?string('yyyy')}</span> ${user.nickname!} <a href="https://beian.miit.gov.cn/" target="_blank">${settings.icp!}</a></div>
            </div>

        </section>
    </div>
</footer>

<script src="${theme_base!}/source/js/kico.js?v=${theme.version!}"></script>
<script src="${theme_base!}/source/js/hingle.js?v=${theme.version!}"></script>
<script> 
    let config = JSON.stringify({night: ${settings.night?c}, copyright: ${settings.copyright?c}});
    var hingle = new Paul_Hingle(config);
</script> 
