<div class="header">{{ __('language.filters.archive') }}</div>
<div class="content">
    <div class="sub-channel">{{ \Carbon\Carbon::now('Asia/Shanghai')->year }}</div>
    @for ($i = 1; $i <= 12; $i++)
        <a class="@if (request()->query('month') == $i) active @endif" href="{{ route($route_name, array_merge(request()->query(), ['month' => $i, 'year' => \Carbon\Carbon::now('Asia/Shanghai')->year])) }}">{{ __('language.months.' . $i) }}</a>
    @endfor

    <div class="sub-channel">{{ __('language.filters.archive_year') }}</div>
    @for ($i = 0; $i <= 8; $i++)
        <a class="@if (request()->query('year') == \Carbon\Carbon::parse('-' . $i . ' year', 'Asia/Shanghai')->year)) active @endif" href="{{ route($route_name, array_filter(array_merge(request()->query(), ['month' => null, 'year' => \Carbon\Carbon::parse('-' . $i . ' year', 'Asia/Shanghai')->year]))) }}">{{ \Carbon\Carbon::parse('-' . $i . ' year', 'Asia/Shanghai')->year }}</a>
    @endfor
</div>