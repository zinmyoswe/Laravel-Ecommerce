
    @foreach($items as $menu_item)
        <li class="nav-item">
            <a href="{{ $menu_item->link() }}">
                {{ $menu_item->title }}
                @if ($menu_item->title === 'Cart')
                    @if (Cart::instance('default')->count() > 0)
                    <span class="badge badge-pill badge-warning">{{ Cart::instance('default')->count() }}</span>
                    @endif
                @endif
            </a>
        </li>
    @endforeach

