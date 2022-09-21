### Code

```jsx
$('input[type="file"]').on('change',function(e){ 
    $('#upload_'+$(this).attr('rand_key')).remove();
    var rand_key = (Math.random() + 1).toString(36).substring(7);
    $(this).attr('rand_key',rand_key);
    if(e.target.files.length){
        $(this).attr('rand_key',rand_key);
        $('<div class="col-12 py-2 px-0" id="upload_'+rand_key+'"></div>').insertAfter(this);
        $.each(e.target.files,(key,value)=>{
            $('#upload_'+rand_key).append('<div class="row d-flex m-0   btn" style="border:1px solid rgb(136 136 136 / 17%);max-width: 100%;padding: 5px;width: 220px;background: rgb(142 142 142 / 6%);margin-bottom:10px!important"><div style="max-height: 35px;overflow: hidden;display:flex;flex-flow: nowrap;" class="p-0 align-items-center">\
                <span class="d-inline-block font-small " style="line-height: 1.2;opacity: 0.7;border-radius: 12px;overflow:hidden;width:71px">\
                    <span class="fal fa-cloud-download p-2 font-2 me-2" style="background:rgb(129 129 129 / 24%);border-radius: 12px;"></span>\
                </span>\
                <span style="direction: ltr;position: relative;top: -2px;height:14px;overflow:hidden" class="d-inline-block naskh font-small"> '+value.name+' </span>\
                    <span class="d-inline-block font-small px-2" style="position: relative;font-weight: bold;"> '+(Math.round(value.size/1000000 * 100) / 100).toFixed(2)+'M </span>\
                </div>\
            </div>')});
    }
});
```
![screenshot.png](https://github.com/peter-tharwat/file-upload-viewer/blob/master/screenshot.png)