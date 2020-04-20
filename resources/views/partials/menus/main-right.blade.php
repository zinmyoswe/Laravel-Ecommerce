
    @guest
    <li class="nav-item"><a href="{{ route('register') }}" class="nav-link">Sign Up</a></li>
    <li class="nav-item"><a href="{{ route('login') }}" class="nav-link">Login</a></li>
    @else
    <li class="nav-item">
        <a href="{{ route('users.edit') }}" class="nav-link">My Account</a>
    </li>
    <li class="nav-item">
        <a href="{{ route('logout') }}"
            onclick="event.preventDefault();
                     document.getElementById('logout-form').submit();" class="nav-link">
            Logout
        </a>
    </li>

    <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
        {{ csrf_field() }}
    </form>
    @endguest
    <li class="nav-item"><a href="{{ route('cart.index') }}" class="nav-link">Cart
    @if (Cart::instance('default')->count() > 0)
    <span class="badge badge-pill badge-warning"><span>{{ Cart::instance('default')->count() }}</span></span>
    @endif
    </a></li>
    {{-- @foreach($items as $menu_item)
        <li>
            <a href="{{ $menu_item->link() }}">
                {{ $menu_item->title }}
                @if ($menu_item->title === 'Cart')
                    @if (Cart::instance('default')->count() > 0)
                    <span class="cart-count"><span>{{ Cart::instance('default')->count() }}</span></span>
                    @endif
                @endif
            </a>
        </li>
    @endforeach --}}
