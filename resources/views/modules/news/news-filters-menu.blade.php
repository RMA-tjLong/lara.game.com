<div class="filters-block">
    <div class="header">{{ __('language.news.channels') }}</div>
    <div class="content">
        <a class="bar @if (!request()->query('tag')) active @endif" href="{{ route('news.index', $param_game_id) }}">{{ __('language.news.all') }}</a>
        @if ($news_tags['normal'])
            @foreach ($news_tags['normal'] as $tag)
                @if ($tag['relate_news_tag_titles']->count())
                    <a class="bar @if ($tag->code == request()->query('tag')) active @endif"
                       href="{{ route('news.index', array_merge($param_game_id, ['tag' => $tag->code])) }}"
                    >{{ $tag['relate_news_tag_titles'][0]->title }}</a>
                @endif
            @endforeach
        @endif

        @if ($news_tags['comprehensive'])
            <div class="sub-channel">{{ __('language.news.comprehensive_news') }}</div>
            @foreach ($news_tags['comprehensive'] as $tag)
                @if ($tag['relate_news_tag_titles']->count())
                    <a class="bar @if ($tag->code == request()->query('tag')) active @endif"
                       href="{{ route('news.index', array_merge($param_game_id, ['tag' => $tag->code])) }}"
                    >{{ $tag['relate_news_tag_titles'][0]->title }}</a>
                @endif
            @endforeach
        @endif
    </div>
</div>

<div class="filters-block">
    @component('components.filter-by-archives')
        @slot('route_name', 'news.index')
    @endcomponent
</div>