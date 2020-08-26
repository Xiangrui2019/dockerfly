// 定义窗口尺寸
$('.layui-layer-page').css({ 'width': '900px' });

//左测菜单切换效果
$(".bt-w-menu p").click(function () {
    $(this).addClass('bgw').siblings().removeClass('bgw')
});
