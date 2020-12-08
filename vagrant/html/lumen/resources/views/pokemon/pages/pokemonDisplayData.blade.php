@extends('pokemon.layouts.index')
@section('content')
<h2>Pokemon Go Stats</h1>
<div id="addFormContainer">
<button id="showHide">X</button>
    <form id="addForm" method="get">
        <input type="text" name="name" id="addName" placeholder="Name">
        <input type="text" name="type" id="addType" placeholder="Type">
        <input type="text" name="fastMove" id="addFastMove" placeholder="Fast Move">
        <input type="text" name="chargeMove" id="addChargeMove" placeholder="Charge Move">
        <input type="text" name="dps" id="addDps" placeholder="DPS">
        <input type="text" name="total" id="addTotal" placeholder="Total">
        <input type="text" name="id" id="addId" placeholder="ID">
        <button type="button" id="addButton">Add</button>
    </form>
</div>
<!-- search everything -->
<div class="searchContainer">
    <div id="search">
        <input id="searchInput" type="text" name="value" placeholder="Search All">
    </div>
<!-- search specific categories -->
    <div id="filter">
        <input type="text" name="value" placeholder="Search By:">
        <select name="field" id="type">
            <option value="get/name">Name</option>
            <option value="get/type">Type</option>
            <option value="get/fastMove">Fast Move</option>
            <option value="get/chargeMove">Charge Move</option>
            <option value="get/dps">DPS</option>
            <option value="get/total">Total</option>
            <option value="get/id">ID</option>
        </select>
    </div>
</div>
<!-- show selected categories organized from highest to lowest-->
<!-- <div class="radioMainContainer">
    <label class="radioContainer">None
    <input class="radio" id="radioNone" name="radio" type="radio" checked="checked" value="none">
    <span class="checkmark"></span>
    </label>
    <label class="radioContainer">Dps
    <input class="radio" id="radioDps" name="radio" type="radio" value="dps">
    <span class="checkmark"></span>
    </label>
    <label class="radioContainer">Total
    <input class="radio" id="radioTotal" name="radio" type="radio" value="total">
    <span class="checkmark"></span>
    </label>
</div> -->

<!-- table header -->
<div class="pokemonTable">
    <div class="stats">
        <div>Name</div>
        <div>Type</div>
        <div>Fast Move</div>
        <div>Charge Move</div>
        <div>DPS</div>
        <div>Total</div>
        <div>ID</div>
    </div>
    <div id="content"></div>
</div>
@stop


