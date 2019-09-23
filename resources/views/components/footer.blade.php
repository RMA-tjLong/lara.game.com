<div id="footer">
    <ul class="link-box">
        <li>
            <label class="@if($active == 'mine') active @endif">
                <a href="{{ route('mine.index') }}">{{ __('language.footer.mine') }}</a>
            </label>
        </li>
        <li>
            <label class="@if($active == 'news') active @endif">
                <a href="{{ route('news.index') }}">{{ __('language.footer.news') }}</a>
            </label>
        </li>
        <li>
            <label class="@if($active == 'shop') active @endif">
                <a href="{{ route('shop.index') }}">{{ __('language.footer.shop') }}</a>
            </label>
        </li>
        <li>
            <label class="@if($active == 'forum') active @endif">
                <a href="{{ route('forum.index') }}">{{ __('language.footer.forum') }}</a>
            </label>
        </li>
        <li>
            <label class="@if($active == 'option') active @endif">
                <a href="{{ route('option.index') }}">{{ __('language.footer.option') }}</a>
            </label>
        </li>
    </ul>

    @include('public.foot')
</div>