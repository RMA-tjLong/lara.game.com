<div class="header">{{ __('language.filters.archive') }}</div>
<div class="content">
    <div class="sub-channel">{{ date('Y') }}</div>
    @for ($i = 1; $i <= 12; $i++)
        <a class="@if (request()->query('month') == $i) active @endif" href="{{ route($route_name, array_merge(request()->query(), ['month' => $i, 'year' => date('Y')])) }}">{{ __('language.months.' . $i) }}</a>
    @endfor

    <div class="sub-channel">{{ __('language.filters.archive_year') }}</div>
    @for ($i = 0; $i <= 8; $i++)
        <a class="@if (request()->query('year') == date('Y', strtotime('-' . $i . ' year'))) active @endif" href="{{ route($route_name, array_filter(array_merge(request()->query(), ['month' => null, 'year' => date('Y', strtotime('-' . $i . ' year'))]))) }}">{{ date('Y', strtotime('-' . $i . ' year')) }}</a>
    @endfor
</div>