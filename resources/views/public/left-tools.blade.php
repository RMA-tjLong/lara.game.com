<div id="left-tools">
    <li class="search-tool">
        <i class="fa fa-search"></i>
        <div class="search-box">
            <input placeholder="{{ __('language.left_tools.search') }}">
        </div>
    </li>
    <li title="{{ __('language.left_tools.my_game') }}"><i class="fa fa-gamepad"></i></li>
    <li title="{{ __('language.left_tools.my_favorite') }}"><i class="fa fa-heart"></i></li>
    <li title="{{ __('language.left_tools.change_bg') }}"><i class="fa fa-edit"></i></li>
    <li title="{{ __('language.left_tools.to_top') }}"><i class="fa fa-chevron-up"></i></li>
</div>

{{-- TODO:在点击search-tool时判断其active状态，若非active则为其添加active状态并显示搜索框；否则取消active状态并隐藏搜索框 --}}