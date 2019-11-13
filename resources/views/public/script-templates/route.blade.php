<script id="template-route" type="application/json">
    {
        "apis" : {
            "news" : "{{ route('api.news', request()->query()) }}"
        }
    }
</script>