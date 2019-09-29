<div id="footer">
    <ul class="link-box">
        <li>
            <label class="@yield('mine.active')">
                <a href="{{ route('mine.index') }}">{{ __('language.footer.mine') }}</a>
            </label>
        </li>
        <li>
            <label class="@yield('news.active')">
                <a href="{{ route('news.index') }}">{{ __('language.footer.news') }}</a>
            </label>
        </li>
        <li>
            <label class="@yield('shop.active')">
                <a href="{{ route('shop.index') }}">{{ __('language.footer.shop') }}</a>
            </label>
        </li>
        <li>
            <label class="@yield('forum.active')">
                <a href="{{ route('forum.index') }}">{{ __('language.footer.forum') }}</a>
            </label>
        </li>
        <li>
            <label class="@yield('option.active')">
                <a href="{{ route('option.index') }}">{{ __('language.footer.option') }}</a>
            </label>
        </li>
    </ul>

    @include('public.foot')
</div>