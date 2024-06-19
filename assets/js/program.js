async function getUser(place) {
    const api_url = `https://timezone.abstractapi.com/v1/current_time/?api_key=YOUR_API_KEY&location=${place}`
    
    const response = await fetch(api_url);
    
    const data = await response.json();
    
    time = await data.datetime
    // arr = Array.from(time)
    // arr.splice(0, 11)
    // arr.toString()
    // timezone = (arr.splice(0, 5)).join("");
    document.getElementById("time").innerText = `${place}'s time = ${time} ${data.timezone_abbreviation}`

}

document.querySelectorAll(".allPaths").forEach(e => {
e.setAttribute('class', `allPaths ${e.id}`);
e.addEventListener("mouseover", function () {
    window.onmousemove=function (j) {
        x = j.clientX
        y = j.clientY
        document.getElementById('name').style.top = y-60  + 'px'
        document.getElementById('name').style.left = x +10 + 'px'
    }
    const classes=e.className.baseVal.replace(/ /g, '.')         
    document.querySelectorAll(`.${classes}`).forEach(country =>{
        country.style.fill = "#8DECB4"
    })
    document.getElementById("name").style.opacity = 1
    
    document.getElementById("namep").innerText = e.id
})
e.addEventListener("mouseleave", function () {
    const classes=e.className.baseVal.replace(/ /g, '.')
    document.querySelectorAll(`.${classes}`).forEach(country =>{
        country.style.fill = "#ececec"
    })
    document.getElementById("name").style.opacity = 0
})

e.addEventListener("click",function(){
    getUser(e.id)
})

})

// document.getElementById("searchBtn").addEventListener("click", function () {
//     country = document.getElementById("search").value
//     document.querySelectorAll(`.allPaths`).forEach(e => {
//         e.style.fill = "#ececec"
//     })
//     document.querySelectorAll(`#${country}`).forEach(e => {
//         e.style.fill = "red"
//     })
// })

// const svg = document.getElementById('allSvg');
// var click = 0;
// function mais(){
//     svg.style.transform="scale(2)"
// }
// function menos(){
//     svg.style.transform="scale(1)";
// }



const NF = 16, 
			NAV_MAP = {
				187: { dir:  1, act: 'zoom', name: 'in' } /* + */, 
				 61: { dir:  1, act: 'zoom', name: 'in' } /* + WTF, FF? */, 
				189: { dir: -1, act: 'zoom', name: 'out' } /* - */, 
				173: { dir: -1, act: 'zoom', name: 'out' } /* - WTF, FF? */, 
				 37: { dir: -1, act: 'move', name: 'esquerda', axis: 0 } /* ⇦ */, 
				 38: { dir: -1, act: 'move', name: 'cima', axis: 1 } /* ⇧ */, 
				 39: { dir:  1, act: 'move', name: 'direita', axis: 0 } /* ⇨ */, 
				 40: { dir:  1, act: 'move', name: 'baixo', axis: 1 } /* ⇩ */
			}, 
			_SVG = document.querySelector('svg'), 
			VB = _SVG.getAttribute('viewBox').split(' ').map(c => +c), 
			DMAX = VB.slice(2), WMIN = 8, 
			_MSG = document.querySelector('.msg');

let rID = null, f = 0, nav = {}, tg = Array(4);

function stopAni() {
  cancelAnimationFrame(rID);
  rID = null;  
};

function update() {	
	let k = ++f/NF, j = 1 - k, cvb = VB.slice();
	
	if(nav.act === 'zoom') {		
		for(let i = 0; i < 4; i++)
			cvb[i] = j*VB[i] + k*tg[i]
	}
	
	if(nav.act === 'move')	
		cvb[nav.axis] = j*VB[nav.axis] + k*tg[nav.axis];
	
	_SVG.setAttribute('viewBox', cvb.join(' '));
	
	if(!(f%NF)) {
		f = 0;
		VB.splice(0, 4, ...cvb);
		nav = {};
		tg = Array(4);
		stopAni();
		return;
	}
  
  rID = requestAnimationFrame(update)
};

addEventListener('keydown', e => { e.preventDefault() }, false);
addEventListener('keypress', e => { e.preventDefault() }, false);

addEventListener('keyup', e => {
	e.preventDefault();
	_MSG.textContent = '';
		
	if(!rID && e.keyCode in NAV_MAP) {
		nav = NAV_MAP[e.keyCode];
		
		if(nav.act === 'zoom') {
			if((nav.dir === -1 && VB[2] >= DMAX[0]) || 
				 (nav.dir ===  1 && VB[2] <= WMIN)) {
				//console.log(`cannot ${nav.act} ${nav.name} more`);
				_MSG.textContent = `Não tem como dar ${nav.act} ${nav.name} mais`;
				return
			}
			
			for(let i = 0; i < 2; i++) {
				tg[i + 2] = VB[i + 2]/Math.pow(2, nav.dir);
				tg[i] = .5*(DMAX[i] - tg[i + 2]);
			}
		}
		
		else if(nav.act === 'move') {
			if((nav.dir === -1 && VB[nav.axis] <= 0) || 
				 (nav.dir ===  1 && VB[nav.axis] >= DMAX[nav.axis] - VB[2 + nav.axis])) {
				//console.log(`at the edge, cannot go ${nav.name}`);
				_MSG.textContent = `Não é possivel mover mais para a ${nav.name}`;
				return
			}
			
			tg[nav.axis] = VB[nav.axis] + .5*nav.dir*VB[2 + nav.axis];
		}
		
		update()
	}
}, false);
