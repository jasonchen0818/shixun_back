
/**
 * 轮播图配置
 */
var swiper = {
	// 设定轮播容器宽度，支持像素和百分比
	width: '100%',
	height: '400px',
	// hover（悬停显示）
	// always（始终显示）
	// none（始终不显示）
	arrow: 'none',
	// default（左右切换）
	// updown（上下切换）
	// fade（渐隐渐显切换）
	anim: 'default',
	// 自动切换的时间间隔
	// 默认3000
	interval: 2000,
	// 指示器位置
	// inside（容器内部）
	// outside（容器外部）
	// none（不显示）
	indicator: 'outside'
}

/**
 * 个人中心菜单
 */
var centerMenu = [{
	name: '个人中心',
	url: '../' + localStorage.getItem('userTable') + '/center.html'
}, 
{
	name: '我的收藏',
	url: '../storeup/list.html'
}
]


var indexNav = [

{
	name: '书籍',
	url: './pages/shuji/list.html'
}, 

{
	name: '新闻资讯',
	url: './pages/news/list.html'
},
]

var adminurl =  "http://localhost:8080/springbootUCW7v/admin/dist/index.html";

var cartFlag = false

var chatFlag = false




var menu = [{"backMenu":[{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"用户列表","menuJump":"列表","tableName":"yonghu"}],"menu":"用户管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"书籍分类列表","menuJump":"列表","tableName":"shujifenlei"}],"menu":"书籍分类管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"轮播图管理","tableName":"lunbotuguanli"},{"buttons":["新增","查看","修改","删除"],"menu":"新闻资讯列表","tableName":"news"}],"menu":"系统管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"书籍列表","menuJump":"列表","tableName":"shuji"}],"menu":"书籍管理"},{"child":[{"buttons":["查看","修改","删除","发货"],"menu":"订单信息列表","menuJump":"列表","tableName":"dingdanxinxi"}],"menu":"订单信息管理"},{"child":[{"buttons":["查看","修改","删除"],"menu":"发货信息列表","menuJump":"列表","tableName":"fahuoxinxi"}],"menu":"发货信息管理"}],"frontMenu":[{"child":[{"buttons":["查看","加入购物车"],"menu":"书籍列表","menuJump":"列表","tableName":"shuji"}],"menu":"书籍模块"}],"roleName":"管理员","tableName":"users"},{"backMenu":[{"child":[{"buttons":["查看","修改","删除","支付"],"menu":"订单信息列表","menuJump":"列表","tableName":"dingdanxinxi"}],"menu":"订单信息管理"},{"child":[{"buttons":["查看"],"menu":"发货信息列表","menuJump":"列表","tableName":"fahuoxinxi"}],"menu":"发货信息管理"},{"child":[{"buttons":["查看","删除"],"menu":"收藏列表","tableName":"storeup"}],"menu":"我的收藏管理"}],"frontMenu":[{"child":[{"buttons":["查看","加入购物车"],"menu":"书籍列表","menuJump":"列表","tableName":"shuji"}],"menu":"书籍模块"}],"roleName":"用户","tableName":"yonghu"}]


var isAuth = function (tableName,key) {
    let role = localStorage.getItem("userTable");
    let menus = menu;
    for(let i=0;i<menus.length;i++){
        if(menus[i].tableName==role){
            for(let j=0;j<menus[i].backMenu.length;j++){
                for(let k=0;k<menus[i].backMenu[j].child.length;k++){
                    if(tableName==menus[i].backMenu[j].child[k].tableName){
                        let buttons = menus[i].backMenu[j].child[k].buttons.join(',');
                        return buttons.indexOf(key) !== -1 || false
                    }
                }
            }
        }
    }
    return false;
}

var isFrontAuth = function (tableName,key) {
    let role = localStorage.getItem("userTable");
    let menus = menu;
    for(let i=0;i<menus.length;i++){
        if(menus[i].tableName==role){
            for(let j=0;j<menus[i].frontMenu.length;j++){
                for(let k=0;k<menus[i].frontMenu[j].child.length;k++){
                    if(tableName==menus[i].frontMenu[j].child[k].tableName){
                        let buttons = menus[i].frontMenu[j].child[k].buttons.join(',');
                        return buttons.indexOf(key) !== -1 || false
                    }
                }
            }
        }
    }
    return false;
}
