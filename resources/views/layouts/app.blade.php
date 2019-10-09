<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ config('app.name', 'Laravel') }}</title>

    <!-- Styles -->
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
    
    <!-- Self defined style -->
    @yield('styles')
</head>
<body>
    <div id="app" style="background: url({{ asset('image/default/simple-codelines.svg') }});">
        <nav class="navbar navbar-primary navbar-static-top">
            <div class="container">
                <div class="navbar-header">

                    <!-- Collapsed Hamburger -->
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#app-navbar-collapse" aria-expanded="false">
                        <span class="sr-only">Toggle Navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>

                    <!-- Branding Image -->
                    <a class="navbar-brand" href="{{ route('home') }}">
                        {{ config('app.name', 'Laravel') }}
                    </a>
                </div>

                <div class="collapse navbar-collapse" id="app-navbar-collapse">

                    <!-- Right Side Of Navbar -->
                    <ul class="nav navbar-nav navbar-right">
                        <!-- Authentication Links -->
                        @guest
                            <li><a href="{{ route('login') }}">{{ __('language.common.set_in') }}</a></li>
                            <li><a href="{{ route('register') }}">{{ __('language.common.set_up') }}</a></li>
                        @else
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false" aria-haspopup="true" v-pre>
                                    {{ Auth::user()->name }} <span class="caret"></span>
                                </a>

                                <ul class="dropdown-menu">
                                    <li>
                                        <a href="{{ route('logout') }}"
                                            onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                            {{ __('language.common.log_out') }}
                                        </a>

                                        <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                            {{ csrf_field() }}
                                        </form>
                                    </li>
                                </ul>
                            </li>
                        @endguest

                        <!-- 关于我们 -->
                        <li><a href="{{ route('about.index') }}">{{ __('language.common.about_us') }}</a></li>
                        <!-- 留言 -->
                        <li><a href="{{ route('comments.index') }}">{{ __('language.common.comments') }}</a></li>

                        <!-- 切换语言下拉菜单 -->
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                                {{ __('language.common.change_lang') }}<span class="caret"></span>
                            </a>
                            <ul class="dropdown-menu">
                                <li><a href="{{ url('lang/zh-CN') }}">{{ __('language.common.zh_cn') }}</a></li>
                                <li><a href="{{ url('lang/en') }}">{{ __('language.common.en') }}</a></li>
                            </ul>
                        </li>
                    </ul>

                </div>
            </div>
        </nav>

        @if (session()->has('success'))
            <!-- 操作成功通知 -->
            @component('components.remind-successful')
                @slot('text')
                    {{ session()->pull('success') }}
                @endslot
            @endcomponent
        @endif

        @if (session()->has('error'))
            <!-- 错误通知 -->
            @component('components.remind-error')
                @slot('text')
                    {{ session()->pull('error') }}
                @endslot
            @endcomponent
        @endif

        @if (Auth::check() && !Auth()->user()->verified)
            <!-- 通过登录验证未激活邮件时 -->
            @component('components.warning-without-closebar')
                @slot('title')
                    {{ __('language.warning.email_verificate_title') }}
                @endslot

                @slot('text')
                    <p class="p-text">
                        {!! __('language.warning.email_verificate_text', ['email_address' => '<b>' . Auth::user()->email . '</b>']) !!}
                    </p>
                    <br>
                    <a href="{{ route('verification.resend.form') }}">{{ route('verification.resend.form') }}</a>
                @endslot
            @endcomponent
        @endif

        @yield('content')
    </div>

    <!-- Scripts -->
    <script src="{{ asset('js/app.js') }}"></script>
    <script src="{{ asset('js/common.js') }}"></script>
    @yield('scripts')
</body>
</html>
