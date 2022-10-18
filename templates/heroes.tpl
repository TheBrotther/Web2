{include file="header.tpl"}

<div class="container w-75 d-flex flex-wrap my-2 mb-3">

    <div class="container w-75 d-flex flex-wrap my-2 mb-3">
    {foreach from=$atributos item=$atributo}    
        <div class="mx-auto">
            <a href="{BASE_URL}heroes/{$atributo->id_atributo}" class='text-decoration-none'><button class="btn btn-outline-success link-light {$atributo->nombre}" type="submit">{$atributo->nombre}</button></a>
        </div>
    {/foreach}
    </div>

    <div class="container w-75 d-flex flex-wrap my-2 mb-3">


    {foreach from=$heroes item=$heroe}
        <div class="carrera mx-auto border border-3 p-3">
            <a class='text-decoration-none' href="{BASE_URL}heroe/{$heroe->id_heroe}"><p>{$heroe->nombre}</p></a>
        </div>
    {/foreach}
    </div>

</div>

{include file="footer.tpl"}