@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-7 col-md-offset-5">
            <div class="panel panel-default">
                <div class="panel-heading">{{ __('language.common.set_up') }}</div>

                <div class="panel-body">
                    <form class="form-horizontal" method="POST" action="{{ route('register') }}">
                        {{ csrf_field() }}

                        <!-- 昵称 -->
                        <div class="form-group{{ $errors->has('name') ? ' has-error' : '' }}">
                            <label for="name" class="col-md-3 control-label">{{ __('language.auth.nickname') }}</label>
                            <div class="col-md-7">
                                <input id="name" type="text" class="form-control" name="name" value="{{ old('name') }}" required autofocus>
                                @if ($errors->has('name'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('name') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        <!-- email -->
                        <div class="form-group{{ $errors->has('email') ? ' has-error' : '' }}">
                            <label for="email" class="col-md-3 control-label">{{ __('language.auth.email') }}</label>
                            <div class="col-md-7">
                                <input id="email" type="email" class="form-control" name="email" value="{{ old('email') }}" required>
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
                                <input id="password" type="password" class="form-control" name="password" required pattern="{{ config('regex.password')  }}" title="{{ __('regex.password') }}">
                                @if ($errors->has('password'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('password') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        <!-- 确认密码 -->
                        <div class="form-group">
                            <label for="password-confirm" class="col-md-3 control-label">{{ __('language.auth.pw_confirm') }}</label>
                            <div class="col-md-7">
                                <input id="password-confirm" type="password" class="form-control" name="password_confirmation" required>
                            </div>
                        </div>

                        <!-- 验证码 -->
                        <div class="form-group{{ $errors->has('captcha') ? ' has-error' : '' }}">
                            <label for="captcha" class="col-md-3 control-label">{{ __('language.auth.captcha') }}</label>
                            <div class="col-md-7 captcha-group">
                                <input id="captcha"  class="form-control captcha-ipt" type="captcha" name="captcha" value="{{ old('captcha')  }}" required>
                                @if($errors->has('captcha'))
                                    <span class="help-block">
                                    <strong>{{ $errors->first('captcha') }}</strong>
                                </span>
                                @endif
                                <img class="captcha-img" src="{{ captcha_src('primary') }}" onclick="this.src='{{ captcha_src('primary') }}' + Math.random()">
                            </div>
                        </div>

                        <!-- 提交 -->
                        <div class="form-group">
                            <div class="col-md-7 col-md-offset-3">
                                <button type="submit" class="btn btn-primary">
                                    {{ __('language.common.set_up') }}
                                </button>

                                <a class="btn btn-link" href="{{ route('login') }}">
                                    {{ __('language.auth.has_account') }}
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
