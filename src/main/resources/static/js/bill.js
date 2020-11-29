
    let element = document.querySelector('#takeShotBtn');
    let div = document.getElementById('photo')
    element.addEventListener('click', function (e) {
        html2canvas(div, {scrollY: -window.scrollY}).then(
            function (canvas) {
                var image = canvas.toDataURL();
                // image = image.replace('data:image/jped;base64,', '');
                // let stringImg = JSON.stringify({'stringImg': image});
                let element1 = document.querySelector("#hideInput");
                element1.setAttribute('value',image);
                document.querySelector("#hideSubmit").style.display='block';

            });
    });



