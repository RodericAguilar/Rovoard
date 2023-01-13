
window.addEventListener('load', function() {
    console.log('start')
})

window.addEventListener('message', function(event) {
    var v = event.data

    switch(v.action) {
        case 'loadScoreboard':
            $('.entero').fadeIn(500)
			$('.usersonline').text(v.total)
            $('.rovoardusers').append(`
                <div class="user">
                <div class="iduser">
                        ${v.playerid}
                    </div>
                    <div class="nombreuser">
                        ${v.name}
                    </div>
                    <div class="msusers">
                    <div class="msnumber ${v.color}">${v.ping}</div>ms
                </div>
                </div>
            `)
        break;

        case 'loadRobberies': 
                $('.robosdis').append(`
                    <div class="inforobo">
                        <div class="text">
                            ${v.available} ${v.label}
                        </div>
                    </div>
                `)
        break;


        case 'loadJobs': 
            $('.jobs').append(`
                <div class="jobcolor" style="text-shadow:0 0 10px ${v.color}; border-left: 2px solid ${v.color}">
                        ${v.label}
                    <div class="number">
                        ${v.count}
                    </div>
                </div>   
            `)
            // $('.jobs .jobcolor').css({'text-shadow':`0 0 10px ${v.color}`, 'border-left':`2px solid ${v.color}`})
        break;
    }
})


function CloseAll() {
    $.post('https://Rovoard/exit', JSON.stringify({}));
    $('.entero').fadeOut(500)
    $('.jobcolor').remove()
    $('.inforobo').remove()
    $('.user').remove()
}

$(function(){

})

$(document).keyup((e) => {
    if (e.key === "Escape") {
        CloseAll()
    }
});