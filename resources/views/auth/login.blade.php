@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-7 col-md-offset-5">
            <div class="panel panel-default">
                <div class="panel-heading">{{ __('language.common.set_in') }}</div>

                <div class="panel-body">
                    <form class="form-horizontal" method="POST" action="{{ route('login') }}">
                        {{ csrf_field() }}

                        <!-- email -->
                        <div class="form-group{{ $errors->has('email') ? ' has-error' : '' }}">
                            <label for="email" class="col-md-3 control-label">{{ __('language.auth.email') }}</label>
                            <div class="col-md-7">
                                <input id="email" type="email" class="form-control" name="email" value="{{ old('email') }}" required autofocus>
                                @if ($errors->has('email'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('email') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        <!-- 密码 -->
                        <div class="form-group{{ $errors->has('password') ? ' has-error' : '' }}">
                            <label for="password" class="col-md-3 control-label">{{ __('language.auth.password') }}</label>
                            <div class="col-md-7">
                                <input id="password" type="password" class="form-control" name="password" required>
                                @if ($errors->has('password'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('password') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        <!-- 验证码 -->
                        <div class="form-group{{ $errors->has('captcha') ? ' has-error' : '' }}">
                            <label for="captcha" class="col-md-3 control-label">{{ __('language.auth.captcha') }}</label>
                            <div class="col-md-7 captcha-group">
                                <input id="captcha"  class="form-control captcha-ipt" type="captcha" name="captcha" value="{{ old('captcha')  }}" required>
                                @if ($errors->has('captcha'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('captcha') }}</strong>
                                    </span>
                                @endif
                                <img class="captcha-img" src="{{ captcha_src('primary') }}" onclick="this.src='{{ captcha_src('primary') }}' + Math.random()">
                            </div>
                        </div>

                        <!-- 记住密码 -->
                        <div class="form-group">
                            <div class="col-md-7 col-md-offset-3">
                                <div class="checkbox">
                                    <label>
                                        <input type="checkbox" name="remember" {{ old('remember') ? 'checked' : '' }}> {{ __('language.auth.remember_me') }}
                                    </label>
                                </div>
                            </div>
                        </div>

                        <!-- 提交 -->
                        <div class="form-group">
                            <div class="col-md-7 col-md-offset-3">
                                <button type="submit" class="btn btn-primary">
                                    {{ __('language.common.set_in') }}
                                </button>

                                <a class="btn btn-link" href="{{ route('password.request') }}">
                                    {{ __('language.auth.forget_pw') }}
                                </a>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
