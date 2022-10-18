 <nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="{BASE_URL}home">DOTA 2</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>

    {if $smarty.session.logged|default and $smarty.session.logged}
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <button class="btn btn-outline-success my-2 my-sm-0 btn btn-success" type="submit"><a href="{BASE_URL}/logout" class="link-light text-decoration-none">LOG OUT</a></button>
      </div>
    {else}
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <button class="btn btn-outline-success my-2 my-sm-0 btn btn-success link-light" type="submit"><a href="{BASE_URL}/login" class="link-light text-decoration-none">Login</a></button>
      </div>
    {/if}

  </nav>