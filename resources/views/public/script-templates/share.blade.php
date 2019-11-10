<script id="template-share" type="text/html">
    <div class="share">
        分享：
        <a href="http://www.facebook.com/sharer.php?u={{ route('news.show', ['%id%']) }}&t=%title%" target="_blank" title="{{ __('language.share.share_to') }} Facebook"><img src="{{ asset('image/icons/facebook.gif') }}"></a>
        <a href="https://twitter.com/intent/tweet?url={{ route('news.show', ['%id%']) }}&text=%title%" target="_blank" title="{{ __('language.share.share_to') }} Twitter"><img src="{{ asset('image/icons/twitter.gif') }}"></a>
        <a href="http://service.weibo.com/share/share.php?url={{ route('news.show', ['%id%']) }}&title=%title%" target="_blank" title="{{ __('language.share.share_to') }} 新浪微博"><img src="{{ asset('image/icons/sina.gif') }}"></a>
        <a href="https://plus.google.com/share?url={{ route('news.show', ['%id%']) }}" target="_blank" title="{{ __('language.share.share_to') }} Google+"><img src="{{ asset('image/icons/google.gif') }}"></a>
    </div>
</script>