<link rel="stylesheet" href="{{ asset('css/algolia.css') }}">

<nav class="navbar navbar-expand-lg navbar-light bg-white">
  <a class="navbar-brand" href="/">ACTIVE SHOP</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="/">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="{{route('shop.index')}}">Shop</a>
      </li>

          {{-- Main Nav code is here --}}
          
          @if (! (request()->is('checkout') || request()->is('guestCheckout')))
          {{ menu('main', 'partials.menus.main') }}
          @endif
      

          @if (! (request()->is('checkout') || request()->is('guestCheckout')))
          @include('partials.menus.main-right')
          @endif

          {{-- Main Nav code end --}}
     

</ul>
 @component('components.breadcrumbs')


@endcomponent
  </div>
</nav>
