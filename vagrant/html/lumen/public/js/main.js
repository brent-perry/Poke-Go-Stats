"use strict";
//TO TOP

var toTop = document.getElementById('toTop');

/////
window.onscroll = function() {scrollFunction()};

function scrollFunction() {
  if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
    toTop.style.display = "block";
  } else {
    toTop.style.display = "none";
  }
}

function topFunction() {
	document.body.scrollTop = 0;
	document.documentElement.scrollTop = 0;
  }
  
toTop.addEventListener('click',topFunction);


//get display
(function(global)
  {
  var content = document.getElementById('content');

  function apiGet(endpoint,success)
    {
    var apiUrl = document.location.origin + '/api/' + endpoint;
    console.debug(endpoint);
    var request = new XMLHttpRequest();
    request.open('GET',apiUrl);
    request.onreadystatechange = function()
      {
      if (request.readyState === request.DONE)
        {
        success(JSON.parse(request.response));
        }
      };
    request.send();
    }

  function createPokemonElement(pokemon)
    {
    var element = document.createElement('div');
    element.className = 'pokemon';
    element.innerHTML = '<div class="name"></div><div class="type"></div><div class="fastMove"></div><div class="chargeMove"></div><div class="dps"></div><div class="total"></div><div class="id"></div>';
    var nameElement = element.getElementsByClassName('name')[0];
    var idElement = element.getElementsByClassName('id')[0];
    var typeElement = element.getElementsByClassName('type')[0];
    var fastMoveElement = element.getElementsByClassName('fastMove')[0];
    var chargeMoveElement = element.getElementsByClassName('chargeMove')[0];
    var dpsElement = element.getElementsByClassName('dps')[0];
    var totalElement = element.getElementsByClassName('total')[0];
    nameElement.innerText = pokemon.name;
    idElement.innerText = pokemon.id;
    typeElement.innerText = pokemon.type;
    fastMoveElement.innerText = pokemon.fast_move;
    chargeMoveElement.innerText = pokemon.charge_move;
    dpsElement.innerText = pokemon.dps;
    totalElement.innerText = pokemon.total;
    return element;
    };

  apiGet('display',function(results)
    {
    if (results && results.Pokemon)
      {
        content.innerHTML = "";
      for (var i = 0; i < results.Pokemon.length; ++i)
        {
        var element = createPokemonElement(results.Pokemon[i]);
        content.appendChild(element);
        }
      }
    })

  //search get method

  var filterElement = document.getElementById('filter');

  if (filterElement)
    {
    var input = filterElement.getElementsByTagName('input');
    var select = filterElement.getElementsByTagName('select');
    if (input.length && select.length)
      {
      input = input[0];
      select = select[0];
      var filterCallback = function()
        {
        var inputValue = input.value;
        var selectValue = select.value;
        if (inputValue === "")
          {
          return "Invalid Search";
          }
        else 
        apiGet(selectValue + '/' + inputValue,function(data)
          {
          if (data && data.status === 'ok')
            {
            content.innerHTML = '';
            if (data.Pokemon && data.Pokemon.length)
              {
              data.Pokemon.sort((a,b) => b.dps - a.dps);//organize by highest dps to lowest dps
              for (var i = 0 ; i < data.Pokemon.length ; ++i)
                content.appendChild(createPokemonElement(data.Pokemon[i]));
              }
            }
          });
        };

        input.addEventListener('input',filterCallback);
        select.addEventListener('change',filterCallback);
      }
    }
  
    //search post method
  var searchElement = document.getElementById('search');

  if (searchElement)
    {
    var searchInput = document.getElementById('searchInput');
    if (searchInput)
      {
      var searchCallback = function()
        {
        var data = 
          {
          specifiers: ['name','type','fast_move','charge_move','dps','total','id'], 
          search: searchInput.value, 
          limit: 300
          };
        apiPost('search',data,function(data)
          {
          if (data && data.status === 'ok')
            {
            content.innerHTML = '';
            if (data.result && data.result.length)
              {
              data.result.sort((a,b) => b.dps - a.dps);//organize by highest dps to lowest dps
              for (var i = 0 ; i < data.result.length ; ++i)
                content.appendChild(createPokemonElement(data.result[i]));
              }
            }
          });
        };

        searchInput.addEventListener('input',searchCallback);
      }
    }

    function apiPost(endpoint,data,success)
      {
      var apiUrl = document.location.origin + '/api/' + endpoint;
      console.debug(endpoint);
      var request = new XMLHttpRequest();
      request.open('POST',apiUrl);
      request.setRequestHeader('content-type','application/json');
      request.onreadystatechange = function()
        {
        if (request.readyState === request.DONE)
          {
          success(JSON.parse(request.response));
          }
        };
      request.send(JSON.stringify(data));
      }

      //ADD POKEMON INTO DATABASE
      var addForm = document.getElementById('addForm');
      var access_token = 'JmfXQ3d3BNkIRCa8wiyVCGp1WkGHxvlxt5SYCaXQRiyQzQOhMVqXlYwh9WcT'
      var addButton = document.querySelector('#addButton');
      function addNewPokemon() {
        return {
          name: addForm.name.value, 
          type: addForm.type.value, 
          fast_move: addForm.fastMove.value,
          charge_move: addForm.chargeMove.value, 
          dps: addForm.dps.value, 
          total: addForm.total.value, 
          id: addForm.id.value, 
        };
      }
      function refreshPage() {
        location.reload();
      }
      addButton.addEventListener('click', function() 
        {
        var pokemon = addNewPokemon();
        apiPost('add',{token:access_token, entry:pokemon},refreshPage());
        })

//HIDE OR SHOW ADD FORM
function showHide() {
  var showHide = document.getElementById("addForm");
  if (showHide.style.display === "none") {
    showHide.style.display = "block";
  } else {
    showHide.style.display = "none";
  }
}

document.getElementById("showHide").addEventListener("click",showHide);
//ORGANIZE POKEMON FROM EITHER DPS OR TOTAL
//variable for radio buttons
// var radios = document.querySelectorAll('.radio'); 
// var radioNone = document.getElementById('#radioNone');
// var radioDps = document.getElementById('#radioDps');
// var radioTotal = document.getElementById('#radioTotal');
// var radioSorterButton = document.querySelector('.radio');

// function radioSorter() 
//       { 
//       for(var i = 0; i < radios.length; i++) 
//           {
//             console.log(radios);
//             data.Pokemon.sort((a,b) =>
//             {
//           if (sort(radioNone.checked))
//              return (b.id - a.id)
//           if (sort(radioDps.checked))
//             return (b.dps - a.dps)
//           if (sort(radioTotal.checked))
//             return (b.total - a.total)
//           else 
//             return 0;
//           });
//         }  
//       }
//     radioSorterButton.addEventListener('click',radioSorter);

// data.Pokemon.sort((a,b) => a.total - b.total);
  })(window);
