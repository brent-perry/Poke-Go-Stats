<!DOCTYPE html>
<html>
    <head>
        @include('pokemon.includes.head')
    </head>
    <body>
        <header>
            @include('pokemon.includes.toTop')
            @include('pokemon.includes.nav')
        </header>
        <div class="contentContainer">
            
            @yield('content')
        </div>
        <footer class="footer">
            @include('pokemon.includes.footer')
        </footer>
    </body>
</html>

