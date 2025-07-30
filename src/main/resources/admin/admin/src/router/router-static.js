import Vue from 'vue';
//配置路由
import VueRouter from 'vue-router'
Vue.use(VueRouter);
//1.创建组件
import Index from '@/views/index'
import Home from '@/views/home'
import Login from '@/views/login'
import NotFound from '@/views/404'
import UpdatePassword from '@/views/update-password'
import pay from '@/views/pay'
import register from '@/views/register'
import center from '@/views/center'
    import jijiandingdan from '@/views/modules/jijiandingdan/list'
    import pingjiajilu from '@/views/modules/pingjiajilu/list'
    import tuihuojilu from '@/views/modules/tuihuojilu/list'
    import yonghu from '@/views/modules/yonghu/list'
    import wuliugongsi from '@/views/modules/wuliugongsi/list'
    import jiankongxinxi from '@/views/modules/jiankongxinxi/list'
    import gonggaoxinxi from '@/views/modules/gonggaoxinxi/list'
    import cheliangxinxi from '@/views/modules/cheliangxinxi/list'
    import jijianjindu from '@/views/modules/jijianjindu/list'


//2.配置路由   注意：名字
const routes = [{
    path: '/index',
    name: '首页',
    component: Index,
    children: [{
      // 这里不设置值，是把main作为默认页面
      path: '/',
      name: '首页',
      component: Home,
      meta: {icon:'', title:'center'}
    }, {
      path: '/updatePassword',
      name: '修改密码',
      component: UpdatePassword,
      meta: {icon:'', title:'updatePassword'}
    }, {
      path: '/pay',
      name: '支付',
      component: pay,
      meta: {icon:'', title:'pay'}
    }, {
      path: '/center',
      name: '个人信息',
      component: center,
      meta: {icon:'', title:'center'}
    }
      ,{
	path: '/jijiandingdan',
        name: '寄件订单',
        component: jijiandingdan
      }
      ,{
	path: '/pingjiajilu',
        name: '评价记录',
        component: pingjiajilu
      }
      ,{
	path: '/tuihuojilu',
        name: '退货记录',
        component: tuihuojilu
      }
      ,{
	path: '/yonghu',
        name: '用户',
        component: yonghu
      }
      ,{
	path: '/wuliugongsi',
        name: '物流公司',
        component: wuliugongsi
      }
      ,{
	path: '/jiankongxinxi',
        name: '监控信息',
        component: jiankongxinxi
      }
      ,{
	path: '/gonggaoxinxi',
        name: '公告信息',
        component: gonggaoxinxi
      }
      ,{
	path: '/cheliangxinxi',
        name: '车辆信息',
        component: cheliangxinxi
      }
      ,{
	path: '/jijianjindu',
        name: '寄件进度',
        component: jijianjindu
      }
    ]
  },
  {
    path: '/login',
    name: 'login',
    component: Login,
    meta: {icon:'', title:'login'}
  },
  {
    path: '/register',
    name: 'register',
    component: register,
    meta: {icon:'', title:'register'}
  },
  {
    path: '/',
    name: '首页',
    redirect: '/index'
  }, /*默认跳转路由*/
  {
    path: '*',
    component: NotFound
  }
]
//3.实例化VueRouter  注意：名字
const router = new VueRouter({
  mode: 'hash',
  /*hash模式改为history*/
  routes // （缩写）相当于 routes: routes
})

export default router;
